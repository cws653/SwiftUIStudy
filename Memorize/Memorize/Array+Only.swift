//
//  Array+Only.swift
//  Memorize
//
//  Created by 최원석 on 2021/01/25.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
