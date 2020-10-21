//
//  BinarySearchTests.swift
//  BinarySearchTests
//
//  Created by Frank McAuley on 10/21/20.
//

import XCTest
@testable import BinarySearch

class BinarySearchTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBinarySearchIsNotNil() throws {
        let bs = BinarySearch()
        XCTAssertNotNil(bs)
    }

    func testThatBinarySearchCanFindAValueGiveACollectionWithASingleValue() {
        let bs = BinarySearch()
        let output = bs.search([1], 1)
        let expected = 1
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatBinarySearchCanFindAValueInACollectionOfSizeTwo() {
        let bs = BinarySearch()
        let output = bs.search([1,2], 2)
        let expected = 2
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatBinarySearchCanLocateAValueInALargerCollection() {
        let bs = BinarySearch()
        let output = bs.search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16], 1)
        let expected  = 1
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatBinarySearchTreeWillReturnNillWhenValueNotFound() {
        let bs = BinarySearch()
        let output = bs.search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16], 17)
        
        
        XCTAssertNil(output)
    }
    
    func testThatRefactorWorks(){
        var values = [1,2,3,4,5]
        let output = values.binarySearch(forElement: 2)
        
        XCTAssertTrue(output)
    }
    
    func testThatRefactorWorksForCaseWhenNotValuee() {
        var values = [1,2,3,4,5,6]
        let output = values.binarySearch(forElement: 100)
        
        XCTAssertFalse(output)
    }
}
