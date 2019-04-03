//
//  ViewController.swift
//  helloUiSegamentedControl
//
//  Created by 尹敏乾 on 2019/4/3.
//  Copyright © 2019 尹敏乾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func setAChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .white;
        case 1:
            view.backgroundColor = .black;
        case 2:
            view.backgroundColor = .red;
        case 3:
            view.backgroundColor = .green;
        case 4:
            view.backgroundColor = .yellow;
        default:
            view.backgroundColor = .white;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}

