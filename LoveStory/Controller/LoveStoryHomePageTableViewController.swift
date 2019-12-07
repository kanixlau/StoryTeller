//
//  HomePageTableViewController.swift
//  LoveStory
//
//  Created by Kanix Lau on 7/11/2019.
//  Copyright © 2019 KanixLau. All rights reserved.
//

import UIKit

class LoveStoryHomePageTableViewController: UITableViewController {
    
    
    let stories = StoryData()
    
    var url: String?
    var ext: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.storyArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomePageCell", for: indexPath) as! HomePageTableViewCell
        let story = stories.storyArray[indexPath.row]
        
        cell.titleLabel.text = story.title
        cell.descriptionLabel.text = story.description
        cell.cellPicture.image = story.picture
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        url = stories.storyArray[indexPath.row].contentURL
        ext = stories.storyArray[indexPath.row].ext
        performSegue(withIdentifier: "goToStory", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToStory" {
            let destinationVC = segue.destination as! StoryViewController
            
            if url != nil && ext != nil {
                destinationVC.url = url!
                destinationVC.ext = ext!
            }
            
        }
    }

}

//TableViewCell Color: 282123
