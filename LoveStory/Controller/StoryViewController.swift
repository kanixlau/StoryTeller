//
//  StoryViewController.swift
//  LoveStory
//
//  Created by Kanix Lau on 7/11/2019.
//  Copyright © 2019 KanixLau. All rights reserved.
//

import UIKit
import WebKit

class StoryViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nameOfStoryLabel: UILabel!
    @IBOutlet weak var nameOfAuthorLabel: UILabel!
    @IBOutlet weak var fontsizeButton: UIButton!
    
    var url = ""
    var ext = ""
    var fontsizeChange = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTxtFile(name: url, ext: ext)
    }
    
    
    func loadTxtFile(name: String, ext: String) {
        if let filepath = Bundle.main.path(forResource: name, ofType: ext) {
            do {
                let contents = try String(contentsOfFile: filepath)
                nameOfStoryLabel.text = name
                textView.text = contents
            } catch {
                print("Failed to load txt file!")
            }
        }
    }

    @IBAction func fontsizeButtonPressed(_ sender: UIButton) {

        if fontsizeChange == false {
            textView.font = .systemFont(ofSize: 15)
            fontsizeChange = true
        } else {
            textView.font = .systemFont(ofSize: 20)
            fontsizeChange = false
        }
        
    }
}
