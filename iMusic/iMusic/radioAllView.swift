//
//  radioView.swift
//  iMusic
//
//

import SwiftUI

struct radioView: View {
    var body: some View {
        NavigationView {
        ZStack {
            radioList()
            radioCollection()
            }
        .navigationTitle("Радио")
    }
}
    
struct radioView_Previews: PreviewProvider {
    static var previews: some View {
        radioView()
        }
    }
}

