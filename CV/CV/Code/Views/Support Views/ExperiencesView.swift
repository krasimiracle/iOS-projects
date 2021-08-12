//
//  ExperiencesView.swift
//  CV
//
//  Created by Krasimir Stoyanov on 12.08.21.
//

import SwiftUI

struct ExperiencesView: View {
    
    var experiences: [Experience]
    @State var showExperience = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24, content: {
            HStack(spacing: 16) {
                Text("Experience")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperience.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperience ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(14)
            
            if(showExperience) {
                    ForEach(experiences) {
                        experience in ExperienceView(experience: experience)
                    }
            }
        })
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {
            proxy in ExperiencesView(experiences: AppModel().profile.experiences).padding(24)
        }
    }
}
