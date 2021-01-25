//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by 최원석 on 2021/01/24.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
