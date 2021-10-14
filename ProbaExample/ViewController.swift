//
//  ViewController.swift
//  ProbaExample
//
//  Created by Proba on 22.07.2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import UIKit

class ViewController: ProbaShakeToDebugController {
  let experimentsService = ExperimentsService()

  override func viewDidLoad() {
    super.viewDidLoad()

    experimentsService.fetch() { [unowned self] abError in
      if let abError = abError {
        print(abError.error)

        return
      }

      print("buttonColor: \(self.experimentsService.buttonColor)")
      print("paywall: \(self.experimentsService.paywall)")
    }
  }
}
