import Foundation

/**
 Exercise 5:
 Let's create the structure of a video game.

 Character has a life value and a name. It is capable of dying when it runs out of life and of greeting by saying its name.
 
 Hero inherits from Character. It has an attack strength value and is capable of attacking an Enemy that it receives as a parameter, reducing its life by an attack equal to a number between 0 and half of its strength.
 
 Wizard inherits from Hero. It has a magic value that adds half its value to the damage caused in an attack and reduces the damage inflicted when attacked by an Enemy by 1/4.
 
 Warrior inherits from Hero. It has a sword that at initialization will have an attack value that will be a random number from 0 to half of its strength. This sword inflicts extra damage on enemies equal to the total of that strength.
 
 Enemy inherits from Character. It has an attack strength value and can have three types of weapons, which will be chosen at initialization. The Axe weapon will do 10 damage on top of the attack damage, the Saber will do 5, and the Chain will do 2. It can also be that the Enemy is created without a weapon and then its strength will not increase in the attack.
 
 Create all necessary initializers, methods, and properties, as well as the ability to attack and die for each character susceptible to it, in addition to the other indicated behaviors. Use enumerations where it is more practical to represent data.
 */


class Character {
    var life: Int {
        didSet {
            if life < 0 {
                life  = 0
            }
        }
        willSet {
            if newValue <= 0 {
                dead = true
            }
        }
    }
    let name: String
    var dead: Bool  = false
    
    init(name: String, life: Int) {
        self.name = name
        self.life = life
    }
    
    func greet() {
        print("I'm \(name)")
    }
}


class Enemy: Character {
    
    enum Weapon {
        case Axe, Saber, Chain
    }
    
    let attackStrength: Int
    let weapon: Weapon?
    
    init(name: String, life: Int, attackStrength: Int, weapon: Weapon?) {
        self.attackStrength = attackStrength
        self.weapon = weapon
        super.init(name: name, life: life)
    }
    
    func attack(hero: Hero) {
        var attackValue = attackStrength
        
        if let weapon = weapon {
            switch weapon {
            case .Axe:
                attackValue += 10
            case .Saber:
                attackValue += 5
            case .Chain:
                attackValue += 2
            }
        }
        
        if hero is Wizard {
            attackValue -= attackValue / 4
        }
        
        hero.life -= attackValue
    }
}

class Hero: Character {
    let attackStrenth: Int
    
    init(name: String, life: Int, attackStrenth: Int) {
        self.attackStrenth = attackStrenth
        super.init(name: name, life: life)
    }
    
    func attack(enemy: Enemy) {
        enemy.life -= Int.random(in: 0...attackStrenth/2)
    }
}

class Wizard: Hero {
    let magicStrength: Int
    
    init(name: String, life: Int, attackStrenth: Int, magicStrength: Int) {
        self.magicStrength = magicStrength
        super.init(name: name, life: life, attackStrenth: attackStrenth)
    }
    
    override func attack(enemy: Enemy) {
        super.attack(enemy: enemy)
        enemy.life -= magicStrength / 2
    }
}


class Warrior: Hero {
    let swordStrength: Int
    
    override init(name: String, life: Int, attackStrenth: Int) {
        self.swordStrength = Int.random(in: 0...attackStrenth/2)
        super.init(name: name, life: life, attackStrenth: attackStrenth)
    }
    
    override func attack(enemy: Enemy) {
        super.attack(enemy: enemy)
        enemy.life -= swordStrength
    }
    
}



// Play
let enemyA = Enemy(name: "Enemigo1", life: 200, attackStrength: 20, weapon: .Chain)
let enemyB = Enemy(name: "Enemigo2", life: 300, attackStrength: 30, weapon: nil)
let warrior = Warrior(name: "Warior", life: 500, attackStrenth: 200)
let wizard = Wizard(name: "Wizard", life: 50, attackStrenth: 60, magicStrength: 10)


warrior.attack(enemy: enemyA)
enemyA.dead
enemyA.attack(hero: warrior)
warrior.dead
enemyA.attack(hero: warrior)
warrior.dead
warrior.attack(enemy: enemyA)
enemyA.life
enemyA.dead
warrior.attack(enemy: enemyA)
enemyA.life
enemyA.dead
warrior.attack(enemy: enemyA)
enemyA.life
enemyA.dead


wizard.attack(enemy: enemyB)
wizard.attack(enemy: enemyB)
wizard.attack(enemy: enemyB)
enemyB.attack(hero: wizard)
wizard.attack(enemy: enemyB)
enemyB.life
enemyB.dead
enemyB.attack(hero: wizard)
wizard.life
wizard.dead
enemyB.attack(hero: wizard)
wizard.life
wizard.dead
enemyB.attack(hero: wizard)
wizard.life
wizard.dead
