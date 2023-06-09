//
//  AppDelegate.swift
//  SPMRxCocoaRuntimeError
//
//  Created by 김호세 on 2023/04/05.
//

import RxCocoa
import RxSwift
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    Observable.just(1).subscribe(onNext: {
      print($0)
    })
    .dispose()

    BehaviorRelay(value: 2)
      .subscribe(onNext: {
        print($0)
    })
      .dispose()

    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(
    _ application: UIApplication,
    configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(
    _ application: UIApplication,
    didDiscardSceneSessions sceneSessions: Set<UISceneSession>
  ) {
  }
}

