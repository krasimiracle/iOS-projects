//
//  ExperienceView.swift
//  CV
//
//  Created by Krasimir Stoyanov on 12.08.21.
//

import SwiftUI

struct ExperienceView: View {
    
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle().frame(width: 10, height: 10)
                .opacity(0.65)
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    Text(experience.role)
                        .font(Montserrat.semibold.font(size: 18))
                    Text(experience.companyName)
                        .font(Montserrat.medium.font(size: 16))
                        .opacity(0.7)
                    Text(experience.duration)
                        .font(Montserrat.mediumItalic.font(size: 16))
                        .opacity(0.4)

                }.padding(.leading, 16)
            }.padding(.top, 8)
        }
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {
            proxy in         ExperienceView(experience: AppModel().profile.experiences[0]).padding(24)
        }
    }
}
