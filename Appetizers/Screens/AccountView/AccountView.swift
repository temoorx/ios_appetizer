//
//  AccountView.swift
//  Appetizers
//
//  Created by Mac on 21/04/2024.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var extraNapkins = false
    @State private var frequestRefills = false





    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disableAutocorrection(true)
                    
                    DatePicker("BirthDate", selection: $birthDate,
                               displayedComponents: .date)
                    Button{
                        print("tapped ")
                    }label: {
                        Text("Save Changes")
                            .foregroundStyle(
                                Color.primaryColor)
                    }
                    
                }
                
                Section(header: Text("Request")){
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequest Refills", isOn: $frequestRefills)

                        
                }.toggleStyle(SwitchToggleStyle(tint: .primaryColor))
            }
                .navigationTitle("Account")
        }    }
}

#Preview {
    AccountView()
}
