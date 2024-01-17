//
//  Categories.swift
//  CityCritic
//
//  Created by Pedro Thomas on 1/17/24.
//

import SwiftUI

struct Categories: Identifiable {
    let id = UUID().uuidString
    let categoryName: String
    let categoryImage: String
    let color: Color
}
