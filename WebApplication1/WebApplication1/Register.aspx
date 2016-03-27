<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bulletin.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Atmosphaera | Register</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link href="font&icon" rel="stylesheet"/>
  <link href="materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>

<body style="background-image:url(4.png);background-attachment:fixed; width:100%; height:100%;">
    <form id="form1" runat="server">
    <div>
     <header>
<nav>
    <div class="nav-wrapper indigo darken-2">
      <a href="#!" class="brand-logo atmo-face">Atmosphaera</a>
      <ul class="right hide-on-med-and-down">
          <li><a href="#!" class="actlink">Register</a></li>
          <li><a href="Login.aspx">Login</a></li>

      </ul>
    </div>
  </nav>
  </header>
 
  <div class="container">
  <div class="row">
        <div class="col s6 offset-s3">
          <div class="card grey lighten-4 z-depth-5">
            <div class="card-content black-text">
              <span class="card-title light-blue-text darken-3">Register</span>
              <div class="row">

      <div class="row">
        <div class="input-field col s12">
          <asp:TextBox id="name" placeholder="First Name" runat="server"/>

        </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="val1" runat="server" Display="Dynamic" ControlToValidate="name" ErrorMessage="First Name is Required" />
	</div>

       <div class="row">
           <div class="input-field col s12">
               <asp:TextBox id="surname" placeholder="Surname" runat="server"/>
           </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="surname" ErrorMessage="Surname is Required" />
	</div>

      <div class="row">
        <div class="input-field col s12">
          <asp:TextBox id="en_no" placeholder="Enrollment No." runat="server"  OnTextChanged="TextBox2_TextChanged" AutoPostBack="True"/>
        </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:RequiredFieldValidator ID="val2" runat="server" Display="Dynamic" ControlToValidate="en_no" ErrorMessage="Enrollment No. is Required" />
	<asp:Label ID="Label1" runat="server"></asp:Label>
	</div>
	
    
      <div class="row">
        <div class="input-field col s12">
         <asp:TextBox id="pword" placeholder="Password" runat="server" TextMode="Password"/>
        </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:RegularExpressionValidator ID="val3" ValidationExpression="^.{8}.*$" Display="Dynamic" runat="server" ErrorMessage="Password must be 8 characters long and should contain an uppercase alphabet and a number" ControlToValidate="pword" />
        </div>

         <div class="row">
        <div class="input-field col s12">
                 <asp:TextBox id="rpword" placeholder="Retype Password" runat="server" TextMode="Password"/>
        </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:CompareValidator ID="val4" runat="server" Display="Dynamic" ControlToValidate="rpword" ErrorMessage="Passwords do not match" ControlToCompare="pword" />
	</div>
        

   
      <div class="row">
        <div class="input-field col s12">
                 <asp:TextBox id="email" placeholder="Email" runat="server"/>
        </div>
  </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:RegularExpressionValidator ID="val5" runat="server" Display="Dynamic" ControlToValidate="email" ErrorMessage="Enter valid email address" ValidationExpression="\w+([­+.']\w+)*@\w+([­.]\w+)*\.\w+([­.]\w+)*" />
	</div>
      
     <div class="row">
        <div class="input-field col s12">
          <asp:TextBox id="sem" placeholder="Semester" runat="server"/>
        </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="sem" ErrorMessage="Semester is Required" />
	</div>

    <div class="row">
        <div class="input-field col s12">
          <asp:TextBox id="dept" placeholder="Department" runat="server"/>
        </div>
        </div>
	<div class="row">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="dept" ErrorMessage="Department is Required" />
	</div>

      <div class="row">
      <div class="col s2 offset-s4">
       <asp:Button class="btn waves-effect waves-light light-blue lighten-1" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" /></div>
          </div>
  </div>
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
