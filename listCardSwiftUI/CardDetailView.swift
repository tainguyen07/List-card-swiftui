//
//  CardDetailView.swift
//  listCardSwiftUI
//
//  Created by Tai Nguyen on 18/06/2022.
//

import SwiftUI

struct CardDetailView: View {
    var card: Card
    var body: some View {
        VStack {
            Image(card.imageName).resizable().scaledToFit().frame(height: 200).cornerRadius(4).padding(.vertical,12)
            
            VStack (alignment: .leading, spacing: 5) {
                Text(card.title).fontWeight(.semibold).lineLimit(2).minimumScaleFactor(1)
                
                Text(card.uploadDate).font(.subheadline).foregroundColor(.secondary)

            }
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: CardList.topTen.first!)
    }
}
