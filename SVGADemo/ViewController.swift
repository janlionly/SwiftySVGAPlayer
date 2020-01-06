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
    let player = SwiftySVGAPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        player.cache(svga: "http://xxx/filename.svga")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        player.play(svga: "http://xxx/filename.svga", on: self.view)
    }
    
}

