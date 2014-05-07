
function getPersonalInfo()
{
	var username = document.input.username.value;
	var firstName = document.input.firstname.value;
	var lastName = document.input.lastname.value;
	var pass = document.input.password.value;
	var pass2 = document.input.confirmpassword.value;
	var cell = document.input.cell.value;
	var email = document.input.email.value;
	var email2 = document.input.confirmemail.value;

	if (firstName === "" || lastName === "") {
		alert("Please fill out all the required fields for Personal Info")
	} else {
		alert("Instaride Signup Successfull!")
	}
}

function getAddrInfo()
{
	var street1 = document.input.street1.value;
	var street2 = document.input.street2.value;
	var city = document.input.city.value;
	var state = document.input.state.value;
	var zip = document.input.zip.value;
}

function getdlInfo()
{
	var dlnum = document.input.dlnum.value;
	var dlstate = document.input.dlstate.value;
	var dob = document.input.dob.value;
	var dlexpdate = document.input.dlexpdate.value;
}

function getccInfo() 
{
	var cardname = document.input.ccname.value;
	var cardnum = document.input.ccnum.value;
	var ccexpdate = document.input.expdate.value;
	var ccv2 = document.input.ccv2.value;
	var ccstreet1 = document.input.billstreet1.value;
	var ccstreet2 = document.input.billstreet2.value;
	var billcity = document.input.billcity.value;
	var ccstate = document.input.billstate.value;
	var cczip = document.input.billzip.value;
}

function contact()
{
	var c_name = document.input.contactname.value;
	var c_cell = document.input.contactphone.value;
	var c_email = document.input.contactemail.value;
	var comments = document.input.comments.value;

	alert("Contact information successfully sent!")
	}
}

function login()
{
	var login_username = document.input.Username.value;
	var login_pass = document.input.password.value;

	if (login_username === "" || login_pass === "") {
		alert("Please enter full username and password")
	} else {
		alert("Logging in to account")
	}
}
