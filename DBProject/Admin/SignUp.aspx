<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DBProject.SignUp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="LoginAssets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/css/util.css">
	<link rel="stylesheet" type="text/css" href="LoginAssets/css/main.css">
</head>
<body>
   
        <script type="text/javascript">


     //----------------------Function1-----------------------------//
     function validateEmail(Email)
     {
         if (Email == "") {
             alert("Email missing. Enter Email.");
             return false;
         }

         else if (Email.indexOf("@") == -1 || Email.indexOf(".com") == -1) {
             alert("Your email address seems incorrect. Please enter a new one.");
             return false;
         }

         else {
             var location = Email.indexOf("@");

             if (Email[0] == '@' || Email[location + 1] == '.') {
                 alert("Your email address seems incorrect. Please enter a new one.");
                 return false;
             }

             var emailPat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
             var EmailmatchArray = Email.match(emailPat);

             if (EmailmatchArray == null) {
                 alert("Your email address seems incorrect. Please enter a new one.");
                 return false;
             }
         }

         return true;
     }






     //----------------------Function2-----------------------------//
     function validateS() 
     {
         var Name      = document.getElementById('<%=sName.ClientID %>').value;
         var Bdate     = document.getElementById('<%=sBirthDate.ClientID %>').value;
         var Email     = document.getElementById('<%=sEmail.ClientID %>').value;
         var phone     = document.getElementById('<%=Phone.ClientID %>').value;
         var pass      = document.getElementById('<%=sPassword.ClientID %>').value;
         var cpass     = document.getElementById('<%=scPassword.ClientID %>').value;
         
         /*now the validation code*/

         if (Name == "")
         {
             alert("Name missing. Enter Name.");
             return false;
         }


         var arrDbirth = Bdate.split("-");

         if (Bdate == "")
         {
             alert("Birth Date missing. Enter Birth Date.");
             return false;
         }

         else if ((Bdate == arrDbirth[0]) || (arrDbirth[0].length != 2) || arrDbirth[1].length != 2 || arrDbirth[2].length != 4 || !arrDbirth[0].match(/^[0-9]*$/) || !arrDbirth[1].match(/^[0-9]*$/) || !arrDbirth[2].match(/^[0-9]*$/) || Number(arrDbirth[0]) > 31 || Number(arrDbirth[1]) > 12)
         {
             alert("Birth Date Format Incorrect or out of Range.");
             return false;
         }


         if (!validateEmail(Email))
             return false;


         if (pass == "" || cpass == "")
         {
             alert("Password field is empty.");
             return false;
         }

         else if (pass != cpass)
         {
             alert("Passwords do not match.");
             return false;
         }
            

         if (phone.length != 11)
         {
             alert("Phone number should be of 11 digits.");
             return false;
         }


         if (Request.Form["Gender"] == null)
         {
             alert("Gender not selected.");
             return false;
         }
        
         return true;
     }
    </script>
	<form id="form1" runat="server">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/logo.jpg);">
					<span class="login100-form-title-1">
						Neema Dental Clinic
					</span>
                    <h4 class="login100-form-title-1">Sign Up</h4>
				</div>

				<div class="login100-form validate-form">
                    <div id="feedback" runat="server"></div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Name</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="sName" Placeholder="Please Enter Valid username" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Email</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="sEmail" Placeholder="Please Enter Valid Email" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Date of Birth</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="sBirthDate" Placeholder="Please Enter Date of Birth" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>
					 <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Password</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="sPassword" Placeholder="Please Enter Date of Birth" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Confirm Password</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="scPassword" Placeholder="Please Enter Date of Birth" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>     
                   <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Phone</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="Phone" Placeholder="Please Enter Date of Birth" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>
                     <div class="wrap-input100 validate-input m-b-26" data-validate = "Password is required">
						<span class="label-input100">Gender</span>
                         <input type="radio" name="Gender" value="M" id="test" checked="checked" />
                                  Male
                                 <input type="radio" name="Gender" value="F" />
                                  Female
						<span class="focus-input100"></span>
					</div>

                      <div class="wrap-input100 validate-input m-b-26" data-validate = "Phone number is required">
						<span class="label-input100">Address</span>
                         <asp:TextBox CssClass="input100" runat="server" ID="Address" Placeholder="Address" TextMode="multiline" Columns="40" Rows="10" runat="server" Height="75px" Width="410px" required Style="height: 42px;" />
						<span class="focus-input100"></span>
					</div>
					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="Login.aspx" class="txt1">
								Back to Login
							</a>
                            
						</div>
					</div>
					<div class="container-login100-form-btn">
                        <asp:Button runat="server" CssClass="login100-form-btn" ID="loginUserName" OnClientClick="return validateL();" Text="Sign Up" OnClick="signupV"/>
					</div>
				</div>
			</div>
		</div>

	<script src="LoginAssets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="LoginAssets/vendor/animsition/js/animsition.min.js"></script>
	<script src="LoginAssets/vendor/bootstrap/js/popper.js"></script>
	<script src="LoginAssets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="LoginAssets/vendor/select2/select2.min.js"></script>
	<script src="LoginAssets/vendor/daterangepicker/moment.min.js"></script>
	<script src="LoginAssets/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="LoginAssets/vendor/countdowntime/countdowntime.js"></script>
	<script src="LoginAssets/js/main.js"></script>
</form>
</body>
</html>