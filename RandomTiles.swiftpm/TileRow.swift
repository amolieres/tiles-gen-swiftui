//
//  TileRow.swift
//  RandomTiles
//
//  Created by Antonin MOLIERES on 03/07/2022.
//

import SwiftUI

struct TileRow: View {
    var tile: Tile
    
    var body: some View {
        HStack {
            Color(tile.color.colorUI).frame(width: 50, height: 50, alignment: .center).border(.black)
            VStack(alignment: .leading) {
                Text("\(tile.color.label)").font(.title)
                
                HStack {
                    Text("\(tile.index)")
                    Spacer()
                    Text("\(tile.intValue) on 60")
                                }
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                
            }
            
            
            
            
            
        }
    }
}

struct TileRow_Previews: PreviewProvider {
    static var previews: some View {
        let previewTile = Tile(index: 0)
        TileRow(tile: previewTile).previewLayout(.fixed(width: 300, height: 70))
    }
}
