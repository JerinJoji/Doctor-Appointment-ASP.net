<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="ProjectDesignDemo.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment Receipt</title>
    <script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {

            html2canvas(document.getElementById('receipt'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Receipt.pdf");
                    alert("Downloading Started");
                }
            });
        }
        function btnExport_onclick() {

        }
    </script>
    <style>
        td{
            padding:10px 0;
            border:1px solid;
            border-collapse:collapse;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding:50px 14% 30px 15%;">
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid">
                <div style="padding:50px 14% 30px 15%;">
                    
                    <table style="width: 100%;" id="receipt">
                        <tr>
                                <td colspan="2">
                                    <center>
                                        <p style="font-size:40px">HOSPITAL</p>
                                        <p style="font-size:larger">Address - 8000XX</p>
                                    </center>
                                </td>
                        </tr>
                        
                        <tr>
                            <td style="width:50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Record ID" Font-Size="Large"></asp:Label></td>
                            <td style="width:50%">&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecord" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                        </tr>
                        
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="OPD No."></asp:Label></td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecord0" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                            
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Patient Name"></asp:Label>
                    </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecord1" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Appointed Doctor"></asp:Label>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecord2" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Department"></asp:Label>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRecord3" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Appointed Date"></asp:Label>
                    </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblRecord4" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Status"></asp:Label>
                    </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblRecord5" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr>
                                <td colspan="2" style="padding-top:30px">
                                    <center>
                                        Approved By: Hospital<br />
                                    </center>
                                </td>
                        </tr>
                    </table>
                    
                </div>
                <input id="Button1" type="button" value="Download" onclick="Export()" onclick="return btnExport_onclick()" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
