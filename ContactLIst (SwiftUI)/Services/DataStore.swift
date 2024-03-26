//
//  Services.swift
//  ContactLIst (SwiftUI)
//
//  Created by Artem Lapov on 23.12.2022.
//

class DataStore {

    static let shared = DataStore()

    let names = [
        "Albert",
        "Anton",
        "Gregory",
        "Alex",
        "Helen",
        "Joan",
        "Maria",
        "Tim",
        "Igor",
        "John"
    ]

    let surnames = [
        "Smith",
        "Cook",
        "Yve",
        "Farmer",
        "Spears",
        "Schikonne",
        "Carrefour",
        "Chikov(a)",
        "Leps",
        "Noobsky"
    ]

    let emails = [
        "gogy@gmail.com",
        "luckystars@me.com",
        "devo4ka-konfetka1998@mail.ru",
        "zvezdasalami@myaso.ru",
        "maminotlichnik2007@school.de",
        "netvoya_1@mail.ru",
        "115419@pochta.ru",
        "info@apple.com",
        "ooooooooops@yahoo.net",
        "borsch@cook.eu"
    ]

    let phoneNumbers = [
        "5548488",
        "5500123",
        "2002001",
        "0010010",
        "1110001",
        "0505050",
        "2938673",
        "2561363",
        "1051059",
        "9900110",
        "000666000"
    ]

    private init() {}
}
