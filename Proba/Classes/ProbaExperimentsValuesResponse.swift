//
//  ProbaExperimentsValuesResponse.swift
//  Proba
//
//  Created by Proba on 22/07/2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import Foundation

struct ProbaExperimentsValuesResponse: Codable {
  let experiments: [ProbaExperimentValue]
  let meta: ProbaExperimentValueMeta
}
