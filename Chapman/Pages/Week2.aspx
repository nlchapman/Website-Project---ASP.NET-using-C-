<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Week2.aspx.cs" Inherits="Chapman.Pages.Week2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Membership Sign-up Page</title>
</head>
<body style="background-color:powderblue">
    <h1><b>Membership Sign-up Page</b></h1>
    <h3 id="memberFormHeader" runat="server">Please fill in all information</h3>
    <h3 id="memberFormCompleteHeader" runat="server">Member Registration Complete!</h3>
    <!--Registration form with validations-->
    <form style="background-color:aliceblue" id="memberForm" runat="server">
        <div>
            </div>
                <asp:ValidationSummary ID="formErrors" runat="server" ForeColor="Red" />
            <div>
            Name:<br />
            <asp:TextBox ID="memberName" runat="server"/>
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberName"
                ErrorMessage="A name is required.">
            </asp:RequiredFieldValidator>
            <br /><br />
            Street Address:<br />
            <asp:TextBox ID="memberStreetAddress" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red" TextColor="Red"
                ControlToValidate="memberStreetAddress"
                ErrorMessage="A street address is required.">
            </asp:RequiredFieldValidator>
            <br /><br />
            City:<br />
            <asp:TextBox ID="memberCity" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCity"
                ErrorMessage="A city is required.">
            </asp:RequiredFieldValidator>
            <br /><br />
            State:
            <asp:RequiredFieldValidator runat="server" InitialValue="0"
                Text="*" ForeColor="Red"
                ControlToValidate="memberState"
                ErrorMessage="A state is required.">
            </asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="memberState" runat="server" />
            <br /><br />
            Zip Code:<br />
            <asp:TextBox ID="memberZip" runat="server" TextMode="Number"/>
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberZip"
                ErrorMessage="A valid US zip code is required"
                >
            </asp:RequiredFieldValidator>
            <br /><br />
            Date of Birth:<br />
            <asp:TextBox ID="memberBirthdate" runat="server" TextMode="Date"/>
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberBirthdate"
                ErrorMessage="You need to enter in your birthdate."
                >
            </asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberBirthdate"
                MinimumValue="01/01/1900" MaximumValue="01/01/9999" Type="Date"
                ErrorMessage="Must be a valid birthdate before 01/01/1900"
                >
            </asp:RangeValidator>
            <br /><br />
            Phone Number:<br />
            <asp:TextBox ID="memberPhoneNumber" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberPhoneNumber"
                ErrorMessage="You need to enter a phone number."
                >
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberPhoneNumber"
                ValidationExpression="\d{10}"
                ErrorMessage="You need a valid phone number."
                >
            </asp:RegularExpressionValidator>
            <br /><br />
            E-mail Address:<br />
            <asp:TextBox ID="memberEmail" runat="server" />
                <asp:RequiredFieldValidator runat="server"
                    Text="*" ForeColor="Red"
                    ControlToValidate="memberEmail"
                    ErrorMessage="You need to enter in an E-mail."
                    >
                </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberEmail"
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ErrorMessage="You need to enter a valid email address."
                >
            </asp:RegularExpressionValidator>
            <br /><br />
            Username:<br />
            <asp:TextBox ID="memberUserName" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberUserName"
                ErrorMessage="A username is required.">
            </asp:RequiredFieldValidator>
            <br /><br />
            Password:<br />
            <asp:TextBox ID="memberPassword" Textmode="Password" runat="server"/>
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberPassword"
                ErrorMessage="You need to enter in a password."
                >
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberPassword"
                ValidationExpression="^.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$"
                ErrorMessage="You need a valid password."
                >
            </asp:RegularExpressionValidator>
            <br /><br />
            Age Group:
            <asp:RequiredFieldValidator runat="server" InitialValue="0"
                Text="*" ForeColor="Red"
                ControlToValidate="memberAgeGroup"
                ErrorMessage="An age group is required.">
            </asp:RequiredFieldValidator>    
            <br />
            <asp:DropDownList ID="memberAgeGroup" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberAgeGroup"
                ErrorMessage="A age group is required.">
            </asp:RequiredFieldValidator>
            <br /><br />
            Gender:            
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberGender"
                ErrorMessage="A gender selection is required.">
            </asp:RequiredFieldValidator><br />
            <asp:RadioButtonList ID="memberGender" runat="server" />
            <br /><br />
            Media Preference:
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberMediaPref"
                ErrorMessage="A media preference is required.">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RadioButtonList ID="memberMediaPref" runat="server" />
            <br /><br />
            Favorite New York Times Best Sellers:
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberFavBestSeller"
                ErrorMessage="At least one Best Seller selection is required.">
            </asp:RequiredFieldValidator>
            <br />
            <asp:ListBox ID="memberFavBestSeller" runat="server" SelectionMode="Multiple" />
            <br /><br />
            Favorite Genre:
            <asp:RequiredFieldValidator runat="server" InitialValue="0"
                Text="*" ForeColor="Red"
                ControlToValidate="memberFavGenre"
                ErrorMessage="A favorite genre is required.">
            </asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="memberFavGenre" runat="server" />
            <br /><br />
            <b>Credit Card Information</b><br /><br />
            Card Number:<br />
            <asp:TextBox ID="memberCardNumber" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCardNumber"
                ErrorMessage="You need to enter a credit card number."
                >
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCardNumber"
                ValidationExpression="\d{16}"
                ErrorMessage="You need a valid credit card number."
                >
            </asp:RegularExpressionValidator>
            <br /><br />
            Type:
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCreditCardType"
                ErrorMessage="A credit card type is required.">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RadioButtonList ID="memberCreditCardType" runat="server" />
            <br /><br />
            Expiration Date:<br />
            <asp:TextBox ID="memberCreditCardExpire" runat="server" TextMode="Date" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCreditCardExpire"
                ErrorMessage="You need to enter an expiration date."
                >
            </asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCreditCardExpire"
                InitialValue="00/00/0000"
                MinimumValue="01/01/1900" MaximumValue="01/01/9999" Type="Date"
                ErrorMessage="Must be a valid expiration date."
                >
            </asp:RangeValidator>
            <br /><br />
            CV Code:<br />
            <asp:TextBox ID="memberCreditCardCV" runat="server" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCreditCardCV"
                ErrorMessage="You need to enter a CV Code"
                >
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberCreditCardCV"
                ValidationExpression="\d{3}"
                ErrorMessage="You need a valid CV credit card code"
                >
            </asp:RegularExpressionValidator>
            <br /><br />
            About Yourself:<br />
            <asp:TextBox ID="memberComment" runat="server" TextMode="MultiLine" />
            <asp:RequiredFieldValidator runat="server"
                Text="*" ForeColor="Red"
                ControlToValidate="memberGender"
                ErrorMessage="Be sure to tell us a litte about yourself.">
            </asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="submitMemberForm" runat="server" Text="Register!" OnClick="submitMemberForm_Click"/>
        </div>
    </form>
    <!--Form for completed registration form-->
    <form style="background-color:ghostwhite" id="memberFormComplete" runat="server">
        <div>
            <p>Thank you for becoming a member!<br />Please find below the answers you provided us for you membership<br />Have a great day!</p>
            <br />
            <b>User ID: </b>
            <label id="userID" runat="server"></label>
            <br /><br />
            <b>Name:</b><br />
            <label id="name" runat="server"></label><br /><br />
            <b>Street Address:</b><br />
            <label id="streetAddress" runat="server"></label><br /><br />
            <b>City:</b><br />
            <label id="city" runat="server"></label><br /><br />
            <b>State:</b><br />
            <label id="state" runat="server"></label><br /><br />
            <b>Zipcode:</b><br />
            <label id="zipCode" runat="server"></label><br /><br />
            <b>Date of Birth:</b><br />
            <label id="DOB" runat="server"></label><br /><br />
            <b>Phone Number:</b><br />
            <label id="phoneNumber" runat="server"></label><br /><br />
            <b>E-mail:</b><br />
            <label id="email" runat="server"></label><br /><br />
            <b>Username:</b><br />
            <label id="username" runat="server"></label><br /><br />
            <b>Password:</b><br />
            <label id="password" runat="server"></label><br /><br />
            <b>Age Group:</b><br />
            <label id="age" runat="server"></label><br /><br />
            <b>Gender:</b><br />
            <label id="gender" runat="server"></label><br /><br />
            <b>Media Preference:</b><br />
            <label id="media" runat="server"></label><br /><br />
            <b>Favorite New York Time's Best Sellers:</b><br />
            <label id="bestSeller" runat="server"></label><br /><br />
            <b>Favorite Genre:</b><br />
            <label id="genre" runat="server"></label><br /><br />
            <b>Credit Card Number:</b><br />
            <label id="cCNumber" runat="server"></label><br /><br />
            <b>Credit Card Type:</b><br />
            <label id="cCType" runat="server"></label><br /><br />
            <b>Credit Card Expiration Date:</b><br />
            <label id="cCExpDate" runat="server"></label><br /><br />
            <b>Credit Card CV Code</b><br />
            <label id="cVCode" runat="server"></label><br /><br />
            <b>A little about yourself: </b><br />
            <label id="info" runat="server"></label><br /><br />
        </div>
    </form>
</body>
</html>
