//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Benjamin Letham | Soccer Coordinator | March 12th 2017

/* Part 1 - "Please choose an appropriate data type to store the information for each player. In addition, create an empty collection variable to hold all the players’ data."
   
 -I'm using a dictionary for each player to store data. Data types will vary.
 -Then I'll create a single array containing these dictionaries to be used for Part 2. 
 
 */


// Player dictionaries

let player1: [String: String] = ["Name": "Joe Smith",
                                 "Height": "42",
                                 "Experience": "true",
                                 "Guardian/s": "Jim and Jan Smith"]

let player2: [String: String] = ["Name": "Jill Tanner",
                                 "Height": "36",
                                 "Experience": "true",
                                 "Guardian/s": "Clara Tanner"]

let player3: [String: String] = ["Name": "Bill Bon",
                                 "Height": "43",
                                 "Experience": "true",
                                 "Guardian/s": "Sara and Jenny Bon"]

let player4: [String: String] = ["Name": "Eva Gordon",
                                 "Height": "45",
                                 "Experience": "false",
                                 "Guardian/s": "Wendy and Mike Gordon"]

let player5: [String: String] = ["Name": "Matt Gill",
                                 "Height": "40",
                                 "Experience": "false",
                                 "Guardian/s": "Charles and Sylvia Gill"]

let player6: [String: String] = ["Name": "Kimmy Stein",
                                 "Height": "41",
                                 "Experience": "false",
                                 "Guardian/s": "Bill and Hillary Stein"]

let player7: [String: String] = ["Name": "Sammy Adams",
                                 "Height": "45",
                                 "Experience": "false",
                                 "Guardian/s": "Jeff Adams"]

let player8: [String: String] = ["Name": "Karl Saygan",
                                 "Height": "42",
                                 "Experience": "true",
                                 "Guardian/s": "Heather Bledsoe"]

let player9: [String: String] = ["Name": "Suzane Greenberg",
                                 "Height": "44",
                                 "Experience": "true",
                                 "Guardian/s": "Henrietta Dumas"]

let player10: [String: String] = ["Name": "Sal Dali",
                                 "Height": "41",
                                 "Experience": "false",
                                 "Guardian/s": "Gala Dali"]

let player11: [String: String] = ["Name": "Joe Kavalier",
                                 "Height": "39",
                                 "Experience": "false",
                                 "Guardian/s": "Sam and Elaine Kavalier"]

let player12: [String: String] = ["Name": "Ben Finkelstein",
                                 "Height": "44",
                                 "Experience": "false",
                                 "Guardian/s": "Aaron and Jill Finkelstein"]

let player13: [String: String] = ["Name": "Diego Soto",
                                 "Height": "41",
                                 "Experience": "true",
                                 "Guardian/s": "Robin and Sarika Soto"]

let player14: [String: String] = ["Name": "Chloe Alaska",
                                 "Height": "47",
                                 "Experience": "false",
                                 "Guardian/s": "David and Jamie Alaska"]

let player15: [String: String] = ["Name": "Arnold Willis",
                                 "Height": "43",
                                 "Experience": "false",
                                 "Guardian/s": "Vlaire Willis"]

let player16: [String: String] = ["Name": "Phillip Helm",
                                 "Height": "44",
                                 "Experience": "true",
                                 "Guardian/s": "Thomas Helm and Eva Jones"]

let player17: [String: String] = ["Name": "Les Clay",
                                 "Height": "42",
                                 "Experience": "true",
                                 "Guardian/s": "Wynonna Brown"]

let player18: [String: String] = ["Name": "Herschel Krustofski",
                                 "Height": "45",
                                 "Experience": "true",
                                 "Guardian/s": "Hyman and Rachel Krustofski"]


//Single array containing all player dictionaries 

var playerData = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


/* Part 2 - Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3.
 */

// Empty Team Arrays 

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Experience Arrays (temporary to be used for distribution)

var playersWithExperience: [[String: String]] = []
var playersWithoutExperience: [[String: String]] = []


for player in playerData {
    
    if player["Experience"] == "true" {
        playersWithExperience.append(player)
    } else if player["Experience"] != "true" {
        playersWithoutExperience.append(player)
    }

}

// Equal values (based on relevant data without magic numbers)

let teams = [teamDragons, teamSharks, teamRaptors]
let equalPlayersPerTeam: Int = playerData.count / teams.count

var evenExperiencedPlayers: Int = playersWithExperience.count / teams.count


// Iteration and distribution of equally experienced players into teams using all data. (With allowance for uneven amount of players, although not specifically asked for)

if playerData.count % teams.count == 0 {
    
    for experiencedPlayer in playersWithExperience {
        
        if teamDragons.count < teams.count {
            teamDragons.append(experiencedPlayer)
        } else if teamSharks.count < teams.count {
            teamSharks.append(experiencedPlayer)
        } else if teamRaptors.count < teams.count {
            teamRaptors.append(experiencedPlayer)
        } else {
            print("Something hasn't added up with experienced player distribution")
        }
    }
    
} else {
    print("Uneven amount of players!")
}

 
 if playerData.count % teams.count == 0 {
 
    for unexperiencedPlayer in playersWithoutExperience {
 
       if teamDragons.count < equalPlayersPerTeam {
           teamDragons.append(unexperiencedPlayer)
       } else if teamSharks.count < equalPlayersPerTeam {
           teamSharks.append(unexperiencedPlayer)
       } else if teamRaptors.count < equalPlayersPerTeam {
           teamRaptors.append(unexperiencedPlayer)
       } else {
           print("Something hasn't added up with unexperienced player distribution")
       }
   }
 
} else {
    print("Uneven amount of players!")
}

/* Add logic to ensure that each team's average height is within 1.5 inches of the others.
  (For exceeds expectations credit!) 
*/



func convertStringtoInt(player: [String: String]) -> Int {
    
    let heightValue = player["Height"]
    
    return Int(heightValue!)!
}

var teamDragonsHeightsInt: [Int] = [0]


for playerHeightString in teamDragons {
    
    
    var value = convertStringtoInt(player: playerHeightString)
    teamDragonsHeightsInt.append(value)
    
    }

var teamSharksHeightsInt: [Int] = [0]


for playerHeightString in teamSharks {
    
    
    var value = convertStringtoInt(player: playerHeightString)
    teamSharksHeightsInt.append(value)
    
}

var teamRaptorsHeightsInt: [Int] = [0]


for playerHeightString in teamRaptors {
    
    
    var value = convertStringtoInt(player: playerHeightString)
    teamRaptorsHeightsInt.append(value)
    
}

print(teamDragonsHeightsInt)
print(teamSharksHeightsInt)
print(teamRaptorsHeightsInt)

func teamAverageHeight(teamHeights: [Int]) -> Int{
    
    let team = teamHeights
    var sum = 0
    for height in team {
        sum += height
        
    }
    
    let averageSum = sum / teamDragons.count
    return averageSum
}

let teamDragonsAverageHeight = teamAverageHeight(teamHeights: teamDragonsHeightsInt)
let teamSharksAverageHeight = teamAverageHeight(teamHeights: teamSharksHeightsInt)
let teamRaptorsAverageHeight = teamAverageHeight(teamHeights: teamRaptorsHeightsInt)




/* Part 3 - Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice.
 
 Dragons - March 17, 1pm
 Sharks - March 17, 3pm
 Raptors - March 18, 1pm
 
*/














