//
//  tabBar.swift
//  iMusic
//
//

import SwiftUI

struct tabBarButton: View {
        var body: some View {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            ZStack {
            TabView {
                FirstList()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Поиск")
                    }
                Text("")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Медиатека")
                }
                radioView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Радио")
                        }
                    }
            .foregroundColor(.gray)
            }
            Visualplayer()
        })
    }
}
