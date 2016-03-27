<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bulletin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Atmosphaera | Login</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link href="font&icon" rel="stylesheet"/>
  <link href="materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body id="body" runat="server" style="background-image:url(4.png);background-attachment:fixed; width:100%; height:100%;background-repeat:no-repeat">
 <form class="col s12" id="fomr1" runat="server">
<header>
    
   <nav>
    <div class="nav-wrapper indigo darken-2">
      <a href="#!" class="brand-logo atmo-face">Atmosphaera</a>
      <ul class="right hide-on-med-and-down">
          <li><a href="Register.aspx">Register</a></li>
          <li><a href="#!" class="actlink">Login</a></li>

      </ul>
    </div>
  </nav>
  </header>
 <br/><br/><br/><br/><br/>
 
  <div class="container">
  <div class="row">
        <div class="col s6 offset-s3">
          <div class="card grey lighten-4 z-depth-5">
            <div class="card-content black-text">
              <p class="card-title light-blue-text darken-3" style="text-align:center;padding-right:35px;"><b>Login</b></p>
              
                <div class="row">
   
      
      
      <div class="row">
        <div class="input-field col s12">
            <asp:TextBox id="uname" runat="server" placeholder="Enrollment No."/>
        </div>
        </div>
    
      <div class="row">
        <div class="input-field col s12">
            <asp:TextBox id="pword" runat="server" placeholder="Password" TextMode="Password"/>
        </div>
        </div>
        
       
      <div class="row">
      <div class="col s2 offset-s4">
       <asp:Button OnClick="Button1_Click" class="btn waves-effect waves-light light-blue lighten-1" id="Button1" runat="server" Text="Login"/>

    </div>
  </div>
  
<!-- <div class="row">
  <div class="col s12 offset-s1">
  <div class="card-action">
     
                </div>
            </div>
      </div>
           -->
<%--</div>--%>

    
  </div>
            </div>
           </div>
          </div>
        </div>
      </div>
 
    </form>

    <script src="min.js"></script>
  <script src="materialize.js"></script>
<script src="init.js"></script>
    
    <script type="text/javascript" src="materialize.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

</body>
</html>
