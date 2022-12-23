//
//  Models.swift
//  ContactLIst (SwiftUI)
//
//  Created by Artem Lapov on 23.12.2022.
//

import Foundation

struct Person: Identifiable {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    let id: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getContacts() -> [Person] {
        var contacts: [Person] = []

        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumders = DataStore.shared.phoneNumbers.shuffled()

        let iteration = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumders.count
        )

        for index in 0..<iteration {
            contacts.append(Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumders[index],
                id: UUID().uuidString
            )
            )
        }
        return contacts
    }

    static func getContact() -> Person {
        getContacts().shuffled()[0]
    }
}

