//
//  Student.swift
//  my-progress
//
//  Created by Gregory Lagranha on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct Student: Identifiable {
    var id: UUID = UUID()
    var name: String
    var isPresent: Bool = false
    var deliveredActivity: Bool = false
    var class_id: Int
}
