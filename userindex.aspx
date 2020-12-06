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

        <link href="css/style.css" rel="stylesheet" />
    
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
                padding: 20px 20px 24px 100px;
            }
            
            .tdright{
                float: right;
            }
        
            .auto-style1 {
                width: 100%;
                height: 51px;
                background-color: #c23838;
                border-color: #c23838;
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
        
            div td{
                width: 50%;
                margin-bottom: 6%;
            }
        
            .auto-style11 {
                border-radius: 6px;
                margin-top: 6px;
                margin-bottom: 25px;
                padding: 0px 10px;
                font-size: 22px;
                font-variant: all-small-caps;
            }
        
            .auto-style13 {
                height: 57px;
            }
        
            .auto-style14 {
                height: 58px;
            }
        
            .auto-style15 {
                height: 54px;
            }
        
            .auto-style16 {
                height: 63px;
            }
            .auto-style17 {
                width: 100%;
                height: 295px;
                margin-bottom: 39px;
            }
            .auto-style18 {
                margin-bottom: 0px;
            }
            .auto-style19 {
                height: 36px;
            }
                        
            .gridview{
                overflow: hidden;
            }
            .auto-style21 {
                height: 4px;
            }
            .auto-style22 {
                height: 35px;
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-user" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Welcome" Font-Size="Large" ForeColor="White"></asp:Label>&nbsp;
                        <asp:Label ID="Lloggeduser" runat="server" Font-Size="Large" ForeColor="White" Text=""></asp:Label>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-edit" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span>
                        <asp:LinkButton ID="LBEdit" runat="server" Font-Size="Large" ForeColor="White">Edit</asp:LinkButton>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-log-out" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span>
                        <asp:LinkButton ID="Linklogout" runat="server" Font-Size="Large" ForeColor="White" OnClick="Linklogout_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>

            <div style="padding:50px 14% 30px 15%;">
                <div style="border: 10px outset">
                    <table class="auto-style4" style="border:2px solid black">
                        <tr>
                            <td class="auto-style6 tdborder tdpadding" style="font-size: 17px; font-weight: 400;">
                                <b>OPD Number - </b><asp:Label ID="LDispOPD" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style2 tdpadding tdborder" style="font-size: 17px; font-weight: 400;">
                                <b>Patient Name - </b><asp:Label ID="LDispPname" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style6 tdborder tdpadding" style="font-size: 17px; font-weight: 400;">
                                <b>Date Of Birth - </b><asp:Label ID="LDispDob" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style2 tdpadding tdborder" style="font-size: 17px; font-weight: 400;">
                                <b>Aadhar Number - </b><asp:Label ID="LDispAadhar" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style6 tdborder tdpadding" style="font-size: 17px; font-weight: 400;">
                                <b>Phone Number - </b><asp:Label ID="LDispPhone" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="auto-style2 tdpadding tdborder" style="font-size: 17px; font-weight: 400;">
                                <b>Email - </b><asp:Label ID="LDispEmail" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            
            <p style="text-align:center;">PLEASE NOTE DOWN YOUR <b>OPD NUMBER</b> GIVEN ABOVE.</p>
            
            <div style="padding:50px 14% 30px 15%;">
                <asp:Button ID="Buttonbookappoint" runat="server" Text="APPOINTMENT" OnClick="Buttonbookappoint_Click" CssClass="tabs" />&nbsp;
                <asp:Button ID="Buttonrecord" runat="server" Text="RECORD" OnClick="Buttonrecord_Click" CssClass="tabs" />
                <br />
                <asp:Panel ID="Panelbookappoint" runat="server" CssClass="auto-style18">
                    <div>
                        <div style="margin: 3% 14%; background-color:#fafbfc">
                            <asp:MultiView ID="MultiView1" runat="server">

                                <asp:View ID="AppointmentView" runat="server">
                                    <div style="margin: 3% 14%;">
                                        <table style="width: 100%;">
                                        <tr>
                                            <td class="auto-style22">
                                                <center>
                                                    <asp:Label ID="Label5" runat="server" Text="CHOOSE DEPARTMENT" CssClass="form-label"></asp:Label>
                                                </center>
                                            </td>

                                            <td class="auto-style22">
                                                <asp:DropDownList ID="ddlDept" runat="server" CssClass ="form-input" Width="347px" DataSourceID="DDLDeptDataSource" DataTextField="DeptName" DataValueField="DeptName" AutoPostBack="True" OnSelectedIndexChanged="ddlDept_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="DDLDeptDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DeptName] FROM [Department]"></asp:SqlDataSource>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <center>
                                                    <asp:Label ID="Label6" runat="server" Text="CHOOSE DOCTOR" CssClass="form-label"></asp:Label>
                                                </center>
                                            </td>

                                            <td>
                                                <asp:DropDownList ID="ddlDoctor" runat="server" CssClass ="form-input" Width="347px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style21">
                                                <center>
                                                    <asp:Label ID="Label7" runat="server" Text="CHOOSE DOCTOR" CssClass="form-label"></asp:Label>
                                                </center>
                                            </td>
                                            
                                            <td class="auto-style21">
                                                <asp:TextBox ID="TBAppointDate" runat="server" CssClass="auto-style11" Width="227px" TextMode="Date"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2">
                                                <center>
                                                    <asp:Label runat="server" ID="lblslotfull" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                                </center>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2">
                                                <center> 
                                                    <asp:Button ID="btnAppointment" runat="server" Text="BOOK APPOINTMENT" CssClass="booknow" OnClick="btnAppointment_Click" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center>
                                            </td>
                                        </tr>
                                        </table>
                                    </div>
                                </asp:View>

                                <asp:View ID="ConfirmationView" runat="server">
                                    <div style="margin: 3% 14%;">
                                        <table class="auto-style17">
                                            <thead>
                                                <tr>
                                                    <td class="auto-style13" colspan="2">
                                                        <center class="auto-style16">
                                                            <h2 class="form-label" style="font-size:x-large">CONFIRM APPOINTMENT</h2>
                                                        </center>
                                                    </td>
                                                </tr>
                                            </thead>

                                            <tr>
                                                <td class="auto-style14 tdborder">
                                                    <center>
                                                        <asp:Label ID="Label8" runat="server" CssClass="form-label" Text="DEPARTMENT"></asp:Label>
                                                    </center>
                                                </td>
                                            
                                                <td class="auto-style14 tdborder">
                                                    <center>
                                                        <asp:Label ID="lbldepart" runat="server" CssClass="form-label" Text="NIL"></asp:Label>
                                                    </center>
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <td class="auto-style15 tdborder">
                                                    <center>
                                                        <asp:Label ID="Label9" runat="server" CssClass="form-label" Text="DOCTOR"></asp:Label>
                                                    </center>
                                                </td>
                                                
                                                <td class="auto-style15 tdborder">
                                                    <center>
                                                        <asp:Label ID="lbldoc" runat="server" CssClass="form-label" Text="NIL"></asp:Label>
                                                    </center>
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <td class="auto-style16 tdborder">
                                                    <center>
                                                        <asp:Label ID="Label10" runat="server" CssClass="form-label" Text="APPOINTMENT DATE"></asp:Label>
                                                    </center>
                                                </td>
                                            
                                                <td class="auto-style16 tdborder">
                                                    <center>
                                                        <asp:Label ID="lbladate" runat="server" CssClass="form-label" Text="NIL"></asp:Label>
                                                    </center>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="auto-style19">
                                                    &nbsp;
                                                </td>
                                            </tr>

                                            <tr>
                                                <td colspan="2">
                                                    <center>
                                                        <asp:Button ID="backtoappointview" runat="server" CssClass="booknow" Text="BACK" OnClick="backtoappointview_Click" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="gotopaymentview" runat="server" Text="CONFIRM PAYMENT" CssClass="booknow" OnClick="gotopaymentview_Click"></asp:Button >
                                                    </center>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </asp:View>

                                <asp:View ID="PaymentView" runat="server">
                                    <div style="margin: 3% 14%;" class="tdcenter">
                                        <p>FOR BOOKING AN APPOINTMENT WITH THE DOCTOR IS <b>RS.400</b></p>
                                        <br />
                                        <br />
                                        <p>YOU CAN PAY ONLINE OR CHOOSE AN OPTION FOR PAYING IN COUNTER</p>
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                                        </p>
                                        <br />
                                        <br />
                                        <asp:Button ID="Btnpayonline" runat="server" Text="PAY ONLINE" CssClass="booknow" OnClick="Btnpayonline_Click"/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Btnpaycounter" runat="server" Text="PAY AT COUNTER" CssClass="booknow" OnClick="Btnpaycounter_Click"/>
                                    </div>
                                </asp:View>
                            </asp:MultiView>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panelrecord" runat="server">
                    <div style="margin:3% 4%">
                        <div style="padding:14px 0">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width:33.33%">
                                        <center>
                                            <asp:Label ID="Label3" runat="server" Text="SEARCH BY DATE" CssClass="form-label"></asp:Label>
                                            <br />
                                            <asp:DropDownList runat="server" CssClass ="form-input" ID="ddlSearchdate" DataSourceID="SearchbydateDS" DataTextField="AppointmentDate" DataValueField="AppointmentDate" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchdate_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SearchbydateDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [AppointmentDate] FROM [Appointment]"></asp:SqlDataSource>
                                        </center>
                                    </td>
                                    <td style="width:33.33%">
                                        <center>
                                            <asp:Label ID="Label4" runat="server" Text="SEARCH BY DOCTOR" CssClass="form-label"></asp:Label>
                                            <br />
                                            <asp:DropDownList runat="server" CssClass ="form-input" ID="ddlSearchDoctor" DataSourceID="SearchbyDocDS" DataTextField="DoctorName" DataValueField="DoctorName" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchDoctor_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SearchbyDocDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [DoctorName] FROM [Appointment]"></asp:SqlDataSource>
                                        </center>
                                    </td>
                                    <td style="width:33.33%">
                                        <center>
                                            <asp:Label ID="Label11" runat="server" Text="SEARCH BY DEPARTMENT" CssClass="form-label"></asp:Label>
                                            <br />
                                            <asp:DropDownList runat="server" CssClass ="form-input" ID="ddlSearchDept" DataSourceID="SearchbyDeptDS" DataTextField="DepartmentName" DataValueField="DepartmentName" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchDept_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SearchbyDeptDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [DepartmentName] FROM [Appointment]"></asp:SqlDataSource>
                                        </center>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <center>
                                <asp:Button ID="BtnRefresh" runat="server" Text="Refresh" CssClass ="booknow" OnClick="BtnRefresh_Click"/>
                            </center>
                        </div>
                        <div style="padding:14px 14px">
                            <asp:Panel ID="GridAllViewPanel" runat="server">
                                <asp:GridView ID="UserrecordGridView" runat="server" CssClass="modal-open" Font-Size="Medium" Width="100%" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="GridviewallDataSource" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="UserrecordGridView_RowCommand" >
                                <AlternatingRowStyle Width="100px" BackColor="White"/>
                                <Columns>
                                    <asp:BoundField DataField="RecordId" HeaderText="Record Id" SortExpression="RecordId" InsertVisible="False" ReadOnly="True" >
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor" SortExpression="DoctorName" >
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="DepartmentName" >
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate" >
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
                                    </asp:BoundField>
                                    <asp:ButtonField ButtonType="Button" CommandName="receipt" Text="Receipt" />
                                </Columns>
                                <FooterStyle BackColor="#990000" ForeColor="White" Width="100px" Font-Bold="True"/>
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" Width="20%"/>
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Width="100px"/>
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Width="100px"/>
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" Width="100px"/>
                                <SortedAscendingCellStyle BackColor="#FDF5AC" Width="100px"/>
                                <SortedAscendingHeaderStyle BackColor="#4D0000" Width="100px"/>
                                <SortedDescendingCellStyle BackColor="#FCF6C0" Width="100px"/>
                                <SortedDescendingHeaderStyle BackColor="#820000" Width="100px"/>
                            </asp:GridView>
                            <asp:SqlDataSource ID="GridviewallDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordId], [DoctorName], [DepartmentName], [AppointmentDate], [Status] FROM [Appointment] WHERE ([OpdId] = @OpdId) ORDER BY [AppointmentDate]">
                                <SelectParameters>
                                    <asp:SessionParameter Name="OpdId" SessionField="opdno" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            </asp:Panel>
                            
                            <asp:Panel ID="GridDateViewPanel" runat="server">
                                <br />
                            <asp:GridView ID="SearchDateGridView" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataSourceID="GridDateSearch" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="RecordId" HeaderText="Record Id" InsertVisible="False" ReadOnly="True" SortExpression="RecordId">
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor" SortExpression="DoctorName">
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="DepartmentName">
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate">
                                    <ItemStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                </Columns>
                                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="GridDateSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordId], [DoctorName], [DepartmentName], [AppointmentDate], [Status] FROM [Appointment] WHERE ([AppointmentDate] = @AppointmentDate)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlSearchdate" DbType="Date" Name="AppointmentDate" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            </asp:Panel>

                            <asp:Panel ID="GridDocSearch" runat="server">
                                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataSourceID="GridDocSearchDS" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="RecordId" HeaderText="Record Id" InsertVisible="False" ReadOnly="True" SortExpression="RecordId">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor" SortExpression="DoctorName">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="DepartmentName">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    </Columns>
                                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                                <asp:SqlDataSource ID="GridDocSearchDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordId], [DoctorName], [DepartmentName], [AppointmentDate], [Status] FROM [Appointment] WHERE ([DoctorName] = @DoctorName)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlSearchDoctor" Name="DoctorName" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                            </asp:Panel>

                            <asp:Panel ID="GridDeptSearchPanel" runat="server" Font-Size="Medium">
                                <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="GridDeptSearchDS" Font-Size="Medium" Width="100%" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="RecordId" HeaderText="Record Id" InsertVisible="False" ReadOnly="True" SortExpression="RecordId">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor" SortExpression="DoctorName">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="DepartmentName">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate">
                                        <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="GridDeptSearchDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordId], [DoctorName], [DepartmentName], [AppointmentDate], [Status] FROM [Appointment] WHERE ([DepartmentName] = @DepartmentName)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlSearchDept" Name="DepartmentName" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </form>
    </body> 
</html>
