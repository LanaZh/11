//
//  SecondSwiftUIView.swift
//  iMusic
//
//

import SwiftUI

struct SecondSwiftUIView: View {
    
    @State private var multiSelection = Set<UUID>()
    @State private var listSet = Model.data
    @State var isEditMode = EditMode.active
    
    var body: some View {
       
        VStack {
            VStack {
                List (selection: $multiSelection) {
                    ForEach(listSet, id: \.id) { list in
                        HStack {
                            Image(systemName: list.image)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.red)
                                .frame(width: MetricLibrary.widthImage, height: MetricLibrary.heightImage)
                                .padding(MetricLibrary.paddingImage)
                            Text(list.title)
                                .foregroundColor(.black)
                                .font(.system(size: MetricLibrary.sizeFontText))
                                .fontWeight(.medium)
                        }
                    }
                    .onMove(perform: move)
                }
                .frame(height: MetricLibrary.heightFrame)
                .listStyle(PlainListStyle())
            }
            .environment(\.editMode, $isEditMode)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        listSet.move(fromOffsets: source, toOffset: destination)
    }
}

struct SecondSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSwiftUIView()
    }
}

struct MetricLibrary {
    
    static let widthImage: CGFloat = 20
    static let heightImage: CGFloat = 20
    static let paddingImage: CGFloat = 7
    static let sizeFontText: CGFloat = 20
    static let heightFrame: CGFloat = 120
}
