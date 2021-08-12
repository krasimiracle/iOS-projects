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
