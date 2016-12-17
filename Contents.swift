//: Playground - noun: a place where people can play
0=1
import UIKit

var names = [String]()
var statuses: [Bool] = [false]
var projects = [0]
var tasks = [0]
var x: Int
var y: Int
var lowestWorkload: Int?
var availableName: String?

func smartAssigning(names: [String], statuses: [Bool], projects: [Int], tasks: [Int]) -> String {
    
    for x in 0 ..< names.count {                        //compare people 1 through the next to last person
        while statuses[x] == false {                           //if they're not on vacation
            if statuses[x] == nil 
        
            
            
            for y in 1 ..< names.count {                            //to people 2 through the last person
                    while statuses[y] == false {                            //if they're not on vacation
                        if tasks[x] < tasks[y] {                                //if person 1 has less tasks
                            lowestWorkload = tasks[x]
                            availableName = names[x]
                        }
                        else if tasks[x] > tasks[y] {                           //if person 2 has less tasks
                            lowestWorkload = tasks[y]
                            availableName = names[y]
                        }
                        else if projects[x] < projects[y] {                     //when equal, if person 1 has less projects
                            lowestWorkload = projects[x]
                            availableName = names[x]
                        }
                        else if projects[x] > projects[y] {                     //when equal, if person 2 has less projects
                            lowestWorkload = projects[y]
                            availableName = names[y]
                        }
                        else {assert(availableName != nil)}
                        continue
                    }
                
                
                }
            continue
        }
    }
    return availableName!
}

smartAssigning(names: ["John", "Martin"], statuses: [false, false], projects: [2, 1], tasks: [16, 5])
smartAssigning(names: ["John", "Martin"], statuses: [false, true], projects: [2, 1], tasks: [1, 5])
smartAssigning(names: ["John", "Martin"], statuses: [false, false], projects: [1, 2], tasks: [6, 6])


            
            
