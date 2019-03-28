//子类别
class Baby{
    var name:String;
    var age:Int;
    func sleep() -> Void {
        print("我要睡觉啦");
    }
    init() {
        print("初始化了这个类");
        name = "123";
        age = 123;
    }
    
    //可以有多个init 根据调用的不同,会走不同的init;
    init(name:String) {
        self.name = name;
        age = 1;
    }
}




//继承了Baby类
class CuteBaby:Baby{
    //可以调用到父级的方法和变量
    func danceAndSing() -> Void {
        print("子类的方法")
    }
    
    override func sleep() {
        print("我会覆盖父类的方法");
        //使用super关键字执行的父类的方法
        super.sleep();
    }
    
    
    //覆盖父类的init方法
    //1 初始化子类也就是本类的属性
    //2 执行父类的init方法
    //3 设定父类的属性
    override init() {
        //如果要覆盖父类的init 必须先执行父类的init方法 父类的变量也会相应进行声明
        super.init();
    }
}




let whh = Baby(name:"456");
whh.sleep();


let lsd = CuteBaby();


