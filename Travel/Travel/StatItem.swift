//
//  StatItem.swift
//  Travel
//
//  Created by Cicek on 07.08.26.
//
import SwiftUI

struct StatItem: View {
    let icon: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 2) {
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.card)
                Text(title)
                    .font(.jakarta("Bold", size: 16))
            }
            Text(subtitle)
                .font(.jakarta("SemiBold", size: 14))
                .foregroundStyle(.secondaryText)
        }
        .frame(maxWidth: .infinity)
    }
}
