//
//  TDD_Day2_HomeworkTests.swift
//  TDD_Day2_HomeworkTests
//
//  Created by Tyler on 2016/3/16.
//  Copyright © 2016年 Tyler. All rights reserved.
//

import XCTest

class TDD_Day2_HomeworkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetAmount_購賣第1集各1本＿價錢100(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [HarryPotterBook(episode: 1, count: 1)];
        
        
        let expected:Double = 100;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }

}
