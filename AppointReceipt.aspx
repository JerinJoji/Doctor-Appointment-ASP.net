﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointReceipt.aspx.cs" Inherits="ProjectDesignDemo.AppointReceipt" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding:50px 14% 30px 15%;">

            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="464px" Width="66%">
            </rsweb:ReportViewer>

        </div>
    </form>
</body>
</html>
