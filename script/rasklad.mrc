alias F12 {
  if (%text == rus) {
    editbox -a $replacecs($editbox($active),.,/,�,$chr(44),�,q,�,w,�,e,�,r,�,t,�,y,�,u,�,i,�,o,�,p,�,[,�,],�,a,�,s,�,d,�,f,�,g,�,h,�,j,�,k,�,l,�,;,�,',�,z,�,x,�,c,�,v,�,b,�,n,�,m,�,.,�,Q,�,W,�,E,�,R,�,T,�,Y,�,U,�,I,�,O,�,P,�,A,�,S,�,D,�,F,�,G,�,H,�,J,�,K,�,L,�,:,�,",�,Z,�,X,�,C,�,V,�,B,�,N,�,M,�,<,�,>,?,&,:,^,�,`,;,$,@,",#,�) | .dll dll/raskladka.dll ras_eng 
    .set %text eng | halt
  }

  if (%text == eng) {
    editbox -a $replacecs($editbox($active),.,�,$chr(44),�,q,�,w,�,e,�,r,�,t,�,y,�,u,�,i,�,o,�,p,�,[,�,],�,a,�,s,�,d,�,f,�,g,�,h,�,j,�,k,�,l,�,;,�,',�,z,�,x,�,c,�,v,�,b,�,n,�,m,�,.,�,Q,�,W,�,E,�,R,�,T,�,Y,�,U,�,I,�,O,�,P,�,[,�,A,�,S,�,D,�,F,�,G,�,H,�,J,�,K,�,L,�,:,�,",�,Z,�,X,�,C,�,V,�,B,�,N,�,<,�,>,�,&,?,^,:,/,.,`,�,$,;,",@,�,#) | .dll dll/raskladka.dll ras_rus
    .set %text rus | halt
  }
}
