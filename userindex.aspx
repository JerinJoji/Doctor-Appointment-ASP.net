<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userindex.aspx.cs" Inherits="ProjectDesignDemo.demo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            margin: 0px;
            font-family: 'Roboto', sans-serif;
        }
        .tdborder{
            border: 2px solid black;
        }
        .auto-style1 {
            width: 100%;
            height: 51px;
            background-color: #c23838;
            border-color: #c23838;
        }
        .auto-style2 {
            width: 25%;
        }
        .auto-style4 {
            width: 100%;
        }
        .tdcenter{
            text-align: center;
        }
        .tdpadding{
            padding: 20px 20px 24px 20px;
        }
        .tdright{
            float: right;
        }
        .auto-style5 {
            float: right;
            margin-left: 40px;
            margin-top: 13px;
            margin-right: 80px;
        }
        .tabs{
            color: #fff;
            background-color: #c23838;
            border-color: #c23838;
            padding: 8px 9px;
            font-size: 15px;
            line-height: 1.33333;
            border-radius: 18px;
        }
        .auto-style6 {
            width: 24%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
                       <tr><td style="width: 50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" Text="Doctors Appointment"></asp:Label>
            </td>
                           <td class="auto-style5">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <span class="glyphicon glyphicon-user" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Welcome" Font-Size="Large" ForeColor="White"></asp:Label>&nbsp;
                                 <asp:Label ID="Lpuser" runat="server" Font-Size="Large" ForeColor="White" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <span class="glyphicon glyphicon-log-out" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span>
                                 <asp:LinkButton ID="Linklogout" runat="server" Font-Size="Large" ForeColor="White">Logout</asp:LinkButton>
                           </td>
        </tr>
    </table>

        <div style="padding:50px 14% 30px 15%;">
            <div style="border: 10px outset">
            <table class="auto-style4" style="border:2px solid black">
                <tr>
                    <td class="auto-style6 tdcenter tdborder" style="font-size: 17px; font-weight: 400;">OPD No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Lpid" runat="server" Text="Label"></asp:Label></td>
                    <td class="auto-style2 tdcenter tdpadding tdborder" style="font-size: 17px; font-weight: 400;">Patient Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Lpname" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style6 tdcenter tdborder" style="font-size: 17px; font-weight: 400;">Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lpdob" runat="server" Text="Label"></asp:Label></td>
                    <td class="auto-style2 tdcenter tdpadding tdborder" style="font-size: 17px; font-weight: 400;">Patient Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lpage" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style6 tdcenter tdborder" style="font-size: 17px; font-weight: 400;">Phone Number&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    <td class="auto-style2 tdcenter tdpadding tdborder" style="font-size: 17px; font-weight: 400;">Email:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
            </div>
        </div>
        
        <div style="padding:50px 14% 30px 15%;">
            <asp:Button ID="Buttondoclist" runat="server" Text="Doctors List" OnClick="Button1_Click"  CssClass="tabs" />
        &nbsp;
            <asp:Button ID="Buttonbookappoint" runat="server" Text="Book Appointment" OnClick="Buttonbookappoint_Click" CssClass="tabs" />
&nbsp;
            <asp:Button ID="Buttonrecord" runat="server" Text="Record" OnClick="Buttonrecord_Click" CssClass="tabs" />
            <br />
            <br />
            <asp:Panel ID="Paneldoctorlist" runat="server" BorderColor="Black" BorderStyle="Solid">
                doctor</asp:Panel>
            <asp:Panel ID="Panelbookappoint" runat="server" BorderStyle="Solid">
                Appointment</asp:Panel>
            <asp:Panel ID="Panelrecord" runat="server" BorderStyle="Solid">
                Record</asp:Panel>
        </div>
    </form>
</body> 
</html>
