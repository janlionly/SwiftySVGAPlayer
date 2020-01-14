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
        let player = SwiftySVGAPlayer()
        player.isKeepWhenStop = true
        player.isUserInteractionEnabled = true
        var isPause = false
        
        weak var weakPlayer = player
        player.tapClosure = {
            print("You tap the svga")
            if !isPause {
                weakPlayer?.stop()
                isPause = true
            } else {
                weakPlayer?.play()
                isPause = false
            }
        }
        if let filepath = Bundle.main.url(forResource: "dice", withExtension: "svga") {
            if let data = try? Data(contentsOf: filepath) {
                player.pushToPlay(svga: data.base64EncodedString(), on: self.contentView, isInstant: true, scale: 1)
            }
        }
    }
    
}

