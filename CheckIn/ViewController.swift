//
//  ViewController.swift
//  CheckIn
//
//  Created by Aaron Cabreja on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animator: UIViewPropertyAnimator!
    
    @IBOutlet weak var cat: UIButton!
    @IBOutlet weak var animal: UILabel!
    @IBOutlet weak var duck: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
        self.animal.text = "CAT!!!"
    }


    @IBAction func quack(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)

    }
    
    @IBAction func switchButton(_ sender: UIButton) {
        if cat.imageView?.image == UIImage(named: "cat"){
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromBottom], animations: {
                self.cat.setImage(UIImage(named: "dog"), for: .normal)
                self.animal.text = "DOG!!!"
            })
        } else {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromBottom], animations: {
                self.cat.setImage(UIImage(named: "cat"), for: .normal)
                self.animal.text = "CAT!!!"
            })
        }

    }
}

