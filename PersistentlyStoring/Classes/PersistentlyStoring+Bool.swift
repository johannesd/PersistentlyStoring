//
//  PersistentlyStoring+Bool.swift
//  PersistentlyStoring
//
//  Created by Johannes Dörr on 14.09.18.
//  Copyright © 2018 Johannes Dörr. All rights reserved.
//

import Foundation

private struct BoolContainer: Codable {
    var value: Bool
}

extension PersistentlyStoring {
    public func get(_ key: String) throws -> Bool {
        if let container = try self.get(BoolContainer.self, key: key) {
            return container.value
        }
        return false
    }

    public func set(_ value: Bool, key: String) throws {
        try set(BoolContainer(value: value), key: key)
    }
}
