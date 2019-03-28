//
//  ViewController.swift
//  HelloUIView
//
//  Created by 尹敏乾 on 2019/3/28.
//  Copyright © 2019 尹敏乾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rect: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设定颜色和透明度
        rect.backgroundColor = UIColor.green;
        rect.alpha = 0.5;
        //设定是否隐藏
        rect.isHidden = false;
        
        //设定页面全局背景颜色
        view.backgroundColor = UIColor(red: 1, green:0, blue: 0, alpha: 1);
        
        //根据tag编号设置view的背景颜色
        //?的意思  类似于三元运算符 r如果存在这个值,执行后面语句,反之不执行
        view.viewWithTag(101)?.backgroundColor = UIColor.green;
        // Do any additional setup after loading the view.
        
        //生成一个view
        
        //x,y坐标根据加入的父级进行定位
        let viewArea = CGRect(x: 50, y: 400, width: 100, height: 50);
        let smallRect = UIView(frame: viewArea);
        smallRect.backgroundColor=UIColor.yellow;
        //添加到父级视图
        view.addSubview(smallRect);
    }


}

