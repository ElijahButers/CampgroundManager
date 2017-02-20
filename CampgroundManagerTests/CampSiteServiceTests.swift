//
//  CampSiteServiceTests.swift
//  CampgroundManager
//
//  Created by User on 2/18/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import UIKit
import XCTest
import CampgroundManager
import CoreData

class CampSiteServiceTests: XCTestCase {
  
  var campSiteService: CampSiteService!
  var coreDataStack: CoreDataStack!
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    coreDataStack = TestCoreDataStack()
    campSiteService = CampSiteService(managedObjectContext: coreDataStack.mainContext, coreDataStack: coreDataStack)
  }
  
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
      
      campSiteService = nil
      coreDataStack = nil
    }
    
}
