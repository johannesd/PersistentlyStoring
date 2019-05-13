//
//  PersistentlyStoring.swift
//  PersistentlyStoring
//
//  Created by Johannes Dörr on 18.04.18.
//  Copyright © 2018 Johannes Dörr. All rights reserved.
//

import Foundation

public protocol PersistentlyStoring {
    func get(_ key: String) throws -> String?
    func set(_ value: String, key: String) throws
    func remove(_ key: String) throws
}
