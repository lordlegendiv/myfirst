<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link href="font&icon" rel="stylesheet"/>
  <link href="materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    
    <title>Atmosphaera | Home</title>
</head>
<body>
    <header>
        <nav>
    <div class="nav-wrapper indigo darken-2">
      <a href="#!" class="brand-logo atmo-face">Atmosphaera</a>
      
    </div>
  </nav>
    </header>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
    </div>
    </form>
</body>
</html>
