//
//  AboutViewController.swift
//  LoveStory
//
//  Created by Kanix Lau on 1/12/2019.
//  Copyright © 2019 KanixLau. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutLabel.text = "十多年前的網頁<愛情故事網>，一直因為各種問題斷斷續續出現又消失，希望這一次以手機APP形式重新出現可以幫大家打發一下時間。\n有時簡單的故事可以帶給你一點感動亦可以令你再次明白到，你需要珍惜現在擁有的。\n\n所有愛情故事都是轉載分享，如果有朋友知道原作者是誰 或你就是故事作者，請到Facebook專頁'愛情故事網'給我留一個短訊，我會盡快和你聯絡，謝謝。\n\n故事數目暫時不多，日後會不斷更新以及在將來增加故事種類，感謝支持。"

    }
    

}
