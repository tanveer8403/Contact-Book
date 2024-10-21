import SwiftUI

/// Contact list view
struct ContactsListView: View {
    @StateObject var viewModel: ContactsListViewModel = ContactsListViewModel()
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.filteredContacts(searchText: searchText)) { contact in
                    NavigationLink(destination: ContactDetailView(contact: contact)) {
                        HStack {
                            Text(contact.fullName)
                                .font(.headline)
                            Spacer()
                            Image(systemName: contact.isFavorite ? "star.fill" : "star")
                                .foregroundColor(contact.isFavorite ? .yellow : .gray)
                        }
                    }
                }
                .onDelete(perform: viewModel.deleteContact) // Enable deletion
                .onMove(perform: viewModel.moveContact)     // Enable reordering
            }
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Add") {
                        viewModel.addRandomContact()
                    }
                    EditButton() // Use the built-in EditButton to toggle editing mode
                }
            }
            .searchable(text: $searchText, prompt: "Search Contacts")
        }
    }
}

#Preview {
    ContactsListView(viewModel: ContactsListViewModel())
}
