void main(){
var a =['Betty',30,50,'Allan'];
for(int x=0;x<4;x++)
{
  if(a[x].runtimeType==String)
  {
    print ("\"${a[x]}\" is a string");
  }
  else if(a[x].runtimeType==int) 
  {
    print ("\"${a[x]}\" is a int");
  }
}
  
}