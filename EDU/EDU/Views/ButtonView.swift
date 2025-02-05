//
//  TLButtonView.swift
//  EDU
//
//  Created by Andriiana Konar on 15/11/2024.
//

import SwiftUI

struct ButtonView: View {
    let name: LocalizedStringKey
    let action: () -> Void
    
    var body: some View {
        ZStack {
            Button(name) {
                action()
            }
        }
    }
}

#Preview {
    ButtonView(name: "Lets Start") {
        // Action
    }
}
