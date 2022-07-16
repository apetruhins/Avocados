//
//  FactModel.swift
//  Avocados
//
//  Created by Alex on 16/07/2022.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
