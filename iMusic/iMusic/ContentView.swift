//
//  ContentView.swift
//  iMusic
//
//

import SwiftUI

struct ContentView: View {

    @State var buttonSet = false
    
    var body: some View {
        //Color.gray.edgesIgnoringSafeArea(.all)
        NavigationView {
            ZStack {
                if buttonSet {
                    SecondSwiftUIView()
                } else {
                    FirstList()
                }
            }
            .navigationBarTitle("Медиатека")
            .toolbar(content: {
                Button(action: {
                buttonSet.toggle()
            }, label: {
                if buttonSet {
                    Text("Готово")
                        .foregroundColor(.red)
                } else {
                Text("Править")
                    .foregroundColor(.red)
                    }
                })
            })
        }
    tabBarButton()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


