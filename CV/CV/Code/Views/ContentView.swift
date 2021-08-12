//
//  ContentView.swift
//  CV
//
//  Created by Krasimir Stoyanov on 11.08.21.
//

import SwiftUI

struct ContentView: View {
    
    var appModel: AppModel = AppModel()
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(appModel: appModel)
                    SkillsView(skills: appModel.profile.skills, width: UIScreen.main.bounds.width - 48).padding(.top,32)
                    ExperiencesView(experiences: appModel.profile.experiences).padding(.top, 32)
                }
            }.padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
