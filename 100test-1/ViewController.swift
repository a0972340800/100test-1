//
//  ViewController.swift
//  100test-1
//
//  Created by john john on 2017/4/19.
//  Copyright © 2017年 john john. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let name = ["雞掰人","正義魔人","閃電俠","大男人","爛肉一坨"]

    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var second: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setting()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setting() {
        answer.text = name[Int(arc4random()) % name.count]
        
        image.image = UIImage(named: answer.text!)
    }

    @IBAction func retry(_ sender: Any) {
        setting()
    }

}

