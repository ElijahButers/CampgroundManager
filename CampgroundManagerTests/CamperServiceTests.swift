//
//  CamperServiceTests.swift
//  CampgroundManager
//
//  Created by User on 2/14/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import XCTest
import CampgroundManager
import CoreData

class CamperServiceTests: XCTestCase {
  
  var camperService: CamperService!
  var coreDataStack: CoreDataStack!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
      
      coreDataStack = TestCoreDataStack()
      camperService = CamperService(managedObjectContext: coreDataStack.mainContext, coreDataStack: coreDataStack)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
      
      camperService = nil
      coreDataStack = nil
    }
    
}
