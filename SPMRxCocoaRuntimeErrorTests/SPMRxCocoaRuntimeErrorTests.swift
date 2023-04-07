//
//  SPMRxCocoaRuntimeErrorTests.swift
//  SPMRxCocoaRuntimeErrorTests
//
//  Created by  on 2023/04/05.
//

import XCTest
import RxCocoa


@testable import SPMRxCocoaRuntimeError

final class SPMRxCocoaRuntimeErrorTests: XCTestCase {

  override func setUpWithError() throws {

  }

  override func tearDownWithError() throws {
  }

  func testRx() {
    BehaviorRelay(value: 1).subscribe(onNext: {
      print($0)
    })
    .dispose()
  }

}
