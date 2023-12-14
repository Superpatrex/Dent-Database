//
//  ContentView.swift
//  Dent Database
//
//  Created by Jack Andrews on 12/14/23.
//

import SwiftUI

struct ContentView: View 
{
    var body: some View
    {
        TabView
        {
            Contacts()
                .tabItem { Label("Contacts", systemImage: "person.circle") }
            
            Invoices()
                .tabItem { Label("Invoices", systemImage: "printer.filled.and.paper") }
            
            Settings()
                .tabItem { Label("Settings", systemImage: "gearshape") }
        }
    }
}
