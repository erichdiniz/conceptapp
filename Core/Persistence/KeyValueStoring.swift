//
//  KeyValueStoring.swift
//  conceptapp
//
//  Created by Erich Benevides Diniz on 28/08/25.
//

struct KeyValueStoring {
    let keyValueStoring: KeyValueStoringProtocol
    
    init(keyValueStoring: KeyValueStoringProtocol) {
        self.keyValueStoring = keyValueStoring
    }
}
