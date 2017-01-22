//
//  TODOMainViewController.swift
//  iOSHandsOn
//
//  Created by tomstyle on 2017/01/22.
//  Copyright © 2017年 tomstyle. All rights reserved.
//

import UIKit
import Foundation

class TODOMainViewController: UIViewController {
    
    @IBOutlet weak var dismissButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissButton.target = self
        dismissButton.action = #selector(TODOMainViewController.dismissButtonTapped(_:))
    }
    
    func dismissButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
