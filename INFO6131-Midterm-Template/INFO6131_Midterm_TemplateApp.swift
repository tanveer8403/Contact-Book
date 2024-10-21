//
//  INFO6131_Midterm_TemplateApp.swift
//  INFO6131-Midterm-Template
//

import SwiftUI

@main
struct INFO6131_Midterm_TemplateApp: App {
    var body: some Scene {
        WindowGroup {
            ContactsListView(viewModel: ContactsListViewModel())
        }
    }
}
