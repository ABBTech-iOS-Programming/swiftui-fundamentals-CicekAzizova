//
//  TravelView.swift
//  Travel
//
//  Created by Cicek on 05.08.26.
//

import SwiftUI

struct TravelView: View {
    
    var title: some View {
        Text("Your next destination")
            .font(.custom("Bold", size: 12))
            .fontWeight(.semibold)
            .tracking(2)
            .foregroundStyle(.secondary)
            .padding()
    }
    var destinationCard: some View {
        VStack(alignment: .leading) {
            headerImage
            info
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(color: .black.opacity(0.2),radius: 12)
        .padding(.bottom)
      
        
    }
    
    var headerImage: some View {
        ZStack(alignment: .bottomLeading) {
            Image(.santorini1)
                .resizable()
                .scaledToFill()
                .frame(height: 240)
                .clipped()
            
            VStack(alignment: .leading) {
                Text("Santorini")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Greece")
                    .font(.headline)
            }
            .foregroundStyle(.white)
            .padding(20)

        }
        
    }
    
    var info: some View {
        VStack(spacing: 20) {
            Text("Whitewashed villages, blue water and unforgettable sunsets.")
                .font(.title3)
                .foregroundStyle(.secondary)
                .padding()
            
            HStack {
                VStack(spacing: 8) {
                    Image(systemName: "calendar")
                        .font(.title2)
                        .foregroundStyle(.teal)
                    Text("5 days")
                        .font(.headline)
                    Text("Duration")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity)
                VStack(spacing: 8) {
                    Image(systemName: "sun.max.fill")
                        .font(.title2)
                        .foregroundStyle(.teal)
                        
                    Text("26°C")
                        .font(.headline)
                    Text("Weather")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity)
                VStack(spacing: 8) {
                    Image(systemName: "eurosign.circle.fill")
                        .font(.title2)
                        .foregroundStyle(.teal)
                    Text("€1,250")
                        .font(.headline)
                    Text("Price")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity)
            }
            
            Button {
                print("Explore")
            } label: {
                Text("Explore")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.teal)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
            }

            
        }
        
    }
    var body: some View {
        VStack {
            title
            destinationCard
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(.secondarySystemBackground).ignoresSafeArea())
    }
        
        
}

#Preview {
    TravelView()
}
