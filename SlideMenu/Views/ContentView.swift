//
//  ContentView.swift
//  SlideMenu
//
//  Created by Sardorbek Saydamatov on 04/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu: Bool = false
    @State private var selectedTab = 0
    @State private var navigationTitle: Array = ["Dashboard", "Performance", "Profile"]
    var body: some View {
            ZStack {
                Group {
                    switch selectedTab {
                    case 0:
                        Dashboard()
                    case 1:
                        Performance()
                    case 2:
                        Profile()
                    default:
                        EmptyView()
                    }
                }
                
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .navigationTitle(navigationTitle[selectedTab])
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
