//
//  Font.swift
//  Travel
//
//  Created by Cicek on 06.08.26.
//

import SwiftUI

extension Font {
    static func jakarta(_ weight: String = "Regular", size: CGFloat) -> Font {
        .custom("PlusJakartaSans-\(weight)", size: size)
    }
}
