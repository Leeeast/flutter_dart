/// 类及接口
/// 

main(List<String> args) {
  var mall = Mall('zeno',20,'hu nan');
  mall.sayHi();

  print(mall.nickname);
  mall.showNickname();

  var cl1 = HttpClient();
  var cl2 =HttpClient();
  print(identical(cl1,cl2));

  var req = Request('http://www.baidu.com','post');
  req.showInfo();

  var httpReq = HttpRequest('http://www.dongnaoedu.com',method: 'post',params: {'header':'token'});
  httpReq.showInfo();

}

/// 定义接口
abstract class Animal {
  void sayHi();
}

abstract class Person implements Animal {
  String name;
  int age;
  String address;

  
  Person(this.name,this.age,this.address);
}

abstract class Buy {
  void buyProduct();
}

class PersonInfo {
  String nickname = 'zeno';
  void showNickname() {
    print('show nickname $nickname');
  }
}
/// 继承，mixin
class Mall extends Person with Buy, PersonInfo{

  Mall(String name, int age, String address) : super(name, age, address);
  
  @override
  void sayHi(){
    print('my name is $name, age is $age, now address $address');
  }

  @override
  void buyProduct() {
    print('buy product');
  }
}


/// 单例
/// 
class HttpClient {
  
  static final HttpClient _client =HttpClient._internal();

  HttpClient._internal(){

  }
  factory HttpClient(){
    return _client;
  }
}

/// 可选类型
class Request {
  
  String method;
  String url;
  Map<String,dynamic> params;

  Request(this.url,[this.method='get',this.params]) {
    this.params = {};
  }

  void showInfo() {
    print('method $method --> url = $url --> params = $params');
  }
}

class HttpRequest {
  String method;
  String url;
  Map<String,dynamic> params;

  HttpRequest(this.url,{this.method,this.params}){}
  void showInfo() {
    print('method $method --> url = $url --> params = $params');
  }
}