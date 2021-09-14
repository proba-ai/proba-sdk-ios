//
//  ViewController.swift
//  ProbaExample
//
//  Created by Proba on 22.07.2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import UIKit

class ViewController: ProbaShakeToDebugController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let ab = Proba(
      sdkToken: "<YOUR_SDK_TOKEN>",
      appId: "<YOUR_APP_ID>",
      defaults: [
        "<EXPERIMENT_1_KEY>": "<EXPERIMENT_1_DEFAULT_VALUE>",
        "<EXPERIMENT_2_KEY>": "<EXPERIMENT_2_DEFAULT_VALUE>"
      ]
    )

    ab.fetch() { abError in
      guard abError == nil else { return }

      let experiment1Value: String? = ab.value("<EXPERIMENT_1_KEY>")
      let experiment2Value: String? = ab["<EXPERIMENT_2_KEY>"]

      print(experiment1Value ?? "")
      print(experiment2Value ?? "")
    }
  }

}
