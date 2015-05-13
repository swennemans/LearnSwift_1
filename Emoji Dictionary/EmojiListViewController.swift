//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Sven Roeterdink on 13-05-15.
//  Copyright (c) 2015 Sven Roeterdink. All rights reserved.
//

import Foundation
import UIKit

class EmojiViewListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😀", "😩", "👮🏾", "🎅", "👻", "👀", "💩", "👳"]
    var text = ["Emoji 1", "Emoji 2", "Emoji 3", "Emoji 4", "Emoji 5", "Emoji 6", "Emoji 7", "Emoji 8"]
    
    var emoji = "😀"
    var emojiText = "A next text!"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return self.emojis.count
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.emojiText = self.text[indexPath.row]
        
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.emojiText = self.emojiText
    }
}
