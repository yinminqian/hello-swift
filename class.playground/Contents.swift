class Baby{
    var name:String;
    var age:Int;
    func sleep(data:String) -> Void {
        print("我要睡觉啦 \(data)")
    }
    init() {
        name = "";
        age = 1;
        print("我是 \(name)")
    }
    init(name:String) {
        self.name = name;
        print("我的名字是 \(self.name)")
        age = 1;
    }
}
let whh = Baby();
Baby(name: "王花花");

