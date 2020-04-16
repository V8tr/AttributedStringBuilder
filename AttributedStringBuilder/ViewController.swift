//
//  ViewController.swift
//  AttributedStringBuilder
//
//  Created by Vadim Bulavin on 4/13/20.
//  Copyright © 2020 Vadim Bulavin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.attributedText = NSAttributedString {
            NSAttributedString {
                "Folder "
                UIImage(systemName: "folder")!
            }
            
            "\n"
            
            NSAttributedString {
                "Document "
                UIImage(systemName: "doc")!.withRenderingMode(.alwaysTemplate)
            }
            .withAttributes([
                .font: UIFont.systemFont(ofSize: 32),
                .foregroundColor: UIColor.red
            ])
        }
    }
}
