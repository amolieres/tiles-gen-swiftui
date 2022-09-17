import SwiftUI

struct ContentView: View {
    
    var tiles: Array<Tile>
    
    
    var body: some View {
        List {
            ForEach(tiles, id: \.index) { tile in
                TileRow(tile: tile)
            }
            
        }
        VStack {
            
            
            Image(systemName: "gear.circle")
                .imageScale(.large)
                .foregroundColor(.red)
            Text("Tiles generator")
            
        }
    }
    
    
  
}

struct MyPreviewProvider_Previews: PreviewProvider {
    
    private static func generateTiles() -> Array<Tile> {
        var tiles = Array<Tile>()
        for index in 0...500 {
            tiles.append(Tile(index: index))
        }
        return tiles
    }
    
    static var previews: some View {
        ContentView(tiles: MyPreviewProvider_Previews.generateTiles())
    }
}
