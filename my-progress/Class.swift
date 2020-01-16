//
//  Classes.swift
//  my-progress
//
//  Created by Thomas Moraes on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct ClassObject: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var dates: [String]
}

