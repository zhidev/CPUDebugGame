//
//  LevelTwoViewController.swift
//  Debugging
//
//  Created by Nicholas Aiwazian on 2/4/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

// Exception that isn't caught
class LevelTwoViewController: GameLevelViewController {
    
    @IBOutlet weak var attributedLabel: UILabel!
    @IBOutlet weak var levelTitleLabel: UILabel!
    @IBOutlet weak var finishLevelButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.levelTitleLabel.textColor = self.gameLevel.accentColor
        self.finishLevelButton.backgroundColor = self.gameLevel.accentColor
        
        let myStrings = NSMutableAttributedString(string: "funWithAttributedStrings")
        myStrings.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(0, 3))
        myStrings.addAttribute(NSForegroundColorAttributeName, value: UIColor.greenColor(), range: NSMakeRange(3, 4))
        myStrings.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSMakeRange(5, 7))
        myStrings.addAttribute(NSForegroundColorAttributeName, value: UIColor.orangeColor(), range: NSMakeRange(7, 10))
        myStrings.addAttribute(NSForegroundColorAttributeName, value: UIColor.purpleColor(), range: NSMakeRange(10, 14))
        self.attributedLabel.attributedText = myStrings
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent;
    }
}
