function ark=odeg(ark,or,i,j,k)
 if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+1,j+1)<or(i,j) )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;
 end    
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+2,j+1)<or(i+1,j) )
     ark(k)=0;k=k+1;
  else   
     ark(k)=1;k=k+1;
  end   
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+3,j+1)<or(i+2,j)  )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;
  end    
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+3,j+2)<or(i+2,j+1)  )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;
  end    
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+3,j+3)<or(i+2,j+2)   )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;
  end    
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+2,j+3)<or(i+1,j+2)  )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;
  end    
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+1,j+3)<or(i,j+2)  )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;
  end    
  if (or(i+2,j+2)<or(i+1,j+1)) && (or(i+1,j+2)<or(i,j+1)  )
     ark(k)=0;k=k+1;
 else
     ark(k)=1;k=k+1;    
  end