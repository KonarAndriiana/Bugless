//
//  HeadingView.swift
//  EDU
//
//  Created by Andriiana Konar on 16/11/2024.
//

import SwiftUI

struct HeadingView: View {
    let title : LocalizedStringKey
    let subttile: LocalizedStringKey
    
    var body: some View {
        VStack(alignment: .center , spacing: 40){
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text(subttile)
                .font(.system(size: 20))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    HeadingView(title: "Title", subttile: "Subtitle")
}
