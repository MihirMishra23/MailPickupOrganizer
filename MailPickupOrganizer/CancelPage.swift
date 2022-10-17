//
//  CancelPage.swift
//  MailPickupOrganizer
//
//  Created by Mihir Mishra on 10/15/22.
//

import SwiftUI

struct CancelPage: View {
    @State private var username: String = ""
    @State private var cancel = false
    @State private var cancelconfirmation = ""
    @State private var isShowingHomePage = false

    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    Text("Email: ")
                        
                        
                    TextField(
                            "Email",
                            text: $username
                        )
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .border(.secondary)
                }
                
                NavigationLink(isActive: $isShowingHomePage) {
                    HomePage()
                } label: {
                    Button("Cancel Appointment") {
                        isShowingHomePage = true
                        cancelconfirmation = "Appointment Cancelled!"
                        Text(cancelconfirmation)
                            .font(.callout)
                            .foregroundColor(Color.green)
                            .padding(.top, 10.0)
                        sleep(5)
                    }
                    .frame(width: 100.0)
                }
            }
        }
    }
}

struct CancelPage_Previews: PreviewProvider {
    static var previews: some View {
        CancelPage()
    }
}
