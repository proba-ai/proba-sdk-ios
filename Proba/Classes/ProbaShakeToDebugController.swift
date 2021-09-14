//
//  ProbaShakeToDebugController.swift
//  Proba
//
//  Created by Proba on 24.08.2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import UIKit

open class ProbaShakeToDebugController: UIViewController {

  // MARK: - UIResponder

  override open var canBecomeFirstResponder: Bool {
    return true
  }

  override open func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    if ProbaDebugMode.isOn &&
      ProbaDebugMode.usingShake
      && motion == .motionShake {
      ProbaDebugMode.showMenu(from: self)
    }
  }

  // MARK: - UIViewController

  override open func viewDidLoad() {
    super.viewDidLoad()

    _ = becomeFirstResponder()
  }

}
