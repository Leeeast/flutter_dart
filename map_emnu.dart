import 'dart:convert';
/// map
///
///

main(List<String> args) {
  /// 定义map
  var map1 = <String,dynamic>{
    'name': 'zeno',
    'age': 20,
    'weight': 120
  };
  print(map1);
  var jsonStr = jsonEncode(map1);
  print(jsonStr);

  map1['address'] = 'hu nan chang sha';
  map1.forEach((key,val)=> print("$key : $val"));
  
}