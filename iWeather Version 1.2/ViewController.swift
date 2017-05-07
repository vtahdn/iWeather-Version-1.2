//
//  ViewController.swift
//  iWeather Version 1.2
//
//  Created by Viet Anh Doan on 5/7/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgIV: UIImageView!
    @IBOutlet weak var tB: UIButton!
    @IBOutlet weak var dL: UILabel!
    @IBOutlet weak var cL: UILabel!
    @IBOutlet weak var qL: UILabel!
    
    var bgs = ["day.jpg","dawn.jpg","night.jpg"]
    var cts = ["Vien","Bangkok","Poompeii"]
    var qts = ["\"Swift is the salvation of souls.\" - Doan Viet Anh","\"Solid men, solid Swift.\" - Doan Viet Anh","\"Things will be seen differently when people understand Swift.\" - Doan Viet Anh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rBA(_ sender: UIButton) {
        let bI = Int(arc4random_uniform(UInt32(bgs.count)))
        bgIV.image = UIImage.init(named: bgs[bI])
        let t = Double(arc4random_uniform(40)) + Double(arc4random())/Double(INT32_MAX)
        if dL.text == "C"{
            tB.setTitle(String(format:"%2.1f",t), for: .normal)
        }
        else{
            tB.setTitle(String(format:"%2.0f",t * 1.8 + 32), for: .normal)
        }
        let cI = Int(arc4random_uniform(UInt32(cts.count)))
        cL.text = cts[cI]
        let qI = Int(arc4random_uniform(UInt32(qts.count)))
        qL.text = qts[qI]
    }
    
    @IBAction func tBA(_ sender: UIButton) {
        if dL.text == "C" {
            dL.text = "F"
            sender.setTitle(String(format:"%2.0f",Double((sender.titleLabel?.text)!)! * 1.8 + 32), for: .normal)
        }
        else {
            dL.text = "C"
            sender.setTitle(String(format:"%2.1f",(Double((sender.titleLabel?.text)!)! - 32) / 1.8), for: .normal)
        }
    }
}

