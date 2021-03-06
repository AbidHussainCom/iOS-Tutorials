//
//  ViewController.swift
//  WindowSample
//
//  Created by Hari Kunwar on 5/3/17.
//  Copyright © 2017 Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        window = UIWindow(frame: CGRect(x: 50, y: 100, width: 300, height: 400))
        window?.windowLevel = UIWindowLevelStatusBar
        let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondViewController")
        window?.rootViewController = viewController
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func presentButtonPressed(_ sender: Any) {
        window?.isHidden = false
    }

}

