//
//  Contacts.swift
//  Dent Database
//
//  Created by Jack Andrews on 12/14/23.
//

import SwiftUI

struct Contacts: View {
    @State private var addContactViewActive: Bool = false

    @State var contactList: [Contact] = [
        Contact(firstName: "Jack", lastName: "Andrews"),
        Contact(firstName: "Alysha", lastName: "Irvin"),
        Contact(firstName: "Albert", lastName: "Paetzig")
    ]

    var sortedContactList: [Contact] {
        return contactList.sorted {
            $0.lastName < $1.lastName
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Contacts")
                        .bold()
                        .padding()
                        .font(.title)
                    
                    Spacer()
                    
                    NavigationLink(destination: ViewAddContact(contactList: $contactList))
                    {
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.blue)
                            .padding(10)
                    }
                }

                ScrollView {
                    ForEach(sortedContactList)
                    {
                        person in
                        NavigationLink(destination: ViewContact(contact: person))
                        {
                            IndividualContact(individualContact: person)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ViewContact: View {
    var contact: Contact

    var body: some View {
        Text(contact.firstName + " " + contact.lastName)
    }
}

struct ViewAddContact: View
{
    @Binding var contactList: [Contact]
    
    var body: some View
    {
        Button(action: {
            // Add a new contact
            self.addNewContact()
            print(contactList.count)
        }) {
            Text("Add New Contact")
        }
    }
    
    func addNewContact()
    {
        contactList.append(Contact(firstName: "New", lastName: "Contact"))
    }
}

struct Contact: Identifiable {
    var id = UUID()
    var firstName: String = ""
    var lastName: String = ""
}

struct IndividualContact: View
{
    var individualContact: Contact
    
    var body: some View
    {
        Text("\(individualContact.firstName) \(individualContact.lastName)")
            .bold()
            .foregroundColor(.black)
            .padding(3)
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
