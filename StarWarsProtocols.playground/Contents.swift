

/*:
 Place your refactored structs below:
 */
protocol forcePowers {
    func lightSaberSkill() -> Int
    func telekinesis() -> Int
    func prescience() -> Int
}

extension forcePowers{
    func lightSaberSkill() -> Int { return 8 }
    func telekinesis() -> Int { return 5 }
    func prescience() -> Int { return 5 }
}

protocol jediPowers {
    func introspection() -> String
    func mindControl() -> String
}

extension jediPowers {
    func introspection() -> String { return "Search your feelings." }
}

protocol sithPowers {
    func forceChoke() -> Bool
    func forceLightning() -> Bool

}

extension sithPowers{
    func forceChoke() -> Bool { return true }
    func forceLightning() -> Bool { return true }
}


protocol Sith: forcePowers, sithPowers {}

protocol Jedi: forcePowers, jediPowers {}


struct MasterYoda: Jedi {
    func telekinesis() -> Int { return 9 }
    func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan: Jedi {
    func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon: Jedi {
    func mindControl() -> String { return "Republic credits will do." }
    func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}


struct DarthVader: Sith{
    func lightSaberSkill() -> Int { return 9 }
    func telekinesis() -> Int { return 8 }
    func forceLightning() -> Bool { return false }
}

struct DarthSidious: Sith{
    func telekinesis() -> Int { return 7 }
    func prescience() -> Int { return 6 }
}

struct DarthTyrannous: Sith{
    func forceChoke() -> Bool { return false }
    
}


var yoda: MasterYoda = MasterYoda()
print(yoda.introspection())
print(yoda.telekinesis())

var darthvader: DarthVader = DarthVader()
print(darthvader.forceLightning())
print(darthvader.forceChoke())

