//
//  ViewController.swift
//  helloUiSwitch
//
//  Created by 尹敏乾 on 2019/4/3.
//  Copyright © 2019 尹敏乾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBAction func makeAChange(_ sender: UISwitch) {
                if sender.isOn == true {
                    labelSwitch.text = "开";
                    view.backgroundColor = .white;
                }else{
                    
                    labelSwitch.text = "关"
                    view.backgroundColor = .black;
                }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch.isOn = false;
        makeAChange(mySwitch);
        // Do any additional setup after loading the view.
        
        createSwitch();
    
    }
    
    func createSwitch() -> Void {
        let codeSwitch = UISwitch(frame:CGRect(x: view.frame.midX - 52 / 2, y: view.frame.maxY - 50, width: 52, height: 21))
        self.view.addSubview(codeSwitch);
        
        codeSwitch.isOn = false;
        
        //增加事件  self action for什么时候触发
        codeSwitch.addTarget(self, action: #selector(makeAChange(_:)), for: .valueChanged);
        
    }

    @IBOutlet weak var labelSwitch: UILabel!


}

