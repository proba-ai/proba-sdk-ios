//
//  ProbaDebugMode.swift
//  Proba
//
//  Created by Proba on 22/07/2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import Foundation
import UIKit

public struct ProbaDebugMode {

  static var usingShake: Bool = true

  public static var isOn: Bool = false

  public static func showMenu(from controller: UIViewController) {
    let navigationController = UINavigationController(rootViewController: ExperimentsController())
    controller.present(navigationController, animated: true)
  }
}
