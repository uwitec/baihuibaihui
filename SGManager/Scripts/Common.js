function checkWord(a){ 
  fibdn = new Array ("@" ,"#", "$", "%", "&", "(",")","'"); 
  i=fibdn.length; 
  j=a.length; 
  for (ii=0;ii<i;ii++){
    for (jj=0;jj<j;jj++){
	  temp1=a.charAt(jj); 
	  temp2=fibdn[ii]; 
	  if (temp1==temp2){
	    return false;
	  }
	} 
  } 
  return true; 
} 

