//
//  DefaultUserDefaultsStore.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 30/08/25.
//

import Foundation

final class DefaultUserDefaultsStore: KeyValueStoringProtocol {
    private let userDefaults: UserDefaults
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()

    init(userDefaults: UserDefaults) { self.userDefaults = userDefaults }

    func set<T: Codable>(_ value: T, forKey key: String) {
        if let data = try? encoder.encode(value) {
            userDefaults.set(data, forKey: key)
        }
    }

    func object<T: Codable>(forKey key: String, as type: T.Type) -> T? {
        guard let data = userDefaults.data(forKey: key) else { return nil }
        return try? decoder.decode(T.self, from: data)
    }
}
