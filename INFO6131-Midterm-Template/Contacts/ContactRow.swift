import SwiftUI

struct ContactRow: View {
    let contact: Contact
    var body: some View {
        //TODO: replace below with contact row
        Text("Replace this with contact row")
    }
}

#Preview {
    ContactRow(contact: ContactStore.testStore.contacts[1])
}
