import Foundation

class ContactsListViewModel: ObservableObject {
    @Published var contacts: [Contact] = []
    @Published var isEditing: Bool = false

    init() {
        resetContacts()
    }

    func addRandomContact() {
        let randomContact = Contact(
            id: UUID(),
            firstName: "Random",
            lastName: "Contact \(Int.random(in: 1...100))",
            phone: "123-456-7890",
            email: "random\(Int.random(in: 1...100))@example.com",
            address: "456 New St",
            city: "Random City",
            country: "Random Country",
            isFavorite: Bool.random() // Correct isFavourite to isFavorite
        )
        contacts.append(randomContact)
    }

    func resetContacts() {
        contacts = [
            Contact(id: UUID(), firstName: "John", lastName: "Doe", phone: "123-456-7890", email: "john.doe@example.com", address: "123 Main St", city: "CityName", country: "CountryName", isFavorite: true),
            Contact(id: UUID(), firstName: "Jane", lastName: "Smith", phone: "987-654-3210", email: "jane.smith@example.com", address: "456 Another St", city: "AnotherCity", country: "AnotherCountry", isFavorite: false)
        ]
    }

    func toggleEditing() {
        isEditing.toggle()
    }

    func filteredContacts(searchText: String) -> [Contact] {
        if searchText.isEmpty {
            return contacts
        } else {
            return contacts.filter { $0.fullName.lowercased().contains(searchText.lowercased()) }
        }
    }
}
