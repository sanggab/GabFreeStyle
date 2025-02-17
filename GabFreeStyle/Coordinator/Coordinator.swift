//
//  Coordinator.swift
//  GabFreeStyle
//
//  Created by Gab on 2/17/25.
//

import SwiftUI
import Combine

enum Pages: Equatable {
    case first
    case second
    case third
}

class Coordinator: ObservableObject {
    @Published private var presentPages: [Pages] = []
    
    var moveToThird: PassthroughSubject<Void, Never> = .init()
    
    var navigationPathBinding: Binding<[Pages]> {
        Binding {
            return self.presentPages
        } set: { newValue in
            self.presentPages = newValue
        }

    }
    
    func push(pages: [Pages]) {
        print("상갑 logEvent \(#function) pages: \(pages)")
        presentPages.append(contentsOf: pages)
    }
    
    func popup(pages: Pages) {
        presentPages.removeAll(where: { $0 == pages })
    }
    
    func popToRoot() {
        presentPages.removeAll()
    }
}


struct NavigationPushModifier: ViewModifier {
    @EnvironmentObject var coordinator: Coordinator
    
    func body(content: Content) -> some View {
//        NavigationStack(path: coordinator.navigationPathBinding) {
            content
                .navigationDestination(for: Pages.self) { value in
                    let _ = print("상갑 logEvent \(#function) NavigationPushModifier value: \(value)")
                    switch value {
                    case .first:
                        FirstView()
                            .environmentObject(coordinator)
                    case .second:
                        SecondView()
                            .environmentObject(coordinator)
                    case .third:
                        ThirdView()
                            .environmentObject(coordinator)
                    }
                }
//        }
    }
}
