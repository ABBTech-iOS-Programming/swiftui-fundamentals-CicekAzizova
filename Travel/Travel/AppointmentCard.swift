//
//  AppointmentCard.swift
//  Travel
//
//  Created by Cicek on 06.08.26.
//

import SwiftUI

struct AppointmentCard: View {
    var cardView: some View {
        VStack(alignment: .leading,spacing: 0){
            image
            hospitalInfo
            doctorInfo
        }
        .frame(width: 280)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
    
    var image: some View {
        ZStack(alignment: .topLeading) {
            Image(.doctor1)
                .resizable()
                .scaledToFill()
                .frame(width: 280, height: 180)
                .clipped()
                .background(.appointmentCard)
                
                HStack(spacing: 6){
                    Circle()
                        .fill(.circle)
                        .frame(width: 10,height: 10)
                    
                    Text("Available")
                        .font(.jakarta("Bold", size: 14))
                    
                }
                    .foregroundStyle(.circle)
            
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(.circle.opacity(0.15))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(16)
            }
    }
    
    var hospitalInfo: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.card)
                
            HStack{
                Text("Madelyn Hospital")
                    .font(.jakarta("Bold", size: 16))
                Spacer()
                Image(systemName: "building.2.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24,height: 24)
            }
            .padding()
            .foregroundStyle(.white)
        }
        .frame(width: 280, height: 48)
    }
    
    var doctorInfo: some View {
        VStack(alignment: .leading) {
            HStack{
                VStack{
                    Text("Dr. Marci Maiden")
                        .font(.jakarta("Bold", size: 18))
                    Text("Internist Specialist")
                        .font(.jakarta("SemiBold", size: 16))
                        .foregroundStyle(.secondaryText)
                        .padding(.top, 4)
                }
                Spacer()
                Text("⭐️ 4.5")
                    .font(.jakarta("Bold", size: 18))
                    .foregroundStyle(.rating)
                    
            }
            HStack(alignment: .center) {
                Text("Rp 240.000")
                    .font(.jakarta("SemiBold", size: 18))
                    .foregroundStyle(.priceText)
                Text("/hours")
                    .font(.jakarta("SemiBold", size: 16))
                    .foregroundStyle(.secondaryText)

            }
            .padding(.top, 4)
            
           
            
        }
        .padding()
    }
    var body: some View {
        cardView
        
    }
}
#Preview {
    AppointmentCard()
}
