//
//  ViewController.swift
//  SampleAnimation
//
//  Created by 宮内諒太 on 2018/07/03.
//  Copyright © 2018年 宮内諒太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapStartButton(_ sender: Any) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        animation.fromValue = 0
        animation.toValue = 100
        animation.duration = 1
        targetView.layer.add(animation, forKey: "cornerRadius")
        targetView.layer.cornerRadius = 20
    }
}

