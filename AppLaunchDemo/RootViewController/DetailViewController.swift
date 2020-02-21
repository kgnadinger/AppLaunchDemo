//
//  DetailViewController.swift
//  AppLaunchDemo
//
//  Created by Kevin Gnadinger on 2/21/20.
//  Copyright © 2020 Kevin Gnadinger. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  public weak var delegate: ActionableThing?
  
  public var lookAtMeImAFunction: (() -> Void)?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func pushMePushed(_ sender: Any) {
    lookAtMeImAFunction?()
    delegate?.buttonPushed()
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
