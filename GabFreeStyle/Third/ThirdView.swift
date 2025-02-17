//
//  ThirdView.swift
//  GabFreeStyle
//
//  Created by Gab on 2/17/25.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var coordiantor: Coordinator
    
    var body: some View {
        Text("ThirdView")
            .onTapGesture {
                coordiantor.popToRoot()
            }
            
    }
}

#Preview {
    ThirdView()
}
