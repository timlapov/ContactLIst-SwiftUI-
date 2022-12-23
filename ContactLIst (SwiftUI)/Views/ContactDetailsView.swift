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
        VStack(alignment: .leading) {
            Image(systemName: "person.fill")
                .font(.largeTitle)
            Text(contact.fullName)
                .font(.largeTitle)
            Text(contact.phoneNumber)
            Text(contact.email)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContact())
    }
}
