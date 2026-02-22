void main()
{
  print(stringTest('hello','Hello')); 
}

bool stringTest(String x,String y)
{
  //bool t=true;
  //bool f=false;
  x =x.toLowerCase();
  y=y.toLowerCase();
  if(x==y)
  {
    return true;
  }
  else
  {
    return false;
  }
  
  
}