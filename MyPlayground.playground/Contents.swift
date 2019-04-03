class Person {
    var firstName:String;
    var lastName:String;
    var fullName:String;
    init() {
        firstName = "whh";
        lastName = "lsd";
        fullName = "背背🌹"
        print("类生成生命周期")
    }
    
    deinit {
        print("类销毁生命周期");
    }
}



var  Person1:Person? = Person();
var  Person2:Person?=Person1;



//类会共用一个内存
Person1?.lastName = "背背山";
Person1?.lastName;
Person2?.lastName;

Person1 = nil;
Person2 = nil;



//数值不会共用一块内存

var number1 = 1;
var number2 = number1;


number1 = 10;
number1;
number2;


