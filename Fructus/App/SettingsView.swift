//
//  SettingsView.swift
//  Fructus
//
//  Created by Sree Sai Raghava Dandu on 27/11/20.
//

import SwiftUI

struct SettingsView: View {
//    MARK:-PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
//    MARK: -BODY
    var body: some View {
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(spacing:20){
//                    MARK:-SECTION-1
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Fructus", systemImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment:.center,spacing:10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("Most fruits are naturally low in fat, sodium and calcium. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, diteary fiber,vitamins and much more.")
                                .font(.footnote)
                        }
                    }
//                    MARK:-SECTION-2
                    GroupBox(
                    label:SettingsLabelView(labelText: "Customization", systemImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                        Text("If you wish to restart your App, you can do so by toggling this button. It will take you to OnboardingScreen and you see welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn:$isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }
//                    MARK:-SECTION-3
                    GroupBox(label: SettingsLabelView(labelText: "App", systemImage: "apps.iphone")){
                        SettingsRowView(name: "Developer", content: "Sree Sai Raghava")
                        SettingsRowView(name: "Designer", content:"Sree Sai Raghava")
                        SettingsRowView(name: "Compatability",content: "iOS 14.0.2")
                        SettingsRowView(name: "Website",linkLabel: "RaghavaCodes",linkDestination: "apple.com")
                        SettingsRowView(name: "Twitter",linkLabel: "@imsreesai", linkDestination: "twitter.com/imsreesai")
                        SettingsRowView(name: "SwiftUI",content: "2.0.1")
                        SettingsRowView(name: "Version",content: "1.0.2")
                    }//:BOX
                     
                }//: VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {presentationMode.wrappedValue.dismiss()}){
                                            Image(systemName: "xmark")
                                        })
                .padding()
            }//:SCROLLVIEW
        }//:NAVIGATION
    }
}
//   MARK: -PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
