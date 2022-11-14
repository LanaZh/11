//
//  radioList.swift
//  iMusic
//
//

import SwiftUI

struct radioList: View {

    let pictRadio = [
    GridItem(.flexible(maximum: 160))
    ]
    var body: some View {
        ZStack (alignment: .leading) {
            Text("Эксклюзив")
                .foregroundColor(.gray)
                .offset(y: -145)
                .font(.system(size: 13))

            Text("Коллекция радиошоу Beats")
                .foregroundColor(.black)
                .font(.system(size: 20))
                .offset(y: -130)

        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: pictRadio) {
                ForEach(0..<5) { index in
                    Rectangle()
                        .frame(width: 150)
                    }
                }
            }
        }         .offset(y: 40)
    }
}

struct radioList_Previews: PreviewProvider {
    static var previews: some View {
        radioList()
    }
}


