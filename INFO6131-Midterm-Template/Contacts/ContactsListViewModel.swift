import Foundation

class ContactsListViewModel: ObservableObject {
    @Published var contacts: [Contact] = []
    @Published var isEditing: Bool = false

    init() {
        resetContacts()
    }

    // Method to add a random contact
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
            isFavorite: Bool.random()
        )
        contacts.append(randomContact)
    }

    // Method to reset the contact list
    func resetContacts() {
        contacts = [
            Contact(id: UUID(), firstName: "John", lastName: "Doe", phone: "123-456-7890", email: "john.doe@example.com", address: "123 Main St", city: "CityName", country: "CountryName", isFavorite: true),
            Contact(id: UUID(), firstName: "Jane", lastName: "Smith", phone: "987-654-3210", email: "jane.smith@example.com", address: "456 Another St", city: "AnotherCity", country: "AnotherCountry", isFavorite: false)
        ]
    }

    // Method to delete a contact
    func deleteContact(at offsets: IndexSet) {
        contacts.remove(atOffsets: offsets)
    }

    // Method to move a contact
    func moveContact(from source: IndexSet, to destination: Int) {
        contacts.move(fromOffsets: source, toOffset: destination)
    }

    // Method to filter contacts based on search text
    func filteredContacts(searchText: String) -> [Contact] {
        if searchText.isEmpty {
            return contacts
        } else {
            return contacts.filter { $0.fullName.lowercased().contains(searchText.lowercased()) }
        }
    }
}
