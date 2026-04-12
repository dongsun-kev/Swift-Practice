//
//  Untitled.swift
//  Birthdays
//
//  Created by DS on 4/12/26.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
    
    var isBirthdayToday : Bool {
        Calendar.current.isDateInToday(birthday)
    }
}
