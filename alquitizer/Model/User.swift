//
//  User.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 08/02/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefils = false
}
