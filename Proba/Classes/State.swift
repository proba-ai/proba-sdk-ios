//
//  State.swift
//  Proba
//
//  Created by Proba on 22/07/2020.
//  Copyright © 2020 Proba. All rights reserved.
//

import Foundation

struct State {

  static var experimentsValues: [ProbaExperimentValue] {
    get { getExperimentsValues(for: #function) }
    set(newValue) { setExperimentsValues(newValue, for: #function) }
  }

  static var debugExperimentsValues: [ProbaExperimentValue] {
    get { getExperimentsValues(for: #function) }
    set(newValue) { setExperimentsValues(newValue, for: #function) }
  }

  static var defaultExperimentsValues: [ProbaExperimentValue] {
    get { getExperimentsValues(for: #function) }
    set(newValue) { setExperimentsValues(newValue, for: #function) }
  }

  static var experiments: [ProbaExperiment] {
    get {
      if let data = UserDefaults.standard.object(forKey: #function) as? Data,
        let value = try? JSONDecoder().decode([ProbaExperiment].self, from: data) {
        return value
      }

      return []
    }
    set(newValue) {
      if let data = try? JSONEncoder().encode(newValue) {
        UserDefaults.standard.set(data, forKey: #function)
      }
    }
  }

  // MARK: Service

  private static func getExperimentsValues(for key: String) -> [ProbaExperimentValue] {
    if let data = UserDefaults.standard.object(forKey: key) as? Data,
      let value = try? JSONDecoder().decode([ProbaExperimentValue].self, from: data) {
      return value
    }

    return []
  }

  private static func setExperimentsValues(_ data: [ProbaExperimentValue], for key: String) {
    if let data = try? JSONEncoder().encode(data) {
      UserDefaults.standard.set(data, forKey: key)
    }
  }
}
