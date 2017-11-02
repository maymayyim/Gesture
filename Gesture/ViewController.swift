//
//  ViewController.swift
//  Gesture
//
//  Created by 6272 on 11/2/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let images = ["1","2","3"]
    @IBOutlet weak var imageView: UIImageView!
    
    var currentImage = 0
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if(event?.subtype == UIEventSubtype.motionShake){
            print("shake")
            imageView.image = UIImage(named: images[currentImage]+".jpg")
            if(currentImage == images.count-1){
                currentImage = 0
            }
            else{
                currentImage += 1
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

