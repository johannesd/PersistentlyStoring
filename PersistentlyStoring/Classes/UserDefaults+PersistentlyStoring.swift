//
//  UserDefaults+PersistentlyStoring.swift
//  PersistentlyStoring
//
//  Created by Johannes Dörr on 19.04.18.
//  Copyright © 2018 Johannes Dörr. All rights reserved.
//

import Foundation

extension UserDefaults: PersistentlyStoring {
    public func set(_ value: String, key: String) throws {
        self.set(value, forKey: key)
    }

    public func get(_ key: String) throws -> String? {
        return self.string(forKey: key)
    }

    public func remove(_ key: String) throws {
        self.removeObject(forKey: key)
    }
}
