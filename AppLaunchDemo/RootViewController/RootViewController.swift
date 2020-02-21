//
//  RootViewController.swift
//  AppLaunchDemo
//
//  Created by Kevin Gnadinger on 2/21/20.
//  Copyright © 2020 Kevin Gnadinger. All rights reserved.
//

import UIKit

protocol ActionableThing: class {
  func buttonPushed()
}

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  @IBAction func nextScreenTapped(_ sender: Any) {
    let detailViewController = DetailViewController()
    detailViewController.delegate = self
    detailViewController.lookAtMeImAFunction = {
      print("I'm a real boy")
    }
    navigationController?.pushViewController(detailViewController, animated: true)
  }
}

extension RootViewController: ActionableThing {
  func buttonPushed() {
    print("Button Pushed")
  }
}
