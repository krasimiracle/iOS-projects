//
//  Profile.swift
//  CV
//
//  Created by Krasimir Stoyanov on 11.08.21.
//

import Foundation

struct Skill : Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience : Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

struct Profile {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experiences: [Experience]
}
