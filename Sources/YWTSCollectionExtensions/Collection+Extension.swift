//
//  Collection+Extension.swift
//  YWTSArrayExtensions
//
//  Created by Joshua Alvarado on 12/03/18.
//

extension Collection {
    public subscript(try position: Index) -> Element? {
        get {
            return indices.contains(position) ? self[position] : nil
        }
    }

    public subscript(at position: Index) -> Element? {
        get {
            return self[try: position]
        }
    }

    public subscript(safe position: Index) -> Element? {
        get {
            return self[try: position]
        }
    }

    public func element(at position: Index) -> Element? {
        return self[try: position]
    }
}
