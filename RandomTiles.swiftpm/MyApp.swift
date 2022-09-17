import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tiles: MyApp.generateTiles())
        }
    }
    
    static func generateTiles() -> Array<Tile> {
        var tiles = Array<Tile>()
        for index in 0...500 {
            tiles.append(Tile(index: index))
        }
        return tiles
    }
}
