//
//  ViewController.swift
//  colorFinder
//
//  Created by 尹敏乾 on 2019/4/3.
//  Copyright © 2019 尹敏乾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var redValue = 255;
    var greenValue = 255;
    var blueValue =   255;
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBAction func blueSlider(_ sender: UISlider) {
        blueLabel.text = "B:\(Int(sender.value))"
        blueValue = Int(sender.value);
        saveViewBgc();
    }
    
    
    @IBAction func redSlider(_ sender: UISlider) {
        redLabel.text = "R:\(Int( sender.value))"
        redValue = Int(sender.value)
        saveViewBgc();
    }
    
    
    
    @IBAction func greenSlider(_ sender: UISlider) {
        greenLabel.text = "G:\(Int(sender.value))"
        greenValue = Int(sender.value)
        saveViewBgc();
    }
    
    func saveViewBgc() -> Void {
        self.view.backgroundColor = UIColor(red: CGFloat(redValue) / 255, green: CGFloat(greenValue) / 255, blue: CGFloat(blueValue) / 255, alpha: 1)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

