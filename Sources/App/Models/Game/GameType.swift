
enum GameType: String {
    case SG
    case BP
    case CAI
    case CR
    case DR
    case HB
    case HERO
    case HIDE
    case OITC
    case SP
    case TIMV
    case SKY
    case LAB
    case DRAW
    case SLAP
    case EF
    case MM
    case GRAV
    case RR
    case GNT
    case GNTM
    case PMK
    case SGN
    case BD
    case SPL
    case MIMV
    case BED
    case SURV
    case EE
}

extension GameType {
    func game() -> String {
        return rawValue
    }
    
    func prettyName() -> String {
        switch self {
        case .SG: return "Survival Games"
        case .BP: return "BlockParty"
        case .CAI: return "Cowboys and Indians"
        case .CR: return "Cranked"
        case .DR: return "DeathRun"
        case .HB: return "The Herobrine"
        case .HERO: return "SG: Heroes"
        case .HIDE: return "Hide and Seek"
        case .OITC: return "One in the Chamber"
        case .SP: return "Spleeg"
        case .TIMV: return "Trouble in Mineville"
        case .SKY: return "SkyWars"
        case .LAB: return "The Lab"
        case .DRAW: return "Draw It"
        case .SLAP: return "Slaparoo"
        case .EF: return "Electric Floor"
        case .MM: return "Music Masters"
        case .GRAV: return "Gravity"
        case .RR: return "Restaurant Rush"
        case .GNT: return "SkyGiants"
        case .GNTM: return "SkyGiants: Mini"
        case .PMK: return "Pumpkinfection"
        case .SGN: return "Survival Games 2"
        case .BD: return "BatteryDash"
        case .SPL: return "Sploop"
        case .MIMV: return "Murder in Mineville"
        case .BED: return "BedWars"
        case .SURV: return "Survive the Night"
        case .EE: return "Explosive Eggs"
            
        }
    }
}
