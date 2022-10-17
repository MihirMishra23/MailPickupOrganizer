//
//  HomePage.swift
//  MailPickupOrganizer
//
//  Created by Mihir Mishra on 10/15/22.
//

import SwiftUI

struct HomePage: View {
    @State private var isShowingDetailView = false
    @State private var isShowingCancel = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Form {
                    NavigationLink(isActive: $isShowingDetailView) {
                        DatePage()
                    } label: {
                        Button("Make Appointment") {
                            isShowingDetailView = true
                        }
                        .padding(.bottom)
                        .frame(width: 100.0)
                    }

                    NavigationLink(isActive: $isShowingCancel) {
                        CancelPage()
                    } label: {
                        Button("Cancel Appointment") {
                            isShowingCancel = true
                        }
                        .padding(.top)
                        .frame(width: 100.0)
                    }
                }
                .navigationTitle("Mail Pickup")
                .padding(.top, 100)
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
