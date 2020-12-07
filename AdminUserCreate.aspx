<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUserCreate.aspx.cs" Inherits="ProjectDesignDemo.AdminUserCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
    <link href="css/style.css" rel="stylesheet" />
</head>
<body style="background-color:#c23838">
    <form id="form1" runat="server">
        <div style="margin: 4% 30%; background-color:#fffaeb; padding:50px 50px 50px 50px; border-radius:8px; border:5px outset">
            <asp:Panel ID="EditPanel" runat="server">
                <div style="padding: 50px 50px 50px 50px">
                    <center>
                        <h2><b>CREATE QUICK ACCOUNT</b></h2>
                    </center>
                    <br />
                    <br />
                    <asp:Label ID="LName" runat="server" Text="PATIENT NAME" CssClass="form-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBPname"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBPname" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LFname" runat="server" Text="FATHER'S NAME" CssClass="form-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBFname"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBFname" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LEmail" runat="server" CssClass="form-label" Text="EMAIL"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBEmail"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblerroremail" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBEmail" runat="server" CssClass="form-input" TextMode="Email"></asp:TextBox>

                    <asp:Label ID="LGender" runat="server" CssClass="form-label" Text="GENDER"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="RBGender"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RadioButtonList ID="RBGender" runat="server" CssClass="auto-style6" Font-Size="Small" Height="83px" Width="430px">
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />

                    <asp:Label ID="LDob" runat="server" CssClass="form-label " Text="DATE OF BIRTH"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RFVDob" runat="server" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red" ControlToValidate="TBDob"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBDob" runat="server" CssClass="form-input form-input-half" TextMode="Date"></asp:TextBox>
                        <br />

                    <asp:Label ID="LPhone" runat="server" CssClass="form-label" Text="PHONE NUMBER"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBPhone"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBPhone" runat="server" CssClass="form-input" TextMode="Phone"></asp:TextBox>

                    <asp:Label ID="LAddress" runat="server" CssClass="form-label" Text="ADDRESS"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBAddress"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBAddress" runat="server" CssClass="auto-style8" Height="127px" TextMode="MultiLine" Width="486px"></asp:TextBox>
                    
                    <asp:Label ID="LDistrict" runat="server" CssClass="form-label" Text="DISTRICT"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBDistrict"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBDistrict" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LState" runat="server" CssClass="form-label" Text="STATE"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="DropDownState"></asp:RequiredFieldValidator>
                    <br />
                    <asp:DropDownList ID="DropDownState" runat="server" CssClass="form-input">
                        <asp:ListItem>BIHAR</asp:ListItem>
                        <asp:ListItem>JHARKHAND</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="LPincode" runat="server" CssClass="form-label " Text="PIN CODE"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Field Can't Be Empty!!" Font-Size="Small" ForeColor="Red" ControlToValidate="TBPincode"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBPincode" runat="server" CssClass="form-input form-input-half" TextMode="Number"></asp:TextBox>

                    <center>
                        <asp:Button ID="BCreate" runat="server" Height="40px" Text="CREATE" Width="104px" CssClass="booknow" OnClick="BCreate_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BCancel" runat="server" Height="40px" Text="CANCEL" Width="104px" CssClass="booknow" OnClick="BCancel_Click"/>
                    </center>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
