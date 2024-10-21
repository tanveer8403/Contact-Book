//
//  ContactDetailView.swift
//  INFO6131-Midterm-Template
//
//  Created by Tanveer Ansari on 2024-10-21.
//

import SwiftUI

struct ContactDetailView: View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(contact.fullName) // Use computed property fullName
                .font(.largeTitle)
                .bold()

            HStack {
                Text("Favourite")
                Spacer()
                Image(systemName: contact.isFavorite ? "star.fill" : "star") // Use isFavorite
                    .foregroundColor(contact.isFavorite ? .yellow : .gray)
            }
            Divider()
            
            HStack {
                Text("Phone:")
                Spacer()
                Text(contact.phone)
                    .foregroundColor(.gray)
            }
            Divider()

            HStack {
                Text("Email:")
                Spacer()
                Text(contact.email)
                    .foregroundColor(.gray)
            }
            Divider()

            HStack {
                Text("Address:")
                Spacer()
                Text(contact.address)
                    .foregroundColor(.gray)
            }
            Divider()
        }
        .padding()
        .navigationTitle("Contacts")
    }
}

#Preview {
    ContactDetailView(contact: Contact(
        id: UUID(),
        firstName: "John",
        lastName: "Doe",
        phone: "123-456-7890",
        email: "john.doe@example.com",
        address: "123 Main St",
        city: "CityName",
        country: "CountryName",
        isFavorite: true // Use isFavorite, not isFavourite
    ))
}
