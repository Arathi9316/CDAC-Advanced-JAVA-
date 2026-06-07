function validate(){
	if(document.regForm.txtName.value==""){
		alert("Please enter your name!!");
		return false;
	}
	if((document.regForm.txtPrn.value=="")||(document.regForm.txtPrn.value.length()>10)){
		alert("Please enter prn!!");
		return false;
	}
	if(document.regForm.txtPass.value==""){
		alert("Please enter password");
		return false;
	}
	if(document.regForm.txtEmail.value==""){
		alert("Please enter email id!!");
		return false;
	}
	
	if((document.regForm.txtGender[0].checked==false)&&(document.regForm.txtGender[1].checked==false)){
		alert("Select your gender!!");
		return false;
	}
	
	
	
}
