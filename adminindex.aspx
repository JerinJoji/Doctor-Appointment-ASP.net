<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminindex.aspx.cs" Inherits="ProjectDesignDemo.adminindex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <link href="css/style.css" rel="stylesheet" />

    <style type="text/css">
        div{
            border:2px solid;
        }
        .auto-style6 {
            margin-left: 220px;
            margin-right: 246px;
            margin-top: 197px;
            padding: 10px 10px;
        }

        .auto-style1 {
                width: 100%;
                height: 51px;
                background-color: #c23838;
                border-color: #c23838;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
                <tr>
                    <td style="width: 50%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LLHeading" runat="server" Font-Size="X-Large" ForeColor="White" Text="Doctors Appointment"></asp:LinkButton>
                    </td>
                    
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-user" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Welcome" Font-Size="Large" ForeColor="White"></asp:Label>&nbsp;
                        <asp:Label ID="Lloggeduser" runat="server" Font-Size="Large" ForeColor="White" Text=""></asp:Label>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-edit" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span>
                        <asp:LinkButton ID="LBEdit" runat="server" Font-Size="Large" ForeColor="White">Edit</asp:LinkButton>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-log-out" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span>
                        <asp:LinkButton ID="Linklogout" runat="server" Font-Size="Large" ForeColor="White">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>

        <div style="margin-bottom: 0px;" class="auto-style6">

            <asp:Button ID="Button1" runat="server" Text="Today's Appointment" CssClass="tabs"/>

        </div>

    </form>

        </body>
</html>
