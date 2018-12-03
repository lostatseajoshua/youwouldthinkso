//
//  Array+Extension.swift
//  YWTSArrayExtensions
//
//  Created by Joshua Alvarado on 11/29/18.
//

extension Array {
    public func keyValueReduce<Key: Hashable>(_ key: (Element) -> Key) -> [Key: Element] {
        return self.keyValueReduce([:], key)
    }

    public func keyValueReduce<Key: Hashable>(_ initialResult: Dictionary<Key, Element>, _ key: (Element) -> Key) -> Dictionary<Key, Element> {
        var dictionary = initialResult

        for element in self {
            dictionary[key(element)] = element
        }

        return dictionary
    }
}
