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
    <style type="text/css">
        td, th{
            width: 25%;
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
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-log-in" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:LinkButton ID="LLogin" runat="server" Font-Size="Large" ForeColor="White" OnClick="LinkButton1_Click">LogIn</asp:LinkButton>
                                
                               &nbsp;&nbsp;&nbsp;&nbsp;
                                
                               <span class="glyphicon glyphicon-plus" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:LinkButton ID="LSignup" runat="server" Font-Size="Large" ForeColor="White" OnClick="LSignup_Click">SignUp</asp:LinkButton>

                           </td>
        </tr>
    </table>
        <div style="padding:5% 10%;">
            <div style="padding:6% 0; text-align:center;">
                <p>Now we Also started taking online appointments. Click below to book appointments.</p>
                <p>Doctor Schedule is given below for your convenience.</p>
                <p>Offline Registration :- 8:00 AM - 10:00AM</p>
                <p>&nbsp;</p>
                <asp:Button ID="BBookNow" runat="server" Text="Book Appointment" CssClass="booknow" Height="47px" Width="205px"/>
            </div>
            <div>
                <h3>MEDICAL</h3>
                <table class="table">
                    <thead style="background-color:#c23838; color:#fff">
                        <tr>
                            <th scope="col">S.No</th>
                            <th scope="col">Doctor's Name</th>
                            <th scope="col">Degree</th>
                            <th scope="col">Day</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Dr. Ajit Kr. Sinha</td>
                            <td>MD, DNB</td>
                            <td>Monday, Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>SURGICAL</h3>
                <table class="table">
                    <thead style="background-color:#c23838; color:#fff">
                        <tr>
                            <th scope="col">S.No</th>
                            <th scope="col">Doctor's Name</th>
                            <th scope="col">Degree</th>
                            <th scope="col">Day</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Dr. Vikash Kumar</td>
                            <td>MS</td>
                            <td>Monday, Wednesday, Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>OB/GYNAE</h3>
                <table class="table">
                    <thead style="background-color:#c23838; color:#fff">
                        <tr>
                            <th scope="col">S.No</th>
                            <th scope="col">Doctor's Name</th>
                            <th scope="col">Degree</th>
                            <th scope="col">Day</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Dr. Meena Samant</td>
                            <td>MD,DNB</td>
                            <td>Tueday, Thursday, Saturday</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
