//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var  currentLocation = "St.Louis"
    
    //saying who created this plane and airline
    //I have a property called author
    var author = ""
    //reads in the author
    init(myAuthor:String){
        author = myAuthor
    }
    
    //this should tell us if the airplane is running or not
    var running = false
    
    //starts the airplane so it means it's running
    func start() -> Bool { //Bool stands for Boolean which means true or false
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
         currentLocation = destination
    }
    
    
    //I want to tell every plane that I create from this class how far places are
    //I need the place and distance
    func distanceTo(target : String, current: String) -> Int {
        //I need to get information from the AviatrixData file
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
        //Swift uses ! to mean not, but it also uses it to say I know there is definitely data here
    }
    
    
    //I want to tell every plane that I create from the Aviatrix class where they can fly
    func knownDestinations() -> [String] {
        //change this function so I return all the options for destinations
        //I need to get information from the AviatrixData.swift file
        let data = AviatrixData()
        //I called the AviatrixData class
        return Array(data.knownDistances.keys)
        //I stored all of the keys or destinations in an Array
    }
}
