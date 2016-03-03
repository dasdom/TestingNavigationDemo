//
//  ViewController.swift
//  TestingNavigationDemo
//
//  Created by dasdom on 03.03.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func loadView() {
    view = View()
  }

  func push() {
    navigationController?.pushViewController(DetailViewController(), animated: true)
  }
}

