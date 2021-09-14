//
//  ProbaExperimentValue.swift
//  Proba
//
//  Created by Proba on 22/07/2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import Foundation

struct ProbaExperimentValue: Codable {
  let key: String
  let value: AnyCodable
  let optionId: Int?

  var details: [String: Any] {
    ["[Proba] \(key)": value.value,
     "[Proba] [internal] \(key)": optionId ?? ""]
  }
}
