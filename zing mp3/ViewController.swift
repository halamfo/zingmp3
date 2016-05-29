//
//  ViewController.swift
//  zing mp3
//
//  Created by Dân Tơi on 5/28/16.
//  Copyright © 2016 Dân Tơi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbltext: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbltext.alpha = 0
        img.alpha = 0
        lbl2.alpha = 0
    }
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {
            self.img.alpha = 1
        })
        {
            (finished) in
            UIView.animateWithDuration(3, animations: {
                self.lbltext!.center = CGPointMake(self.img.center.x, 80)
                self.lbltext!.alpha = 1
            })
            {
            (finished) in
            UIView.animateWithDuration(3, animations: {
                self.lbl2!.center = CGPointMake(self.img.center.x, 450)
                self.lbl2!.alpha = 1
            })
            }
        }
        
    }
}

