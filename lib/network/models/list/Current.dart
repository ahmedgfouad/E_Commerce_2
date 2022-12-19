
class Current{
  late double value ;
  late String text ;

  Current({
  required this. value ,
  required this. text ,
});

  Current.fromMap(Map<String,dynamic>map){
   this.value=map["value"];
   this.text=map["text"];
  }
  Map<String,dynamic>toMap(){
    Map<String,dynamic>map={
     'value' :this.value ,
     'text' :this.text ,
    };
    return map;
  }
}