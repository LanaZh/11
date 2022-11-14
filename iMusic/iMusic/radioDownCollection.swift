//
//  SectionRadio.swift
//  iMusic
//
//

import SwiftUI

struct radioCollection: View {

    let radioTableView = [
    GridItem(.flexible(maximum: 50))
    ]
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            LazyVGrid(columns: radioTableView){
                ForEach(0..<5) { index in
                    Rectangle()
                        .frame(width: 50)
                    }
                }
            } .offset(y: 20)
        } 
    }
