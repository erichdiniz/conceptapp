
//
//  KeyValueStoringProtocol.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

import Foundation

protocol KeyValueStoringProtocol {
    func set<T: Codable>(_ value: T, forKey key: String)
    func object<T: Codable>(forKey key: String, as type: T.Type) -> T?
}
