//
//  ExperimentsService.swift
//  Proba
//
//  Created by Proba on 14.10.2021.
//  Copyright © 2021 Proba. All rights reserved.
//

import Foundation

struct ExperimentsService {
  enum ButtonColor: String {
    case red
    case green
    case yellow
  }

  enum Paywall: String {
    case paywallA
    case paywallB
  }

  private let proba: Proba

  // for test purposes; use some fixed value in production!
  private let deviceId = String.random(ofLength: 8)

  init() {
    proba = Proba(
      sdkToken: "6C13290601894E9AB6641AC51B78B41B",
      appId: "24685",
      deviceId: deviceId,
      usingShake: true,
      defaults: [
        "buttonColor": defaultButtonColor.rawValue,
        "paywall": defaultPaywall.rawValue,
      ]
    )
  }

  func fetch(completion: @escaping (_ abError: ProbaABError?) -> Void) {
    proba.fetch(completion: completion)
  }

  private let defaultButtonColor: ButtonColor = .green

  var buttonColor: ButtonColor {
    ButtonColor(rawValue: proba[#function] ?? "") ?? defaultButtonColor
  }

  private let defaultPaywall: Paywall = .paywallA

  var paywall: Paywall {
    Paywall(rawValue: proba[#function] ?? "") ?? defaultPaywall
  }
}
