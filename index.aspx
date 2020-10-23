<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProjectDesignDemo.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
                       <tr><td style="width: 50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" Text="Doctors Appointment"></asp:Label>
            </td>
                           <td class="auto-style5">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-log-in" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" ForeColor="White">LogIn</asp:LinkButton>
                                
                               &nbsp;&nbsp;&nbsp;&nbsp;
                                
                               <span class="glyphicon glyphicon-plus" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" ForeColor="White">SignUp</asp:LinkButton>

                           </td>
        </tr>
    </table>
        <div style="padding:5% 10%;">
            <div style="padding:6% 0; text-align:center;">
                <p> Kurji Holy Family Hospital was founded by the Medical Mission Sisters(MMS),a group of women religious in the catholic church, through the inspiration of their founder Mother (Dr.) Anna Dengel who first came to Padri Ki-Haweli, Patna City in 1939 and it functioned there till 1958. It was shifted to Kurji and formally inaugurated on November  19, 1958 by His Excellency Dr. Zakir Hussain, President of India.<br /><br />As the years went by, MMS needed other like minded religious groups to continue the healing ministry of Kurji Holy Family Hospital. Thus, in the  year 2000 it became a joint venture in which the MMS and the Sisters of Charity  of Nazareth (SCN) came together to further its mission of healing.  This mission is  continued  with several women religious groups, the Jesuits of Patna and the dedicated staff of the hospital.<br /><br />Alert and responsive to the signs of the times, the hospital endeavors to respond to the various health needs of the community. The dignity of the human person supersedes all other considerations and there is no discrimination of class, caste, gender or religion. To provide compassionate, quality health care at a low cost is the aim, and the hospital puts all its resources- human, material and spiritual- at the service of the sick and for promotion of health and well being.<br /><br />Now we Also started taking online appointments. Click below to book appointments</p>
                <p>&nbsp;</p>
                <asp:Button ID="BBookNow" runat="server" Text="Book Appointment" CssClass="booknow" Height="47px" Width="205px"/>
            </div>
        </div>
    </form>
</body>
</html>
