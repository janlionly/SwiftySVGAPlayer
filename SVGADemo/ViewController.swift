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
    
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        player.cache(svga: "http://xxx/filename.svga")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if let filepath = Bundle.main.url(forResource: "dice", withExtension: "svga") {
            if let data = try? Data(contentsOf: filepath) {
                SwiftySVGAPlayer().play(svga: data.base64EncodedString(), on: self.contentView, isInstant: true, scale: 1)
            }
        }
    }
    
}

