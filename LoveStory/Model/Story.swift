//
//  StoryModel.swift
//  LoveStory
//
//  Created by Kanix Lau on 7/11/2019.
//  Copyright © 2019 KanixLau. All rights reserved.
//

import Foundation
import UIKit

struct Story {
    var title: String
    var description: String?
    var contentURL: String
    var ext: String
    var picture: UIImage?
    
    init(name: String, desc: String?, url: String, ext: String, pic: UIImage?) {
        title = name
        description = desc
        contentURL = url
        self.ext = ext
        picture = pic
    }

}
