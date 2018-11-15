//
//  ViewController.swift
//  Ramarao-ImageFilling
//
//  Created by Nagendra Mahto on 07/11/18.
//  Copyright © 2018 www.ramarao.com. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var jokerImageView : FloodFillImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        jokerImageView.image = UIImage(named: "Clown.jpg")
        jokerImageView.tolorance = 10
        jokerImageView.newcolor = UIColor.red
        jokerImageView.isUserInteractionEnabled = true
    }

    @IBAction func BtnTapForColorChange(_ sender: UIButton) {
        print(sender.tag)
        switch sender.tag {
        case 0:
            jokerImageView.newcolor = UIColor.red
        case 1:
            jokerImageView.newcolor = UIColor.blue
        case 2:
            jokerImageView.newcolor = UIColor.black
        case 3:
            jokerImageView.newcolor = UIColor.green
        default:
            break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

