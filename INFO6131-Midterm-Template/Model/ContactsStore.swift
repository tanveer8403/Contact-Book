import Foundation
import Observation

@Observable
final class ContactStore {
    var contacts: [Contact]
    
    init(contacts: [Contact] = mockData) {
        self.contacts = contacts
    }
}

extension ContactStore {
    static var mockData = [
        Contact(id: UUID(),
                firstName: "Tom",
                lastName: "Brady",
                phone: "(416)123-4567",
                email: "tom.brady@gmail.com",
                address: "588 Riviera Drive",
                city: "Tampa Bay",
                country: "US",
                isFavorite: true),
        Contact(id: UUID(),
                firstName: "Payton",
                lastName: "Manning",
                phone: "(647)123-4567",
                email: "manning@gmail.com",
                address: "55 Haverstock Cr.",
                city: "Georgetown",
                country: "Canada",
                isFavorite: false),
        Contact(id: UUID(),
                firstName: "John",
                lastName: "Doe",
                phone: "(905)123-4567",
                email: "john@gmail.com",
                address: "55 Bristol Dr.",
                city: "Caledon",
                country: "Canada",
                isFavorite: false),
        Contact(id: UUID(),
                firstName: "Brett",
                lastName: "Let",
                phone: "(416)123-4567",
                email: "dv@gmail.com",
                address: "69 Wellington St. West",
                city: "Toronto",
                country: "CAN",
                isFavorite: true),
        Contact(id: UUID(),
                firstName: "Virat",
                lastName: "Kohli",
                phone: "(647)123-4567",
                email: "manning@gmail.com",
                address: "20 Fishing Cr.",
                city: "Brampton",
                country: "Canada",
                isFavorite: true),
        Contact(id: UUID(),
                firstName: "Rohit",
                lastName: "Sharma",
                phone: "(647)123-4567",
                email: "sharma@gmail.com",
                address: "22 Fishing Cr.",
                city: "Brampton",
                country: "Canada",
                isFavorite: false),
    ]


    static var testStore: ContactStore = ContactStore(contacts: mockData)
}
