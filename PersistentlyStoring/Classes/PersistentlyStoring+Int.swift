//
//  PersistentlyStoring+Int.swift
//  PersistentlyStoring
//
//  Created by Johannes Dörr on 12.04.20.
//  Copyright © 2020 Johannes Dörr. All rights reserved.
//

import Foundation

private struct IntContainer: Codable {
    var value: Int
}

extension PersistentlyStoring {
    public func get(_ key: String) throws -> Int? {
        return try? self.get(IntContainer.self, key: key)?.value
    }

    public func set(_ value: Int, key: String) throws {
        try set(IntContainer(value: value), key: key)
    }
}
