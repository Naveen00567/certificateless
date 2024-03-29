﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Runtime.InteropServices;
//Open Word Document in inside the Textbox
namespace OfficeFileReader
{
    #region Stuff you Dont even need to look at
    [Flags]
    public enum IFILTER_INIT
    {
        NONE = 0,
        CANON_PARAGRAPHS = 1,
        HARD_LINE_BREAKS = 2,
        CANON_HYPHENS = 4,
        CANON_SPACES = 8,
        APPLY_INDEX_ATTRIBUTES = 16,
        APPLY_CRAWL_ATTRIBUTES = 256,
        APPLY_OTHER_ATTRIBUTES = 32,
        INDEXING_ONLY = 64,
        SEARCH_LINKS = 128,
        FILTER_OWNED_VALUE_OK = 512
    }
    [Flags]
    public enum IFILTER_FLAGS
    {
        OLE_PROPERTIES = 1
    }
    public enum CHUNK_BREAKTYPE
    {
        CHUNK_NO_BREAK = 0,
        CHUNK_EOW = 1,
        CHUNK_EOS = 2,
        CHUNK_EOP = 3,
        CHUNK_EOC = 4
    }
    [Flags]
    public enum CHUNKSTATE
    {
        CHUNK_TEXT = 0x1,
        CHUNK_VALUE = 0x2,
        CHUNK_FILTER_OWNED_VALUE = 0x4
    }
    public enum PSKIND
    {
        LPWSTR = 0,
        PROPID = 1
    }
    [StructLayout(LayoutKind.Sequential)]
    public struct PROPSPEC
    {
        public uint ulKind;
        public uint propid;
        public IntPtr lpwstr;
    }
    [StructLayout(LayoutKind.Sequential)]
    public struct FULLPROPSPEC
    {
        public Guid guidPropSet;
        public PROPSPEC psProperty;
    }
    [StructLayout(LayoutKind.Sequential)]
    public struct STAT_CHUNK
    {
        public uint idChunk;
        [MarshalAs(UnmanagedType.U4)]
        public CHUNK_BREAKTYPE breakType;
        [MarshalAs(UnmanagedType.U4)]
        public CHUNKSTATE flags;
        public uint locale;
        [MarshalAs(UnmanagedType.Struct)]
        public FULLPROPSPEC attribute;
        public uint idChunkSource;
        public uint cwcStartSource;
        public uint cwcLenSource;
    }
    [StructLayout(LayoutKind.Sequential)]
    public struct FILTERREGION
    {
        public uint idChunk;
        public uint cwcStart;
        public uint cwcExtent;
    }
    #endregion
    [ComImport]
    [Guid("89BCB740-6119-101A-BCB7-00DD010655AF")]
    [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    public interface IFilter
    {
        void Init([MarshalAs(UnmanagedType.U4)] IFILTER_INIT grfFlags,
        uint cAttributes,
        [MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 1)] FULLPROPSPEC[] aAttributes,
        ref uint pdwFlags);
        void GetChunk([MarshalAs(UnmanagedType.Struct)] out STAT_CHUNK pStat);
        [PreserveSig]
        int GetText(ref uint pcwcBuffer, [MarshalAs(UnmanagedType.LPWStr)] StringBuilder buffer);
        void GetValue(ref UIntPtr ppPropValue);
        void BindRegion([MarshalAs(UnmanagedType.Struct)]FILTERREGION origPos, ref Guid riid, ref UIntPtr ppunk);
    }
    [ComImport]
    [Guid("f07f3920-7b8c-11cf-9be8-00aa004b9986")]
    public class CFilter
    {

    }
    public class Constants
    {
        public const uint PID_STG_DIRECTORY = 0x00000002;
        public const uint PID_STG_CLASSID = 0x00000003;
        public const uint PID_STG_STORAGETYPE = 0x00000004;
        public const uint PID_STG_VOLUME_ID = 0x00000005;
        public const uint PID_STG_PARENT_WORKID = 0x00000006;
        public const uint PID_STG_SECONDARYSTORE = 0x00000007;
        public const uint PID_STG_FILEINDEX = 0x00000008;
        public const uint PID_STG_LASTCHANGEUSN = 0x00000009;
        public const uint PID_STG_NAME = 0x0000000a;
        public const uint PID_STG_PATH = 0x0000000b;
        public const uint PID_STG_SIZE = 0x0000000c;
        public const uint PID_STG_ATTRIBUTES = 0x0000000d;
        public const uint PID_STG_WRITETIME = 0x0000000e;
        public const uint PID_STG_CREATETIME = 0x0000000f;
        public const uint PID_STG_ACCESSTIME = 0x00000010;
        public const uint PID_STG_CHANGETIME = 0x00000011;
        public const uint PID_STG_CONTENTS = 0x00000013;
        public const uint PID_STG_SHORTNAME = 0x00000014;
        public const int FILTER_E_END_OF_CHUNKS = (unchecked((int)0x80041700));
        public const int FILTER_E_NO_MORE_TEXT = (unchecked((int)0x80041701));
        public const int FILTER_E_NO_MORE_VALUES = (unchecked((int)0x80041702));
        public const int FILTER_E_NO_TEXT = (unchecked((int)0x80041705));
        public const int FILTER_E_NO_VALUES = (unchecked((int)0x80041706));
        public const int FILTER_S_LAST_TEXT = (unchecked((int)0x00041709));
    }
    public class OfficeFileReader
    {
        public void GetText(String path, ref string text)
        // path is the path of the .doc, .xls or .ppt  file
        // text is the variable in which all the extracted text will be stored
        {
            String result = "";
            int count = 0;
            try
            {
                IFilter ifilt = (IFilter)(new CFilter());
                //System.Runtime.InteropServices.UCOMIPersistFile ipf = (System.Runtime.InteropServices.UCOMIPersistFile)(ifilt);
                System.Runtime.InteropServices.ComTypes.IPersistFile ipf = (System.Runtime.InteropServices.ComTypes.IPersistFile)(ifilt);
                ipf.Load(@path, 0);
                uint i = 0;
                STAT_CHUNK ps = new STAT_CHUNK();
                ifilt.Init(IFILTER_INIT.NONE, 0, null, ref i);
                int hr = 0;
                while (hr == 0)
                {
                    ifilt.GetChunk(out ps);
                    if (ps.flags == CHUNKSTATE.CHUNK_TEXT)
                    {
                        uint pcwcBuffer = 1000;
                        int hr2 = 0;
                        while (hr2 == Constants.FILTER_S_LAST_TEXT || hr2 == 0)
                        {
                            try
                            {
                                pcwcBuffer = 1000;
                                System.Text.StringBuilder sbBuffer = new StringBuilder((int)pcwcBuffer);
                                hr2 = ifilt.GetText(ref pcwcBuffer, sbBuffer);
                                // Console.WriteLine(pcwcBuffer.ToString());
                                if (hr2 >= 0) result += sbBuffer.ToString(0, (int)pcwcBuffer);
                                //textBox1.Text +=”\n”;
                                // result += “#########################################”;
                                count++;
                            }
                            catch (System.Runtime.InteropServices.COMException myE)
                            {
                                Console.WriteLine(myE.Data + "\n" + myE.Message + "\n");
                            }
                        }
                    }

                }

            }
            catch (System.Runtime.InteropServices.COMException myE)
            {
                Console.WriteLine(myE.Data + "\n" + myE.Message + "\n");
            }
            text = result;
            //return count;

            //Extra Code
            //if (text == "")
            //{
            //    FileStream fstream = new FileStream(path, FileMode.Open, FileAccess.Read);
            //    StreamReader sreader = new StreamReader(fstream);
            //    //TextBox2.Text = sreader.ReadLine();
            //    text = sreader.ReadToEnd();
            //}
            //else
            //{

            //}

            return;
        }
    }
}

public partial class tpadirectvermod : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string fverify = "YES", fileid, fileext, path, filename;
    string fmodify = "NO";
    int k = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        fileid = (string)Session["FileID"];

        SqlDataAdapter adp = new SqlDataAdapter("Select * from filearchive where fid='" + fileid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        fileext = ds.Tables[0].Rows[0]["fext"].ToString();
        path = ds.Tables[0].Rows[0]["filepath"].ToString();
        filename = ds.Tables[0].Rows[0]["ffilename"].ToString();

        if (fileext == ".txt" || fileext == ".TXT")
        {
            TextReader tr = new StreamReader(path);
            TextBox2.Text = tr.ReadToEnd();
            Image1.Visible = false;
        }
        else
        {
            if (fileext == ".doc" || fileext == ".DOC")
            {
                //FileStream fstream = new FileStream(path, FileMode.Open, FileAccess.Read);
                //StreamReader sreader = new StreamReader(fstream);
                //TextBox2.Text = sreader.ReadToEnd();
                //Image1.Visible = false;

                OfficeFileReader.OfficeFileReader objOFR = new OfficeFileReader.OfficeFileReader();
                string output = "";
                objOFR.GetText(path, ref output);
                Console.WriteLine(output);
                TextBox2.Text = output;
                Image1.Visible = false;
            }
            else
            {
                if (fileext == ".docx" || fileext == ".DOCX")
                {
                    FileStream fstream = new FileStream(path, FileMode.Open, FileAccess.Read);
                    StreamReader sreader = new StreamReader(fstream);
                    TextBox2.Text = sreader.ReadToEnd();
                    Image1.Visible = false;
                }
                else
                {
                    if (fileext == ".pdf" || fileext == ".PDF")
                    {

                        FileStream fstream = new FileStream(path, FileMode.Open, FileAccess.Read);
                        StreamReader sreader = new StreamReader(fstream);

                        string line;
                        for (int i = 0; i < 100; i++)
                        {
                            if (sreader.ReadLine() == null)
                            {
                                goto Outer;
                            }
                            else
                            {
                                line = sreader.ReadLine();
                                TextBox2.Text = TextBox2.Text + line;
                            }
                        }
                    Outer:
                        k = k + 1;

                        Image1.Visible = false;
                        sreader.Close();
                        fstream.Close();
                    }
                    else
                    {
                        if (fileext == ".jpg" || fileext == ".JPG")
                        {
                            Image1.ImageUrl = "Uploads/" + filename;
                            Image1.Visible = true;
                            TextBox2.Visible = false;
                        }
                        else
                        {
                            if (fileext == ".jpeg" || fileext == ".JPEG")
                            {
                                Image1.ImageUrl = "Uploads/" + filename;
                                Image1.Visible = true;
                                TextBox2.Visible = false;
                            }
                            else
                            {
                                if (fileext == ".gif" || fileext == ".GIF")
                                {
                                    Image1.ImageUrl = "Uploads/" + filename;
                                    Image1.Visible = true;
                                    TextBox2.Visible = false;
                                }
                                else
                                {
                                    Image1.Visible = true;
                                    TextBox2.Visible = true;
                                    TextBox2.Text = "File Formatt Not Supported. You can verify directly or downloaded?";
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    /*protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
       con.Open();

        SqlCommand cmd1 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + (string)Session["FileID"] + "'", con);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("update filearchive set fmodify='" + fmodify + "' where fid='" + (string)Session["FileID"] + "'", con);
        cmd2.ExecuteNonQuery();

        con.Close(); 
    } */
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tpadirectvermod1.aspx");
    }     
    /*protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("update filearchive set fverify='" + fverify + "' where fid='" + (string)Session["FileID"] + "'", con);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("update filearchive set fmodify='" + fmodify + "' where fid='" + (string)Session["FileID"] + "'", con);
        cmd2.ExecuteNonQuery();

        con.Close();
    }*/
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
