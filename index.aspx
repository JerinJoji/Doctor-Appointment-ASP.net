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
                <asp:LinkButton ID="LLindexHeading" runat="server" Font-Size="X-Large" ForeColor="White" Text="Doctors Appointment" OnClick="LLindexHeading_Click"></asp:LinkButton>
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
                <p>Now we also started taking Online Appointments. Click below to book appointments.</p>
                <p>Doctor Schedule is given below for your convenience.</p>
                <p>Offline Registration :- 8:00 AM - 10:00AM</p>
                <p>&nbsp;</p>
                <asp:Button ID="BBookNow" runat="server" Text="Book Appointment" CssClass="booknow" Height="47px" Width="205px" OnClick="BBookNow_Click"/>
            </div>
            <div>
                <h3>MEDICAL</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. Ajit Kumar Sinha</td>
                            <td>MD, DNB</td>
                            <td>Monday, Friday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Z. Haque</td>
                            <td>DPH</td>
                            <td>Thursday</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Dr. Abhishek Kumar Chandra</td>
                            <td>MD</td>
                            <td>Wednesday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Dr. Pallav Narayan Singh</td>
                            <td>MD</td>
                            <td>Tuesday, Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>SURGICAL</h3>
                <table class="table" style="font-size: small">
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
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Nitin Kumar Singh</td>
                            <td>MS</td>
                            <td>Monday, Wednesday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Dr. Anand Deoraj</td>
                            <td>MS</td>
                            <td>Tuesday, Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>OB/GYNAE</h3>
                <table class="table" style="font-size: small">
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
                            <td>Tuesday, Thursday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Poonam Lal</td>
                            <td>MD</td>
                            <td>Monday, Wednesday, Friday</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Dr. Jayoti Malhotra</td>
                            <td>MD</td>
                            <td>Thursday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Dr. Zarin Rahman</td>
                            <td>MD, FRCOG(LON), ARAB BOARD(KSA)</td>
                            <td>Monday, Wednesday, Friday</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Dr. Seema Ranjan</td>
                            <td>MD</td>
                            <td>Tuesday, Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>PAEDIATRICS</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. V. Kapoor</td>
                            <td>MD</td>
                            <td>Monday, Wednesday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Hima Charan</td>
                            <td>DCH, MD, DNB</td>
                            <td>Tuesday, Friday</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Dr. Manoj Kumar Jha</td>
                            <td>MD</td>
                            <td>Wednesday, Thursday</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Dr. Reena Sinha</td>
                            <td>DNB</td>
                            <td>Monday, Thursday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Dr. Suprabhat Ranjan</td>
                            <td>MD</td>
                            <td>Tuesday, Thursday, Saturday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>EYE</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. P. Ranjan</td>
                            <td>MS</td>
                            <td>Monday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. J.G.Agrawal</td>
                            <td>MS</td>
                            <td>Wednesday</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Dr. Ranjit Kumar Singh</td>
                            <td>DO</td>
                            <td>Thursday</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Dr. Kumar Vivek</td>
                            <td>MS</td>
                            <td>Tuesday</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Dr. Siddharth Kumar</td>
                            <td>MS</td>
                            <td>Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>ENT</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. Gaurav Ashish</td>
                            <td>MS, DLO(CMC Vellore) Gold Medalist</td>
                            <td>Monday, Wednesday, Thursday, Friday, Satuday</td>
                        </tr>
                    </tbody>
                </table>
                
                <h3>ORTHOPEDIC</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. Saurabh Chaudhary</td>
                            <td>MS, DNB</td>
                            <td>Monday, Tuesday, Thursday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Piyush Thakur</td>
                            <td>MS</td>
                            <td>Wednesday, Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>CARDIOLOGY</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. Arun Kumar Singh</td>
                            <td>MD</td>
                            <td>Monday - Thursday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Vipin Kumar</td>
                            <td>MD, DM</td>
                            <td>Friday, Saturday</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Dr. Prabhat Kumar</td>
                            <td>MD, FNB</td>
                            <td>Friday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>CANCER SURGEON (ONCOLOGY)</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. S. Sircar</td>
                            <td>MS</td>
                            <td>Will come only when called</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Arvind Kumar</td>
                            <td>MD, DM</td>
                            <td>Tuesday, Thursday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>UROLOGY</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. P.K.Sinha</td>
                            <td>MS,MCH</td>
                            <td> Tuesday, Thursday</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Dr. Vikas Kumar</td>
                            <td>MS,MCH</td>
                            <td>Monday, Wednesday</td>
                        </tr>
                    </tbody>
                </table>

                <h3>NEUROLOGIST</h3>
                <table class="table" style="font-size: small">
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
                            <td>Dr. Ajay Kumar</td>
                            <td>DM</td>
                            <td>Friday</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
