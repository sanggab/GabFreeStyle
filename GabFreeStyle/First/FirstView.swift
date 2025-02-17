//
//  FirstView.swift
//  GabFreeStyle
//
//  Created by Gab on 2/17/25.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var coordiantor: Coordinator
    
    var body: some View {
        Text("FirstView")
            .onTapGesture {
                coordiantor.push(pages: [.second])
            }
    }
}

#Preview {
    FirstView()
}
