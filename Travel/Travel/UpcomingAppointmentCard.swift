//
//  Untitled.swift
//  Travel
//
//  Created by Cicek on 06.08.26.
//

import SwiftUI

struct UpcomingAppointmentCard: View {
    
    var cardView: some View {
        
            VStack(spacing: 16) {
                title
                HStack(spacing: 16) {
                    appointmentDateView
                    appointmentTimeView
                }
                .padding(.horizontal, 16)
                doctorInfoView
            }
         
        .frame(width: 393)
        .background(.card)
        .clipShape(RoundedRectangle(cornerRadius: 24))
  
        
    }
    var title : some View {
        HStack {
            Text("Upcoming Appointments")
                .font(.jakarta("Bold", size: 16))
                .foregroundStyle(.white)
            Spacer()
            Button {
                print("send")
            } label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24,height: 24)
                    .foregroundStyle(.white)
            }

        }
        .padding(.horizontal,16)
        .padding(.top, 16)
    }
    
    var appointmentDateView: some View {
        VStack(alignment: .leading,spacing: 8) {
            Image(systemName: "calendar")
                .resizable()
                .scaledToFit()
                .frame(width: 24,height: 24)
            Text("Mon, 11 June 2024")
                .font(.jakarta("Bold", size: 14))
                .padding(.bottom, 4)
            Text("Appointments Date")
                .font(.jakarta("SemiBold", size: 10))
                .padding(.bottom, 12)
        }
        .padding([.top, .horizontal], 16)
        .frame(width: 172.5, height: 95, alignment: .leading)
        .foregroundStyle(.white)
        .background(.white.opacity(0.09))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    var appointmentTimeView: some View {
        VStack(alignment: .leading,spacing: 8){
            Image(systemName: "clock")
                .resizable()
                .scaledToFit()
                .frame(width: 24,height: 24)
            Text("08:00 - 12:00")
                .font(.jakarta("Bold", size: 14))
                .padding(.bottom, 4)
            Text("Appointments Time")
                .font(.jakarta("SemiBold", size: 10))
                .padding(.bottom, 12)
                
        }
        .padding([.top, .horizontal], 16)
        .frame(width: 172.5, height: 95, alignment: .leading)
        .foregroundStyle(.white)
        .background(.white.opacity(0.09))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    var doctorInfoView: some View {
        HStack {
            Image(.doctor)
                .resizable()
                .scaledToFill()
                .frame(width: 42, height: 42)
                .clipShape(.circle)
            VStack(alignment: .leading) {
                Text("Dr. Strange Walker")
                    .font(.jakarta("Bold", size: 14))
                    .padding(.bottom, 4)
                Text("Internist Specialist Doctor")
                    .font(.jakarta("SemiBold", size: 10))
                    .padding(.bottom, 12)
                
            }
            Spacer()
            Image(systemName: "ellipsis.message")
                .resizable()
                .scaledToFit()
                .frame(width: 24,height: 24)
            
        }
        .padding(12)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding([.horizontal, .bottom],16)
        
    }
    var body: some View {
        cardView
            
    }
}
#Preview {
    UpcomingAppointmentCard()
}
