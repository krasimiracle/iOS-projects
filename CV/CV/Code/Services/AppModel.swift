//
//  AppModel.swift
//  CV
//
//  Created by Krasimir Stoyanov on 11.08.21.
//

import Foundation

class AppModel: ObservableObject {
    var profile: Profile = Profile(name: "Krasimir Stoyanov", role: "Mobile Developer", description: "Passionate about everything mobile", location: "Sofia, Bulgaria", skills: [Skill(id: UUID().uuidString, skillName: "Android", image: "iphone")], experiences: [Experience(id: UUID().uuidString, companyName: "Mobile Waves Solutions", role: "Android Developer", duration: "Feb 2019-Dec 2020")])
}
