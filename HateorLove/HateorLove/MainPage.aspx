<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HateorLove.MainPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Petkim Internship View Panel</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Amatic+SC">    
    <link href="style4.css" rel="stylesheet" type="text/css"/>     
           
</head>
<body>
    <!-- 1st row */ -->

<div class="square">
    <div class="content">
        <div class="table">
            <div class="table-cell">
                <asp:Image ID="photo" runat="server" BorderColor="Black" Height="244px" Width="217px" BorderStyle="Solid"/>                                
                <br />
                <br />                                
                ID:
                <asp:Label ID="id" runat="server" Text=""></asp:Label>                            
                <br />
                <br />
                 Name:
                <asp:Label ID="name" runat="server" Text=""></asp:Label>   
                &nbsp;&nbsp;&nbsp;   
                Surname:
                <asp:Label ID="surname" runat="server" Text=""></asp:Label>   
            </div>
        </div>
    </div>
</div>

<div class="square">
    <div class="content">
        <div class="table">
            <div class="table-cell">
                Identity Number:
                <asp:Label ID="identity" runat="server" Text=""></asp:Label>            
                <br />
                <br />
                Gender:
                <asp:Label ID="gender" runat="server" Text=""></asp:Label>            
                <br />
                <br />
                Place of Birth:
                <asp:Label ID="place" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                Date of Birth:
                <asp:Label ID="date" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                Nationality:           
                <asp:Label ID="nationality" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</div>
    <!-- 2nd row */ -->
<div class="square">
    <div class="content">
        <div class="table">
            <div class="table-cell">
                Mobile Phone Number:
                <asp:Label ID="mobile" runat="server" Text=""></asp:Label>            
                <br />
                <br />
                Email:
                <asp:Label ID="email" runat="server" Text=""></asp:Label>            
                <br />
                <br />
                City:
                <asp:Label ID="city" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                Town:
                <asp:Label ID="town" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                District:           
                <asp:Label ID="district" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</div>

<div class="square">
    <div class="content">
        <div class="table">
            <div class="table-cell">
                Length of the Internship:
                <asp:Label ID="length" runat="server" Text=""></asp:Label>            
                <br />
                <br />
                Start Date of the Internship:
                <asp:Label ID="start" runat="server" Text=""></asp:Label>            
                <br />
                <br />
                Done Internship Before in Petkim:
                <asp:Label ID="before" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                Internship Subject:
                <asp:Label ID="subject" runat="server" Text=""></asp:Label> 
                <br />
                <br />
                School Type:
                <asp:Label ID="school" runat="server" Text=""></asp:Label> 
            </div>
        </div>
    </div>
</div>

</body>
</html>