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
                            Text(contact.fullName) // Use fullName (computed from firstName and lastName)
                                .font(.headline)
                            Spacer()
                            Image(systemName: contact.isFavorite ? "star.fill" : "star") // Correct isFavourite to isFavorite
                                .foregroundColor(contact.isFavorite ? .yellow : .gray)
                        }
                    }
                }
            }
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Add") {
                        viewModel.addRandomContact()
                    }
                    Button("Edit") {
                        viewModel.toggleEditing()
                    }
                    Button("Reset") {
                        viewModel.resetContacts()
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search Contacts")
        }
    }
}

#Preview {
    ContactsListView(viewModel: ContactsListViewModel())
}
