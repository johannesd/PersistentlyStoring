//
//  PersistentlyStoring+Codable.swift
//  PersistentlyStoring
//
//  Created by Johannes Dörr on 10.04.18.
//  Copyright © 2018 Johannes Dörr. All rights reserved.
//

import Foundation

extension PersistentlyStoring {
    public func set<T: Encodable>(_ codable: T, key: String) throws {
        let data = try JSONEncoder().encode(codable)
        let json = String(data: data, encoding: .utf8)!
        try self.set(json, key: key)
    }

    public func get<T: Decodable>(_ codable: T.Type, key: String) throws -> T? {
        guard let json = try self.get(key), let data = json.data(using: .utf8) else {
            return nil
        }
        return try JSONDecoder().decode(codable, from: data)
    }
}
