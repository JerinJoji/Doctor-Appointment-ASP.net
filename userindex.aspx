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
        
            div td{
                width: 50%;
                margin-bottom: 6%;
            }
        
            .auto-style7 {
                height: 125px;
            }
        
            .auto-style10 {
                height: 345px;
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
            .auto-style20 {
                height: 149px;
            }
            .auto-style21 {
                width: 70%;
                height: 32px;
                border-radius: 6px;
                margin-top: 6px;
                margin-bottom: 25px;
                padding: 0px 10px;
                font-size: 22px;
                font-variant: all-small-caps;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td style="width: 50%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" Text="Doctors Appointment"></asp:Label>
                    </td>
                    
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-user" style="left: 0px; top: -1px; height: 24px; color:white;">&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Welcome" Font-Size="Large" ForeColor="White"></asp:Label>&nbsp;
                        <asp:Label ID="Lpuser" runat="server" Font-Size="Large" ForeColor="White" Text="Label"></asp:Label>
                        
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
                            <td class="auto-style6 tdcenter tdborder" style="font-size: 17px; font-weight: 400;">
                                OPD No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="Lpid" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style2 tdcenter tdpadding tdborder" style="font-size: 17px; font-weight: 400;">
                                Patient Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="Lpname" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="auto-style6 tdcenter tdborder" style="font-size: 17px; font-weight: 400;">
                                Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Lpdob" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style2 tdcenter tdpadding tdborder" style="font-size: 17px; font-weight: 400;">
                                Patient Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Lpage" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style6 tdcenter tdborder" style="font-size: 17px; font-weight: 400;">
                                Phone Number&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style2 tdcenter tdpadding tdborder" style="font-size: 17px; font-weight: 400;">
                                Email:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <p style="text-align:center;">PLEASE NOTE DOWN YOUR <b>OPD NUMBER</b> GIVEN ABOVE SO THAT YOU CAN LOGIN NEXT TIME YOU VISIT</p>
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
                                            <td class="auto-style7">
                                                <center>
                                                    <asp:Label ID="Label5" runat="server" Text="CHOOSE DEPARTMENT" CssClass="form-label"></asp:Label>
                                                </center>
                                            </td>

                                            <td class="auto-style7">
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass ="form-input" Width="347px"></asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style20">
                                                <center>
                                                    <asp:Label ID="Label6" runat="server" Text="CHOOSE DOCTOR" CssClass="form-label"></asp:Label>
                                                </center>
                                            </td>

                                            <td class="auto-style20">
                                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass ="form-input" Width="347px"></asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style10">
                                                <center>
                                                    <asp:Label ID="Label7" runat="server" Text="CHOOSE DOCTOR" CssClass="form-label"></asp:Label>
                                                </center>
                                            </td>
                                            
                                            <td class="auto-style10">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" Width="227px"></asp:TextBox>
                                                <asp:ImageButton ID="CalenderImageButton" runat="server" ImageUrl="~/img/iconcalendar.png" Height="30px" Width="31px" OnClick="ImageButton1_Click" />
                                                <asp:Calendar ID="CalendarDoa" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="212px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="346px" OnDayRender="CalendarDoa_DayRender">
                                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                                                    <DayStyle Width="14%" />
                                                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                                    <OtherMonthDayStyle ForeColor="#999999" />
                                                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                                                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                                                    <TodayDayStyle BackColor="#CCCC99" />
                                                </asp:Calendar>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2">
                                                <center> 
                                                    <asp:Button ID="btnAppointment" runat="server" Text="BOOK APPOINTMENT" CssClass="booknow" OnClick="btnAppointment_Click" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="reset" runat="server" Text="RESET AND CANCEL" CssClass="booknow"></asp:Button>
                                                </center>
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
                                                            <h3>COFIRM APPOINTMENT</h3>
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
                                        <br />
                                        <br />
                                        <asp:Button ID="Btnpayonline" runat="server" Text="PAY ONLINE" CssClass="booknow"/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Btnpaycounter" runat="server" Text="PAY AT COUNTER" CssClass="booknow"/>
                                    </div>
                                </asp:View>
                            </asp:MultiView>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panelrecord" runat="server" BorderStyle="Solid">
                    <div style="margin:3% 4%">
                        <div style="padding:14px 0">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width:33.33%">
                                        <center>
                                            <input id="TBSearchbydate" type="search" placeholder="Search By Date" class="auto-style21"/>
                                        </center>
                                    </td>
                                    <td style="width:33.33%">
                                        <center>
                                            <input id="TBSearchbydoc" type="search" placeholder="Search By Doctor" class="auto-style21"/>
                                        </center>
                                    </td>
                                    <td style="width:33.33%">
                                        <center>
                                            <input id="TBSearchbydep" type="search" placeholder="Search By Department" class="auto-style21"/>
                                        </center>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="padding:14px 14px">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
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
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </form>
    </body> 
</html>
