//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Sree Sai Raghava Dandu on 27/11/20.
//

import SwiftUI

struct SettingsLabelView: View {
//    MARK: -PROPERTIES
    var labelText: String
    var systemImage: String
//    MARK: -BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: systemImage)
        }//:HSTACK
    }
}
//   MARK: -PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", systemImage: "xmark")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
