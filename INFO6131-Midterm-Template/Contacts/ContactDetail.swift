import SwiftUI

struct ContactDetail: View {
    let contact: Contact
    
    var body: some View {
        //TODO: Complete detail view
        Text("Contact detail view")
    }
}

#Preview {
    ContactDetail(contact: ContactStore.testStore.contacts[0])
}
