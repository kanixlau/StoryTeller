//
//  MenuViewController.swift
//  LoveStory
//
//  Created by Kanix Lau on 23/11/2019.
//  Copyright © 2019 KanixLau. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var firstButtonBackgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "716398.jpeg")
//        backgroundImage.contentMode = .scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
        
        firstButtonBackgroundImage.clipsToBounds = true
        firstButtonBackgroundImage.layer.cornerRadius = 30
        firstButtonBackgroundImage.layer.shadowOpacity = 0.5
    }
    

}

//Navigation Bar color: 0C0D0E
