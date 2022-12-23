//
//  ContactDetailsView.swift
//  ContactLIst (SwiftUI)
//
//  Created by Artem Lapov on 23.12.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person

    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .scaledToFill()
                    Spacer()
                }
                PhoneAndEmailView(contact: contact)
            }
            .listStyle(.grouped)
            .navigationTitle(contact.fullName)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContact())
    }
}
