//
//  HelpScreenController.swift
//  Endless
//
//  Created by Nathan on 11/5/16.
//  Copyright © 2016 Nathan. All rights reserved.
//

import UIKit

class HelpScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
        print("Memery Warning")
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
