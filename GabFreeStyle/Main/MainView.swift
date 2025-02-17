//
//  MainView.swift
//  GabFreeStyle
//
//  Created by Gab on 2/17/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var coordinator: Coordinator = .init()
    
    var body: some View {
        NavigationStack(path: coordinator.navigationPathBinding) {
            VStack {
                Text("테스트")
                    .onTapGesture {
                        coordinator.push(pages: [.second, .first, .third])
                    }
            }
            .modifier(NavigationPushModifier())
            .environmentObject(coordinator)
        }
    }
}

#Preview {
    MainView()
}
