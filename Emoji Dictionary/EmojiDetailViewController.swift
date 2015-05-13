//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Sven Roeterdink on 13-05-15.
//  Copyright (c) 2015 Sven Roeterdink. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    var emoji = "😡"
    var emojiText = "A Emoji"
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDescription.text = self.emojiText
    }
}