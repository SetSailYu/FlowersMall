<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tiaoz.aspx.cs" Inherits="Front_tiaoz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>跳转</title>
    <script type="text/javascript">
        //confirm('是否继续完善个人资料？')
        var r = confirm("是否继续完善个人资料?")
        if (r == true) {
            //Response.redirect("../Front/U_Personal.aspx")
            window.location = '../Front/U_Personal.aspx';
            

        }
        else {
      
              window.location = '../Front/Login.aspx';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
    </form>
</body>
</html>
