//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Sree Sai Raghava Dandu on 26/11/20.
//

import SwiftUI

struct SourceLinkView: View {
    var fruit: Fruit
    var body: some View {
        GroupBox{
            HStack{
                Text("ContentSource")
                Spacer()
                Link("Wikipedia",destination:URL(string: "https://en.m.wikipedia.org/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
