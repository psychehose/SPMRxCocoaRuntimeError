//
//  SPMRxCocoaRuntimeErrorTests.swift
//  SPMRxCocoaRuntimeErrorTests
//
//  Created by  on 2023/04/05.
//

import XCTest
import RxCocoa
import RxSwift
import RxTest


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

  func testScedule() {
    let scheduler = TestScheduler(initialClock: 0)


    let disposeBag = DisposeBag()
    let observer = scheduler.createObserver(Int.self)

    scheduler
      .createColdObservable([
        .next(100, 1),
        .next(200, 2)
      ])
      .subscribe(observer)
      .disposed(by: disposeBag)


    scheduler.start()

    XCTAssertEqual(observer.events, [
      .next(100, 1),
      .next(200, 2)
    ])
  }

}

