//
//  ViewController.swift
//  SVGADemo
//
//  Created by janlionly on 2020/1/6.
//  Copyright © 2020 Janlionly. All rights reserved.
//

import UIKit
import SwiftySVGAPlayer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let player = SwiftySVGAPlayer()
        player.play(svga: "http://xxx/filename.svga", on: self.view)
    }
    
}

