  function loginCheck(){
    UserName=thisForm.UserName.value;
	Password=thisForm.Password.value;
	
	if (UserName==""){
	  alert("用户名不能为空！");
	  return;
	}
	else if(Password==""){
	  alert("密码不能为空！");
	  return;
	}
	else if(!checkWord(UserName)){
	  alert("请不要在用户名中输入非法字符！");
	  return;
	}
	else {
	  thisForm.submit();
	}
  }
