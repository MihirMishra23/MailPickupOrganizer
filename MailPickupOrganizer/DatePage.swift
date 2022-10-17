//
//  SwiftUIView.swift
//  MailPickupOrganizer
//
//  Created by Mihir Mishra on 10/15/22.
//

import SwiftUI
import UIKit

struct DatePage: View {
    @State public var appt = Date()
    @State private var isShowingDayPage = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(isActive: $isShowingDayPage) {
                    DayPage()
                } label: {
                    Button("OK") {
                        isShowingDayPage = true
                    }
                    .frame(width: 50.0)
                }

                DatePicker(selection: $appt, in: Date()...Date().addingTimeInterval(600000), displayedComponents: .date) {
                            Text("Select a date")
                            }
                .datePickerStyle(GraphicalDatePickerStyle())
            }
            
        }
    }
}

struct DatePage_Previews: PreviewProvider {
    static var previews: some View {
        DatePage()
    }
}
