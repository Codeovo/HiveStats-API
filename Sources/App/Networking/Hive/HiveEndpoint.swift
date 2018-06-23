import Foundation

enum Hive {
    // MARK: - Server
    case playerCount
    case uniqueCount
    case globalAchievements
    
    // MARK: - Player
    case player(name: String)
    case playerGame(name: String, game: GameType)
    
    // MARK: - Leaderboard
    case leaderboard(game: GameType)
    
    // MARK: - Maps
    case gameMaps(game: GameType)
    case mapDetails(game: GameType, map: String)
}

extension Hive: Endpoint {
    var base: String {
        return "https://api.hivemc.com"
    }
    
    var path: String {
        switch self {
        case .playerCount: return "/v1/server/playercount"
        case .uniqueCount: return "/v1/server/uniquecount"
        case .globalAchievements: return "/v1/server/achievements"
            
        case .player(let name): return "/v1/player/\(name)"
        case .playerGame(let name, let game): return "/v1/player/\(name)/\(game.game())"
            
        case .gameMaps(let game): return "/v1/game/\(game.game())/maps"
        case .mapDetails(let game, let map): return "/v1/game/\(game.game())/maps/\(map)"
            
        case .leaderboard(let game): return "/v1/game/\(game.game())/leaderboard/1/200"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        default: return []
        }
    }
}
