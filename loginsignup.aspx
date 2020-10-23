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
                    <asp:TextBox ID="TPassword" runat="server" CssClass="form-input"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" CssClass="booknow" Height="40px" Text="LOGIN" Width="104px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small">Forgot OPD ID?</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small">Create Account</asp:LinkButton>
                    <br />
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelRegister" runat="server">
                <div style="padding: 50px 50px 50px 50px">
                    <asp:Label ID="LName" runat="server" Text="PATIENT NAME" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="Tname" type="text" class="form-input"/>
                    
                    <asp:Label ID="LFname" runat="server" Text="FATHER'S NAME" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="Tfname" type="text" class="form-input"/>
                    
                    <asp:Label ID="LPhone" runat="server" Text="PHONE NUMBER" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TPhone" type="text" class="form-input"/>
                    
                    <asp:Label ID="LEmail" runat="server" Text="EMAIL" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TEmail" type="text" class="form-input email-input"/>
                    
                    <asp:Label ID="LGender" runat="server" Text="GENDER" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="RBGender" runat="server" Height="83px" Width="430px" CssClass="auto-style6" Font-Size="Small">
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                    
                    <asp:Label ID="LDob" runat="server" Text="DATE OF BIRTH" CssClass="form-label "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LAge" runat="server" CssClass="form-label" Text="AGE : "></asp:Label>
                    <asp:Label ID="LDispAge" runat="server" Text="Label" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TDob" type="text" class="form-input form-input-half"/>&nbsp;&nbsp;<br /> <br />
                    
                    <asp:Label ID="LAddress" runat="server" Text="ADDRESS" CssClass="form-label"></asp:Label>
                    <br />
                    <textarea id="TextArea1" cols="20" rows="7" class="form-input" style="resize:none; width:100%   ; height:100px;"></textarea>

                    <asp:Label ID="LVillage" runat="server" Text="VILLAGE" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TVillage" type="text" class="form-input"/>

                    <asp:Label ID="LPost" runat="server" Text="POST OFFICE" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TPost" type="text" class="form-input"/>

                    <asp:Label ID="LPolice" runat="server" Text="POLICE OFFICE" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TPolice" type="text" class="form-input" />

                    <asp:Label ID="LDistrict" runat="server" Text="DISTRICT" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TDistrict" type="text" class="form-input"/>

                    <asp:Label ID="LState" runat="server" Text="STATE" CssClass="form-label"></asp:Label>
                    <br />
                    <select id="Select1" class ="form-input">
                        <option>BIHAR</option>
                        <option>JHARKHAND</option>
                    </select>

                    <asp:Label ID="LPincode" runat="server" Text="PIN CODE" CssClass="form-label "></asp:Label>
                    <br />
                    <input id="TPin" type="text" class="form-input form-input-half"/>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="AADHAR NUMBER" CssClass="form-label"></asp:Label>
                    <br />
                    <input id="TAadhar" type="text" class="form-input"/>
                    <br />
                    <br />
                    <asp:Button ID="BReset" runat="server" Height="40px" Text="RESET" Width="104px" CssClass="booknow" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BSubmit" runat="server" Height="40px" Text="SUBMIT" Width="104px" CssClass="booknow" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BCancel" runat="server" Height="40px" Text="CANCEL" Width="104px" CssClass="booknow" />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>