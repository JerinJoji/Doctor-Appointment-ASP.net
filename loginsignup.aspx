<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginsignup.aspx.cs" Inherits="ProjectDesignDemo.loginsignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style6 {
            border-radius: 6px;
            margin-top: 6px;
            margin-bottom: 25px;
            padding: 7px 9px;
        }

        .form-input-half{
            width:45%;
        }
        .email-input{
            font-size: 15px;
            font-variant: normal;
        }
        .auto-style7 {
            margin-bottom: 0px;
        }
        .auto-style8 {
            border-radius: 6px;
            margin-top: 6px;
            margin-bottom: 25px;
            padding: 0px 10px;
            font-size: 22px;
            font-variant: all-small-caps;
        }
    </style>
</head>
<body style="background-color:#c23838">
    <form id="form1" runat="server">
        <div style="margin: 4% 30%; background-color:#fffaeb; padding:50px 50px 50px 50px; border-radius:8px; border:5px outset">
            <asp:Button ID="LoginButton" runat="server" Text="LOGIN" Height="57px" Width="50%" CssClass="button-border booknow" OnClick="LoginButton_Click" Font-Bold="True" Font-Size="Medium" /><asp:Button ID="RegisterButton" runat="server" Text="REGISTER" Height="57px" Width="48%" CssClass="button-border booknow" OnClick="RegisterButton_Click" />
            <br />
            <br />
            <asp:Panel ID="PanelLogin" runat="server">
                <div style="padding: 50px 50px 50px 50px" class="auto-style7">
                    <br />
                    <input id="TOpd" type="text" class="form-input" placeholder="Enter Your OPD No."/>
                    <br />
                    <asp:TextBox ID="TPassword" runat="server" CssClass="form-input" placeholder="Enter Admin Password"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbloginmsg" runat="server" Font-Size="Small"></asp:Label><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="BLogin" runat="server" CssClass="booknow" Height="40px" Text="LOGIN" Width="104px" OnClick="Button1_Click" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LForgotID" runat="server" Font-Size="Small">Forgot OPD ID?</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Lcreateaccount" runat="server" Font-Size="Small">Create Account</asp:LinkButton>
                    <br />
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelRegister" runat="server">
                <div style="padding: 50px 50px 50px 50px">
                    <asp:Label ID="LName" runat="server" Text="PATIENT NAME" CssClass="form-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVPname" runat="server" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red" ControlToValidate="TBPname"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBPname" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LFname" runat="server" Text="FATHER'S NAME" CssClass="form-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVFname" runat="server" ErrorMessage="Field Can't be Empty" ControlToValidate="TBFname" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBFname" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:Label ID="LPhone" runat="server" CssClass="form-label" Text="PHONE NUMBER"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red" ControlToValidate="TBPhone"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBPhone" runat="server" CssClass="form-input" TextMode="Phone"></asp:TextBox>
                    <asp:Label ID="LEmail" runat="server" CssClass="form-label" Text="EMAIL"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="Field Can't be Empty" ControlToValidate="TBEmail" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBEmail" runat="server" CssClass="form-input" TextMode="Email"></asp:TextBox>
                    <asp:Label ID="LGender" runat="server" CssClass="form-label" Text="GENDER"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVGender" runat="server" ControlToValidate="RBGender" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RadioButtonList ID="RBGender" runat="server" CssClass="auto-style6" Font-Size="Small" Height="83px" Width="430px">
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="LDob" runat="server" CssClass="form-label " Text="DATE OF BIRTH"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVDob" runat="server" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red" ControlToValidate="TBDob"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBDob" runat="server" CssClass="form-input form-input-half" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:Label ID="LAddress" runat="server" CssClass="form-label" Text="ADDRESS"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red" ControlToValidate="TBAddress"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBAddress" runat="server" CssClass="auto-style8" Height="127px" TextMode="MultiLine" Width="486px"></asp:TextBox>
                    <asp:Label ID="LVillage" runat="server" CssClass="form-label" Text="VILLAGE"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBVillage" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:Label ID="LPost" runat="server" CssClass="form-label" Text="POST OFFICE"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBPO" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:Label ID="LPolice" runat="server" CssClass="form-label" Text="POLICE OFFICE"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBPS" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:Label ID="LDistrict" runat="server" CssClass="form-label" Text="DISTRICT"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVDistrict" runat="server" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red" ControlToValidate="TBDistrict"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBDistrict" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:Label ID="LState" runat="server" CssClass="form-label" Text="STATE"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVState" runat="server" ControlToValidate="DropDownState" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:DropDownList ID="DropDownState" runat="server" CssClass="form-input">
                        <asp:ListItem>BIHAR</asp:ListItem>
                        <asp:ListItem>JHARKHAND</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="LPincode" runat="server" CssClass="form-label " Text="PIN CODE"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVPin" runat="server" ControlToValidate="TBPincode" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBPincode" runat="server" CssClass="form-input form-input-half" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="AADHAR NUMBER" CssClass="form-label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFVAadhar" runat="server" ControlToValidate="TBAadhar" ErrorMessage="Field Can't be Empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TBAadhar" runat="server" CssClass="form-input" TextMode="Number"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BReset" runat="server" Height="40px" Text="RESET" Width="104px" CssClass="booknow" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BRegSubmit" runat="server" Height="40px" Text="SUBMIT" Width="104px" CssClass="booknow" OnClick="BSubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BCancel" runat="server" Height="40px" Text="CANCEL" Width="104px" CssClass="booknow" />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>