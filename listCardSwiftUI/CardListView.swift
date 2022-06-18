//
//  ContentView.swift
//  listCardSwiftUI
//
//  Created by Tai Nguyen on 17/06/2022.
//

import SwiftUI

struct CardListView: View {
    
    var cards: [Card] = CardList.topTen
    
    var body: some View {
        NavigationView {
            List(cards, id: \.id) { card in
                NavigationLink(destination: CardDetailView(card: card)) {
                    CardCell(card: card)
                }
            }
            .navigationTitle("List Card")
        }
    }
}
struct CardCell: View {
    var card: Card
    var body: some View {
        HStack {
            Image(card.imageName).resizable().scaledToFit().frame(height: 50).cornerRadius(4).padding(.vertical,4)
            
            VStack (alignment: .leading, spacing: 5) {
                Text(card.title).fontWeight(.semibold).lineLimit(2).minimumScaleFactor(0.5)
                
                Text(card.uploadDate).font(.subheadline).foregroundColor(.secondary)

            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
    }
}
