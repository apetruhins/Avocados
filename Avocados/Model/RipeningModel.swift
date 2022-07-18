//
//  RipeningModel.swift
//  Avocados
//
//  Created by Alex on 18/07/2022.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
