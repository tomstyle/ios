//
//  ViewController.swift
//  iOSHandsOn
//
//  Created by tomstyle on 2017/01/22.
//  Copyright © 2017年 tomstyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pushButton: UIButton!
    
    @IBOutlet weak var popButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        pushButton.addTarget(self, action: #selector(ViewController.pushButtonTapped(_:)), for: .touchUpInside)
        
        // 戻り先の画面が存在するときだけ、ボタンを有効にする
        popButton.isEnabled = navigationController!.childViewControllers.count > 1
        popButton.addTarget(self, action: #selector(ViewController.popButtonTapped(_:)), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pushButtonTapped(_ sender: Any) {
        let nvc = UIStoryboard(name: "Main", bundle: Bundle.main)
            .instantiateInitialViewController() as! UINavigationController
        let vc = nvc.childViewControllers[0] as! ViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    // 画面が表示された直後に呼ばれる
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NSLog("\(navigationController?.childViewControllers)")
    }
    func popButtonTapped(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }

}

