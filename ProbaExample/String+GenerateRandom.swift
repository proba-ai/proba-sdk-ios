//
//  String+GenerateRandom.swift
//  Proba
//
//  Created by Proba on 14.10.2021.
//  Copyright © 2021 Proba. All rights reserved.
//

import Foundation

extension String {
  static func random(ofLength length: Int) -> String {
    var result = ""

    for _ in 0 ..< length {
      result.append(letters.randomElement()!)
    }

    return result
  }

  static private let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
}
