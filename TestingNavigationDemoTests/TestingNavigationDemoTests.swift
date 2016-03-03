//
//  TestingNavigationDemoTests.swift
//  TestingNavigationDemoTests
//
//  Created by dasdom on 03.03.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import XCTest
@testable import TestingNavigationDemo

class TestingNavigationDemoTests: XCTestCase {
  
  func testTappingPushButton_PushesDetailViewControllerOntoStack() {
    let viewController = ViewController()
    let navigationController = MockNavigationController(rootViewController: viewController)
    UIApplication.sharedApplication().keyWindow?.rootViewController = navigationController
    
    guard let view = viewController.view as? View else { XCTFail(); return }
    view.button.sendActionsForControlEvents(.TouchUpInside)
    
    XCTAssertTrue(navigationController.pushedViewController is DetailViewController)
  }
  
  class MockNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController?
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
      pushedViewController = viewController
      super.pushViewController(viewController, animated: true)
    }
    
  }
  
}
