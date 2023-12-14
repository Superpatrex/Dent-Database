//
//  Contacts.swift
//  Dent Database
//
//  Created by Jack Andrews on 12/14/23.
//

import Foundation
import SwiftUI

struct Contacts: View
{
    @State private var addContactViewActive: Bool = false
    
    var body: some View
    {
        VStack
        {
            HStack
            {
                Text("Contacts")
                    .bold()
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }
            
            ScrollView
            {
                VStack
                {
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                    Contact(firstName: "Jack", lastName: "Andrews")
                    Contact(firstName: "Alysha", lastName: "Irvin")
                    Contact(firstName: "Albert")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct AnotherView: View {
    var body: some View {
        Text("This is another view!")
            .navigationTitle("Another View")
    }
}

struct AddContact:View {
    var body: some View {
        Text("Hello")
    }
}

struct Contact:View
{
    var firstName:String = ""
    var lastName:String = ""
    
    var body: some View
    {
        Text(firstName + " " + lastName)
            .bold()
        Divider()
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
