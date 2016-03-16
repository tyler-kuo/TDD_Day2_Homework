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
    
    func testGetAmount_購賣第1集各1本_價錢100(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [HarryPotterBook(episode: 1, count: 1)];
        
        
        let expected:Double = 100;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }
    
    
    func testGetAmount_購賣第1_2集各1本_價錢190(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [HarryPotterBook(episode: 1, count: 1),
                                 HarryPotterBook(episode: 2, count: 1)];
        
        
        let expected:Double = 190;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }

    func testGetAmount_購賣第1_2_3集各1本_價錢270(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [
            HarryPotterBook(episode: 1, count: 1),
            HarryPotterBook(episode: 2, count: 1),
            HarryPotterBook(episode: 3, count: 1)];
        
        
        let expected:Double = 270;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }
    
    func testGetAmount_購賣第1_2_3_4集各1本_價錢320(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [
            HarryPotterBook(episode: 1, count: 1),
            HarryPotterBook(episode: 2, count: 1),
            HarryPotterBook(episode: 3, count: 1),
            HarryPotterBook(episode: 4, count: 1)];
        
        
        let expected:Double = 320;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }
    
    func testGetAmount_購賣第1_2_3_4_5集各1本_價錢375(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [
            HarryPotterBook(episode: 1, count: 1),
            HarryPotterBook(episode: 2, count: 1),
            HarryPotterBook(episode: 3, count: 1),
            HarryPotterBook(episode: 4, count: 1),
            HarryPotterBook(episode: 5, count: 1)];
        
        
        let expected:Double = 375;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }
    
    func testGetAmount_購賣第1_2集各1本_第3集2本_價錢370(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [
            HarryPotterBook(episode: 1, count: 1),
            HarryPotterBook(episode: 2, count: 1),
            HarryPotterBook(episode: 3, count: 2)];
        
        
        let expected:Double = 370;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }
    
    func testGetAmount_購賣第1集1本_第2_3集各2本_價錢460(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [
            HarryPotterBook(episode: 1, count: 1),
            HarryPotterBook(episode: 2, count: 2),
            HarryPotterBook(episode: 3, count: 2)];
        
        
        let expected:Double = 460;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }

    func testGetAmount_購賣0本＿價錢0(){
        
        //Arrange
        let target = Order()
        let harryPorrterBooks = [HarryPotterBook]();
        
        
        let expected:Double = 0;
        //Act
        
        let actual = target.getAmount(harryPorrterBooks)
        
        //Assert
        
        XCTAssertEqual(expected, actual)
        
    }
}
