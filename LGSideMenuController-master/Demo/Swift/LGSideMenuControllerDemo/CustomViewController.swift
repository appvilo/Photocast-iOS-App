//
//  CustomViewController.swift
//  LGSideMenuControllerDemo
//
//  Created by Max Dmitriev on 27.06.17.
//  Copyright © 2017 Cole Dunsby. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    @IBAction func close_action(_ sender: UIButton) {
        self.removeFromParentViewController()
        self.view.removeFromSuperview()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
