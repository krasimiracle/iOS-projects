//
//  HeaderView.swift
//  CV
//
//  Created by Krasimir Stoyanov on 11.08.21.
//

import SwiftUI

struct HeaderView: View {
    
    var appModel: AppModel

    var body: some View {
        VStack {
            Image("profile")
            Text(appModel.profile.name)
                .font(Montserrat.bold.font(size: 17))
            Text(appModel.profile.role)
                .font(Montserrat.mediumItalic.font(size: 14))
                .opacity(0.8)
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appModel.profile.location)
                    .font(Montserrat.medium.font(size: 14))
            }
            .opacity(0.45)
            .padding(.top, 4)
            
            Text(appModel.profile.description)
                .font(Montserrat.italic.font(size: 16))
                .opacity(0.7)
                .padding(.top, 24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
    }
}
