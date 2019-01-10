using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapman.Pages
{
    public partial class Week2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //Sets the form completion to invisible if page isn't PostBack
                memberFormComplete.Visible = false;
                memberFormCompleteHeader.Visible = false;

                //Adds the 50 states to states dropdownlist, creating a default --Please Select-- for validation
                memberState.Items.Add(new ListItem("--Please Select--", "0"));
                memberState.Items.Add("Alabama");
                memberState.Items.Add("Alaska");
                memberState.Items.Add("Arizona");
                memberState.Items.Add("Arkansas");
                memberState.Items.Add("California");
                memberState.Items.Add("Colorado");
                memberState.Items.Add("Connecticut");
                memberState.Items.Add("Delaware");
                memberState.Items.Add("Florida");
                memberState.Items.Add("Georgia");
                memberState.Items.Add("Hawaii");
                memberState.Items.Add("Idaho");
                memberState.Items.Add("Illinois");
                memberState.Items.Add("Indiana");
                memberState.Items.Add("Iowa");
                memberState.Items.Add("Kansas");
                memberState.Items.Add("Kentucky");
                memberState.Items.Add("Louisiana");
                memberState.Items.Add("Maine");
                memberState.Items.Add("Maryland");
                memberState.Items.Add("Massachusetts");
                memberState.Items.Add("Michigan");
                memberState.Items.Add("Minnesota");
                memberState.Items.Add("Mississippi");
                memberState.Items.Add("Missouri");
                memberState.Items.Add("Montana");
                memberState.Items.Add("Nebraska");
                memberState.Items.Add("Nevada");
                memberState.Items.Add("New Hampshire");
                memberState.Items.Add("New Jersey");
                memberState.Items.Add("New Mexico");
                memberState.Items.Add("New York");
                memberState.Items.Add("North Carolina");
                memberState.Items.Add("North Dakota");
                memberState.Items.Add("Ohio");
                memberState.Items.Add("Oklahoma");
                memberState.Items.Add("Oregon");
                memberState.Items.Add("Pennsylvania");
                memberState.Items.Add("Rhode Island");
                memberState.Items.Add("South Carolina");
                memberState.Items.Add("South Dakota");
                memberState.Items.Add("Tennessee");
                memberState.Items.Add("Texas");
                memberState.Items.Add("Utah");
                memberState.Items.Add("Vermont");
                memberState.Items.Add("Virginia");
                memberState.Items.Add("Washington");
                memberState.Items.Add("West Virginia");
                memberState.Items.Add("Wisconsin");
                memberState.Items.Add("Wyoming");

                //Adds age groups to dropdownlist, with --Please Select-- for validation
                memberAgeGroup.Items.Add(new ListItem("--Please Select--", "0"));
                memberAgeGroup.Items.Add("Child");
                memberAgeGroup.Items.Add("Teenager");
                memberAgeGroup.Items.Add("Adult");

                //Creates new ListItem for fill radio buttons
                ListItem item = new ListItem();

                //Gender radio button options
                item.Text = "Male";
                memberGender.Items.Add(item);

                item = new ListItem();
                item.Text = "Female";
                memberGender.Items.Add(item);

                item = new ListItem();
                item.Text = "No Response";
                memberGender.Items.Add(item);

                //Media preference radio button options
                item = new ListItem();
                item.Text = "Audio";
                memberMediaPref.Items.Add(item);

                item = new ListItem();
                item.Text = "Hardcover";
                memberMediaPref.Items.Add(item);

                item = new ListItem();
                item.Text = "Paperback";
                memberMediaPref.Items.Add(item);

                //Adds genres to dropdownlist, creating a default --Please Select-- for validation
                memberFavGenre.Items.Add(new ListItem("--Please Select--", "0"));
                memberFavGenre.Items.Add("Fantasy");
                memberFavGenre.Items.Add("Adventure");
                memberFavGenre.Items.Add("Poetry");
                memberFavGenre.Items.Add("Mystery");
                memberFavGenre.Items.Add("Non-fiction");
                memberFavGenre.Items.Add("Fiction");
                memberFavGenre.Items.Add("Science Fiction");
               
                //Add credit card type radio button options
                item = new ListItem();
                item.Text = "American Express";
                memberCreditCardType.Items.Add(item);

                item = new ListItem();
                item.Text = "Discover Card";
                memberCreditCardType.Items.Add(item);

                item = new ListItem();
                item.Text = "Mastercard";
                memberCreditCardType.Items.Add(item);

                item = new ListItem();
                item.Text = "Visa";
                memberCreditCardType.Items.Add(item);

                item = new ListItem();
                item.Text = "Capital One";
                memberCreditCardType.Items.Add(item);

                //Adds Best Sellers to listbox
                memberFavBestSeller.Items.Add("Accidental Heroes - By Danielle Steel");
                memberFavBestSeller.Items.Add("The Punishment She Deserves - By Elizabeth George");
                memberFavBestSeller.Items.Add("Camino Island - By John Grisham");
                memberFavBestSeller.Items.Add("Ready Player One - By Ernest Cline");
                memberFavBestSeller.Items.Add("The Bishop's Pawn - Steve Berry");

            }
            else if(Page.IsPostBack)
            {
                //Makes for complete visible
                memberFormComplete.Visible = true;
                memberFormCompleteHeader.Visible = true;

                //Hides the orignal sent form
                memberForm.Visible = false;
                memberFormHeader.Visible = false;

                //Prints new members answers to screen for review
                userID.InnerText = memberUserName.Text + memberBirthdate.Text;
                name.InnerText = memberName.Text;
                streetAddress.InnerText = memberStreetAddress.Text;
                city.InnerText = memberCity.Text;
                state.InnerText =  memberState.Text;
                zipCode.InnerText = memberZip.Text;
                DOB.InnerText = memberBirthdate.Text;
                phoneNumber.InnerText = memberPhoneNumber.Text;
                email.InnerText = memberEmail.Text;
                username.InnerText = memberUserName.Text;
                password.InnerText = memberPassword.Text;
                age.InnerText = memberAgeGroup.Text;
                gender.InnerText = memberGender.Text;
                media.InnerText = memberMediaPref.Text;
                
                foreach(ListItem item in memberFavBestSeller.Items)
                {
                    if(item.Selected)
                    {
                        bestSeller.InnerText += item.Text;
                    }
                }
                genre.InnerText = "Favorite Genre: " + memberFavGenre.Text;
                cCNumber.InnerText = "Credit Card Number: " + memberCardNumber.Text;
                cCType.InnerText = "Credit Card Type: " + memberCreditCardType.Text;
                cCExpDate.InnerText = "Credit Card Expiration Date: " + memberCreditCardExpire.Text;
                cVCode.InnerText = "Credit Card CV Code: " + memberCreditCardCV.Text;
                info.InnerText = "A little about yourself: " + memberComment.Text;
            }
        }

        protected void submitMemberForm_Click(object sender, EventArgs e)
        {
            //Checks to make sure the form is free of errors
            if (!Page.IsValid) return;
        }
    }
}