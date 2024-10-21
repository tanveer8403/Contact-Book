import Foundation

struct Contact: Identifiable {
    var id: UUID
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    var address: String
    var city: String
    var country: String
    var isFavorite: Bool

    // Computed property to get the full name
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
