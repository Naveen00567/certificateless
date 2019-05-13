
    function ValidateNumeric()

    {

        var keyCode = window.event.keyCode;

        if (keyCode > 57 || keyCode < 4)

        window.event.returnValue = false;

    }
    
    function OpenPopup() 
    {

    window.open("OwnerMain.aspx","List","scrollbars=no,resizable=no,width=400,height=280");

    return false;

    }


    function refreshParent() 
    {
      window.opener.location.href = window.opener.location.href;

      if (window.opener.progressWindow)
    		
      {
        window.opener.progressWindow.close()
      }
      window.close();
    }

//    function showConfirmation()
//    {
//        //document.getElementById('Label5').innerText = 'upload complete.';
//        var AsyncFileUpload = $get("<%=AsyncFileUpload1.ClientID%>");
//        var txts = AsyncFileUpload.getElementsByTagName("input");
//        for (var i = 0; i < txts.length; i++) 
//        {
//            if (txts[i].type == "text")
//            {
//                txts[i].value = "";
//                txts[i].style.backgroundColor = "#EFFBFB";
//            }
//        }
//        $get("<%=Label6.ClientID%>").innerHTML = "File Uploaded Successfully";
//    }