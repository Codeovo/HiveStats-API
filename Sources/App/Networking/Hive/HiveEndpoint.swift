import Foundation

enum Hive {
    private let apiVersion = "v1"
    
    // MARK: - Server
    case playerCount
    case uniqueCount
    case globalAchievements
    
    // MARK: - Player
    case player(name: String)
    case playerGame(name: String, gameType: GameType)
}

extension Hive: Endpoint {
    var base: String {
        return "https://api.hivemc.com"
    }
    
    var path: String {
        switch self {
        case .playerCount: return "/\(apiVersion)/server/playercount"
        case .uniqueCount: return "/\(apiVersion)/server/uniquecount"
        case .globalAchievements: return "/\(apiVersion)/server/achievements"
            
        case .player(let name): return "/\(apiVersion)/player/\(name)"
        case .playerGame(let name, let game): return "/\(apiVersion)/player/\(name)/\(game.game())"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        default: return []
        }
    }
}
