//
//  SectionTableView.swift
//  ContactLIst (SwiftUI)
//
//  Created by Artem Lapov on 23.12.2022.
//

import SwiftUI

struct ContactSectionView: View {
    let contacts: [Person]

    var body: some View {
        NavigationStack {
            VStack {
                List(contacts) { contact in
                    Section {
                        PhoneAndEmailView(contact: contact)
                    } header: {
                        Text(contact.fullName)
                    }

                }
            }
            .navigationTitle("Contacts")
        }
    }

}

struct SectionTableView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(contacts: Person.getContacts())
    }
}
