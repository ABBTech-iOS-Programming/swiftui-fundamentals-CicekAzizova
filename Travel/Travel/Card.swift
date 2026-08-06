//
//  Card.swift
//  Travel
//
//  Created by Cicek on 06.08.26.
//

import SwiftUI
struct Card: View {
    var cardView: some View {
        VStack(alignment: .leading) {
            HStack {
                image
                doctorInfo
                   
            }
            doctorStatus
            HStack(alignment: .center){
                doctorPrice
                    Spacer()
                bookNowButton
                    
            }
            .padding(20)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .padding(40)
        
    }
    
    var image: some View {
        Image(.doctor)
            .resizable()
            .scaledToFill()
            .frame(width: 99, height: 120)
            .background(.appointmentCard)
            .clipShape(
                    .rect(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 24,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 24
                    )
                )
            .padding(20)
    }
    var doctorInfo: some View {
        VStack(alignment: .leading,spacing: 8){
            Text("Radiant Hospital")
                .font(.jakarta("Bold", size: 16))
                .foregroundStyle(.card)
                
            
            Text("Dr. Raze Invoker")
                .font(.jakarta("Bold", size: 18))
          
            Text("Internist Specialist")
                .font(.jakarta("SemiBold", size: 16))
                .foregroundStyle(.secondaryText)
        }
        
    }
    
    var doctorStatus: some View {
    
                HStack(spacing: 24) {
                    VStack(spacing: 4) {
                        HStack(spacing: 2){
                            Image(systemName: "checkmark.seal.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20,height: 20)
                                .foregroundStyle(.card)
                            Text("Verify")
                                .font(.jakarta("Bold", size: 16))
                        }
                        Text("Certified")
                            .font(.jakarta("SemiBold", size: 14))
                            .foregroundStyle(.secondaryText)
                    }
                    .frame(maxWidth: .infinity)
                    VStack(spacing: 4) {
                        HStack(spacing: 2) {
                            Image(systemName: "cross.case.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20,height: 20)
                                .foregroundStyle(.card)
                            
                            Text("5 Years")
                                .font(.jakarta("Bold", size: 16))
                        }
                        Text("Experience")
                            .font(.jakarta("SemiBold", size: 14))
                            .foregroundStyle(.secondaryText)
                    }
                    .frame(maxWidth: .infinity)
                    VStack(spacing: 4) {
                        HStack(spacing: 2){
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20,height: 20)
                                .foregroundStyle(.card)
                            Text("4.5")
                                .font(.jakarta("Bold", size: 16))
                        }
                        Text("Rating")
                            .font(.jakarta("SemiBold", size: 14))
                            .foregroundStyle(.secondaryText)
                    }
                    .frame(maxWidth: .infinity)
                
            }
                .padding(.vertical, 16)
                .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                .padding(.horizontal,10)
    }
    
    var doctorPrice: some View {
        VStack(alignment: .leading) {
            Text("Rp 240.000")
                .font(.jakarta("Bold", size: 18))
                .foregroundStyle(.priceText)
            Text("/hours")
                .font(.jakarta("SemiBold", size: 16))
                .foregroundStyle(.secondaryText)

        }
        
    }
    var bookNowButton: some View {
        Button {
            print("BookNow")
        } label: {
            Text("Book Now")
                        .font(.jakarta("SemiBold", size: 16))
                        .foregroundStyle(.card)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 10)
                        .background(.card.opacity(0.15))
                        .clipShape(Capsule())
                        
                        .overlay(
                            Capsule().stroke(.card, lineWidth: 1.5)
                        )
                      
        }
       
    

    }
    var body: some View {
       cardView
    }
}
#Preview {
    Card()
}
