//
//  ProbaExperiment.swift
//  Proba
//
//  Created by Proba on 22/07/2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import Foundation

struct ProbaExperiment: Codable {
  let name: String
  let key: String
  let status: ProbaExperimentStatus
  let options: [ProbaExperimentOption]

  enum CodingKeys: String, CodingKey {
    case name
    case key
    case status
    case options
  }

  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(name, forKey: .name)
    try container.encode(key, forKey: .key)
    try container.encode(status.rawValue, forKey: .status)
    try container.encode(options, forKey: .options)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decode(String.self, forKey: .name)
    key = try container.decode(String.self, forKey: .key)
    let stringStatus = try container.decode(String.self, forKey: .status)
    status = ProbaExperimentStatus(rawValue: stringStatus) ?? .running
    options = try container.decode([ProbaExperimentOption].self, forKey: .options)
  }

  init(
    name: String,
    key: String,
    status: ProbaExperimentStatus,
    options: [ProbaExperimentOption]
  ) {
    self.name = name
    self.key = key
    self.status = status
    self.options = options
  }
}
