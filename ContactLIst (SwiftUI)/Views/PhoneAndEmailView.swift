//
//  PhoneAndEmailView.swift
//  ContactLIst (SwiftUI)
//
//  Created by Artem Lapov on 23.12.2022.
//

import SwiftUI

//я не понимаю почему не отображается емейл в превью ;( Буду благодарен за комментарий

struct PhoneAndEmailView: View {
    let contact: Person

    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.cyan)
            Text(contact.phoneNumber)
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.cyan)
            Text(contact.email)
        }
    }
}

struct PhoneAndEmailView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneAndEmailView(contact: Person.getContact())
    }
}

