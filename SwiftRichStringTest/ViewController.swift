//
//  ViewController.swift
//  SwiftRichStringTest
//
//  Created by Marco Pace on 04/04/2019.
//  Copyright © 2019 Marco Pace. All rights reserved.
//

import UIKit
import SwiftRichString

class ViewController: UIViewController {
    @IBOutlet weak var workingLabel: UILabel!
    @IBOutlet weak var notWorkingLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let redStyle = Style {
            $0.color = UIColor.red
        }
        let myStyleGroup = StyleGroup(base: nil, ["red": redStyle])
        let myText = "Hello, <red>this is red text</red>."

        // Working
        workingLabel.attributedText = myText.set(style: myStyleGroup)

        // Not working
        notWorkingLabel.attributedText = myText.set(styles: [myStyleGroup])
    }
}
