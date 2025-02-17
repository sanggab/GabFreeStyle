//
//  SecondView.swift
//  GabFreeStyle
//
//  Created by Gab on 2/17/25.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var coordiantor: Coordinator
    
    var body: some View {
        Text("SecondView")
            .onTapGesture {
                coordiantor.push(pages: [.third])
//                interactor.moveToThird()
            }
    }
}

#Preview {
    SecondView()
}
