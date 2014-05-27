  function showMenu(id){
    obj=document.getElementById("leftMenu_"+id);
    for(i=1;i<=7;i++){
	  document.getElementById("leftMenu_"+i).style.display="none";
	}
	obj.style.display="block";
  }
