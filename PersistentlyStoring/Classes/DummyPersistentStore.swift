//
//  DummyPersistentStore.swift
//  PersistentlyStoring
//
//  Created by Johannes Dörr on 18.04.18.
//  Copyright © 2018 Johannes Dörr. All rights reserved.
//

import Foundation

/**
 A class conforming to PersistentlyStoring that can be used in testing scenarios where
 no real persistent store (like Keychain) is availble.
 */
public class DummyPersistentStore: PersistentlyStoring {
    var data = [String: String]()

    public init() { }

    public func get(_ key: String) throws -> String? {
        return data[key]
    }

    public func set(_ value: String, key: String) throws {
        data[key] = value
    }

    public func remove(_ key: String) throws {
        data[key] = nil
    }
}
