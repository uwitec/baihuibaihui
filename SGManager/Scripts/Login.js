  function loginCheck(){
    UserName=thisForm.UserName.value;
	Password=thisForm.Password.value;
	
	if (UserName==""){
	  alert("�û�������Ϊ�գ�");
	  return;
	}
	else if(Password==""){
	  alert("���벻��Ϊ�գ�");
	  return;
	}
	else if(!checkWord(UserName)){
	  alert("�벻Ҫ���û���������Ƿ��ַ���");
	  return;
	}
	else {
	  thisForm.submit();
	}
  }
