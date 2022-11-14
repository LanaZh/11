//
//  FirstList.swift
//  iMusic
//
//

import SwiftUI

struct FirstList: View {
    var body: some View {
        VStack {
            Text("Ищите свою музыку?")
                .font(.system(size: 20))
            Text("Здесь будет храниться купленная Вами музыка")
                .multilineTextAlignment(.center)
                .font(.system(size: 15))
                .foregroundColor(.gray)
        }
        .navigationTitle("Медиатека")
    } 
}

struct FirstListStation_Previews: PreviewProvider {
    static var previews: some View {
        FirstList()
    }
}

