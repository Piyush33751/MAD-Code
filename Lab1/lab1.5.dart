void main()
{
  Art c1= new Art(name:'Vincent Van Goh',medium:'Oil on canvas',year:1889);
  c1.printinfo();
}
class Art{
  String? title;
  String? name;
  String? medium;
  int? year;
  Art({this.title,this.name,this.medium,this.year});
  void printinfo()
  {
    print('The art piece is ${title ?? 'unknown'}');
    print('The artist is ${name ?? 'unknown'}');
    print('The year is ${year ?? 'unknown'}');
    print('The medium used is ${medium ?? 'unknown'}');
  }
}