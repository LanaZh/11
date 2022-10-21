//
//  Miniplayer.swift
//  iMusic
//
//

import SwiftUI

struct Miniplayer: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        return 
    }
    
    func makeUIView(context: Context) ->  UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .light))
   return view
    }
}
