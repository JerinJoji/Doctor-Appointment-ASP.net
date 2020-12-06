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

    <script>
        function printAppoint() {
            var prtGrd = document.getElementById('<%=GridTodayAppoint.ClientID %>');
            prtGrd.border = 0;
            var prtwin = window.open('', 'Appointments', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write(prtGrd.outerHTML);
            prtwin.focus();
            prtwin.print();
            prtwin.close();
        }

        function printRecords() {
            var prtGrd = document.getElementById('<%=GridViewRecords.ClientID %>');
            prtGrd.border = 0;
            var prtwin = window.open('', 'Records', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write(prtGrd.outerHTML);
            prtwin.focus();
            prtwin.print();
            prtwin.close();
        }
    </script>

    <style type="text/css">
        
        .auto-style6 {
            margin-left: 160px;
            margin-right: 160px;
            margin-top: 56px;
            padding: 10px 10px;
        }

        .auto-style1 {
                width: 100%;
                height: 51px;
                background-color: #c23838;
                border-color: #c23838;
            }
        .auto-style7 {
            width: 12%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
                <tr>
                    <td style="width: 50%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LLHeading" runat="server" Font-Size="X-Large" ForeColor="White" Text="Doctors Appointment" OnClick="LLHeading_Click"></asp:LinkButton>
                    </td>
                    
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-user" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Welcome" Font-Size="Large" ForeColor="White"></asp:Label>&nbsp;
                        <asp:Label ID="Lloggeduser" runat="server" Font-Size="Large" ForeColor="White" Text="ADMIN"></asp:Label>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-log-out" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span>
                        <asp:LinkButton ID="Linklogout" runat="server" Font-Size="Large" ForeColor="White" OnClick="Linklogout_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>

        <div style="margin-bottom: 0px;" class="auto-style6">
            <asp:Button ID="BTodayAppoint" runat="server" Text="Today's Appointment" CssClass="tabs" OnClick="BTodayAppoint_Click"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BAllRecord" runat="server" Text="Records" CssClass="tabs" OnClick="BAllRecord_Click"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BPatients" runat="server" Text="Patients" CssClass="tabs" OnClick="BPatients_Click"/>
            <br />
            <br />
            <asp:Panel ID="TodayAppointPanel" runat="server">
                <center>
                    <h2>Today's Appointments</h2>
                </center>
                <br />
                <br />
                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/img/print.png" Width="41px" BackColor="#DFD59B" OnClientClick="printAppoint()"/>
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label3" runat="server" Text="Doctor" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBSDoc"></asp:TextBox>
                            </center>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label1" runat="server" Text="Department" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBSDept"></asp:TextBox>
                            </center>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label4" runat="server" Text="OPD Number" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBSOpd"></asp:TextBox>
                            </center>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label5" runat="server" Text="Patient Name" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBSName"></asp:TextBox>
                            </center>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <center>
                                <asp:Button ID="BSearch" runat="server" Text="Search" CssClass="booknow" OnClick="BSearch_Click"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button runat="server" Text="Refresh" ID="BSRefresh" CssClass="booknow" OnClick="BSRefresh_Click"></asp:Button>
                            </center>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridTodayAppoint" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="GridTodayAppoint_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="RecordId" HeaderText="Record ID" />
                        <asp:BoundField DataField="OpdId" HeaderText="OPD No" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="DepartmentName" HeaderText="Department" />
                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:ButtonField ButtonType="Button" CommandName="checkedup" Text="Checked Up"/>
                        <asp:ButtonField ButtonType="Button" CommandName="appoint" Text="Appointed" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="RecordsPanel" runat="server">
                <center>
                    <h2>Patient Records</h2>
                </center>
                <br />
                <br />
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="42px" ImageUrl="~/img/print.png" Width="41px" BackColor="#DFD59B" OnClientClick="printRecords()"/>
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label6" runat="server" Text="Doctor" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBRecDoc"></asp:TextBox>
                            </center>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label7" runat="server" Text="Department" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBRecDept"></asp:TextBox>
                            </center>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label8" runat="server" Text="OPD Number" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBRecOpd"></asp:TextBox>
                            </center>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <center>
                                <asp:Label ID="Label9" runat="server" Text="Patient Name" CssClass="form-label"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" CssClass="form-input" ID="TBRecName"></asp:TextBox>
                            </center>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <center>
                                <asp:Button ID="BRecSearch" runat="server" Text="Search" CssClass="booknow" OnClick="BRecSearch_Click"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button runat="server" Text="Refresh" ID="BRecRefresh" CssClass="booknow" OnClick="BRecRefresh_Click"></asp:Button>
                            </center>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridViewRecords" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="GridTodayAppoint_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="RecordId" HeaderText="Record ID" />
                        <asp:BoundField DataField="OpdId" HeaderText="OPD No" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="DepartmentName" HeaderText="Department" />
                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor" />
                        <asp:BoundField DataField="AppointmentDate" HeaderText="Date" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>

            </asp:Panel>

            <asp:Panel ID="PatientsPanel" runat="server">
                <center>
                    <h2>Patients</h2>
                </center>
                <br />
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td style="width:25%; padding:0px 10px;">
                            <asp:Label ID="Label10" runat="server" Text="OPD No." CssClass="form-label"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" CssClass="form-input" ID="TBSOpdno"></asp:TextBox>
                        </td>
                        <td style="width:25%; padding:0px 10px;">
                            <asp:Label ID="Label11" runat="server" Text="Name" CssClass="form-label"></asp:Label>
                            <br />
                            <asp:TextBox runat="server" CssClass="form-input" ID="TBName"></asp:TextBox></td>
                        <td style="padding:0px 10px;" class="auto-style7">
                            <asp:Button ID="BPSearch" runat="server" Text="Search" CssClass="booknow" OnClick="BPSearch_Click"/></td>
                        <td style="width:25%; padding:0px 10px;">
                            <asp:Button ID="BPRefresh" runat="server" Text="Refresh" CssClass="booknow" OnClick="BPRefresh_Click"/></td>
                    </tr>
                </table>
                <asp:GridView ID="UserrecordsGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="OpdNo" HeaderText="OPD ID" />
                        <asp:BoundField DataField="PatientName" HeaderText="Name" />
                        <asp:BoundField DataField="FathersName" HeaderText="Father's Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="DateofBirth" HeaderText="DOB" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="District" HeaderText="District" />
                        <asp:BoundField DataField="State" HeaderText="State" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="AadharNo" HeaderText="Aadhar" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>

</body>
</html>
