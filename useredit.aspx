<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useredit.aspx.cs" Inherits="ProjectDesignDemo.useredit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Account</title>
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
                        <h2><b>EDIT RECORD</b></h2>
                    </center>
                    <br />
                    <asp:Label ID="LName" runat="server" Text="PATIENT NAME" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBPname" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LFname" runat="server" Text="FATHER'S NAME" CssClass="form-label"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBFname" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LPhone" runat="server" CssClass="form-label" Text="PHONE NUMBER"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBPhone" runat="server" CssClass="form-input" TextMode="Phone"></asp:TextBox>

                    <asp:Label ID="LPassword" runat="server" CssClass="form-label" Text="PASSWORD"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBPASSWORD" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>

                    <asp:Label ID="LAddress" runat="server" CssClass="form-label" Text="ADDRESS"></asp:Label>
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
                    <br />
                    <asp:TextBox ID="TBDistrict" runat="server" CssClass="form-input"></asp:TextBox>

                    <asp:Label ID="LState" runat="server" CssClass="form-label" Text="STATE"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownState" runat="server" CssClass="form-input">
                        <asp:ListItem>BIHAR</asp:ListItem>
                        <asp:ListItem>JHARKHAND</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="LPincode" runat="server" CssClass="form-label " Text="PIN CODE"></asp:Label>
                    <br />
                    <asp:TextBox ID="TBPincode" runat="server" CssClass="form-input form-input-half" TextMode="Number"></asp:TextBox>

                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                    <center>
                        <asp:Button ID="BUpdate" runat="server" Height="40px" Text="UPDATE" Width="104px" CssClass="booknow" OnClick="BUpdate_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BCancel" runat="server" Height="40px" Text="CANCEL" Width="104px" CssClass="booknow" OnClick="BCancel_Click"/>
                    </center>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
