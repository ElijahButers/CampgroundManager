//
//  ReservationServiceTests.swift
//  CampgroundManager
//
//  Created by User on 2/23/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import Foundation
import CoreData
import XCTest
import CampgroundManager

class ReservationServiceTests: XCTestCase {
  
  var campSiteService: CampSiteService!
  var camperService: CamperService!
  var reservationService: ReservationService!
  var coreDataStack: CoreDataStack!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
      coreDataStack = TestCoreDataStack()
      camperService = CamperService(managedObjectContext: coreDataStack.mainContext, coreDataStack: coreDataStack)
      campSiteService = CampSiteService(managedObjectContext: coreDataStack.mainContext, coreDataStack: coreDataStack)
      reservationService = ReservationService(managedObjectContext: coreDataStack.mainContext, coreDataStack: coreDataStack)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
      
      camperService = nil
      campSiteService  = nil
      reservationService = nil
      coreDataStack = nil
    }
  
  func testReserveCampSitePositiveNumberOfDays() {
    
    let camper = camperService.addCamper("Johnny Appleseed", phoneNumber: "408-555-1234")!
    let campSite = campSiteService.addCampSite(15, electricity: false, water: false)
    
    let result = reservationService.reserveCampSite(campSite, camper: camper, date: Date(), numberOfNights: 5)
    
    XCTAssertNotNil(result.reservation, "Reservation should not be nill")
    XCTAssertNil(result.error, "No error should be present")
    XCTAssertTrue(result.reservation?.status == "Reserved", "Status should be reserved")
  }
    
}
