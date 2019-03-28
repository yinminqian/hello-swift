class Person{
    var firstName:String;
    var fullName:String;
    var lastName:String;
    init() {
        firstName = "whh";
        lastName = "whh";
        fullName = firstName + lastName;
    }
    deinit {
        //销毁时运行的函数
    }
}





//whh1 和 whh2 都会指向同一块内存,共用一个内存
var whh1:Person? = Person();
var whh2:Person? = whh1;





//变量不会共用一个内存
var number1 = 1;
var number2 = number1;
number1

number1 = 10;
number2;
