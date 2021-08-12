//
//  SkillView.swift
//  CV
//
//  Created by Krasimir Stoyanov on 12.08.21.
//

import SwiftUI

struct SkillView: View {
    
    var skill: Skill
    var width: CGFloat = 120
    
    var body: some View {
        VStack {
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
            Text(skill.skillName)
                .font(Montserrat.semibold.font(size: 13.5))
                .padding(.top, 4)
        }
        .padding()
        .frame(width: width, height: 110)
        .background(RoundedRectangle(cornerRadius: 12))       .opacity(0.075)
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().profile.skills[0])
    }
}
