//
//  View.swift
//  TestingNavigationDemo
//
//  Created by dasdom on 03.03.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import UIKit

class View: UIView {

  let button: UIButton
  
  override init(frame: CGRect) {
    button = UIButton(type: .System)
    button.setTitle("Push", forState: .Normal)
    button.addTarget(nil, action: "push", forControlEvents: .TouchUpInside)
   
    super.init(frame: frame)
    backgroundColor = UIColor.whiteColor()
    
    addSubview(button)
    
    button.centerXAnchor.constraintEqualToAnchor(centerXAnchor).active = true
    button.centerYAnchor.constraintEqualToAnchor(centerYAnchor).active = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
