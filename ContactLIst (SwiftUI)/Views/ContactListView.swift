//
//  ContactListView.swift
//  ContactLIst (SwiftUI)
//
//  Created by Artem Lapov on 23.12.2022.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]

    var body: some View {
        NavigationStack {
            VStack {
                List(contacts) { contact in
                    NavigationLink(destination: ContactDetailsView(contact: contact)) {
                        Text(contact.fullName)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contacts")
        }

    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContacts())
    }
}
