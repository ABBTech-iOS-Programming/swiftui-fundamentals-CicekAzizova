//
//  HomeTask.swift
//  Travel
//
//  Created by Cicek on 06.08.26.
//

import SwiftUI

struct HomeTask: View {
    var body: some View {
        ScrollView{
            UpcomingAppointmentCard()
            AppointmentCard()
            Card()
            
        }
        .background(.secondary.opacity(0.2))
       
    }
        
}
#Preview {
    HomeTask()
}
