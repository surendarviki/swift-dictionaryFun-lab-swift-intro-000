//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    
    var favoriteFlavorsOfIceCream:[String:String] = [ "Joe" : "Peanut Butter and Chocolate",
                                                      "Tim" : "Natural Vanilla",
                                                      "Sophie" : "Mexican Chocolate",
                                                      "Deniz" : "Natural Vanilla",
                                                      "Tom" : "Mexican Chocolate",
                                                      "Jim" : "Natural Vanilla",
                                                      "Susan" : "Cookies 'N' Cream"
]
    
    
    // 2.
    
    
    func names(forFlavor flavor: String) -> [String] {
        
        var retArray:[String] = []
        
        for (name,icecream) in favoriteFlavorsOfIceCream {
            
            if icecream == flavor {
                retArray.append(name)
            }
            
        }
        
        return retArray
        
    }
    
    
    
    // 3.
    
    
    
    func count(forFlavor:String)->Int{
        var counter = 0
        for (name,icecream) in favoriteFlavorsOfIceCream {
            if forFlavor == icecream {
                counter = counter + 1
            }
        }
        
        return counter
    
    }
    
    
    
    // 4.
   
    func flavor(forPerson:String)->String?{
    
        if let fav = favoriteFlavorsOfIceCream[forPerson] {
        
            return fav
        
        }else {
        
            return nil
        
        }
    
    }
    
    
    
    
    
    // 5.
   
    
    func replace(flavor:String,forPerson:String)->Bool{
    
    
        if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson) == nil {
            favoriteFlavorsOfIceCream.removeValue(forKey: forPerson)
            return false
        }else {
            return true
        }
    
    }
    
    
    
    
    // 6.
    
    
    
    func remove(person:String)->Bool {
    
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) == nil {
            return false
        }else {
            return true
        }
    
    
    }
    
    
    
    
    // 7.
    
    
    
    
    func numberOfAttendees()->Int{
    
        return favoriteFlavorsOfIceCream.count
    
    }
    
    
    
    // 8.
    
    
    
    
    func add(person:String,withFlavor:String)->Bool {
    
        let myval = favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
    
        if  myval == nil {
           return true
        }else {
            if let mynewval = myval {
                favoriteFlavorsOfIceCream[person] = mynewval
            }

            return false
        
        }
    
    
    }
    
    
    
    
    // 9.
    
    
    func attendeeList()->String {
    
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var retString = ""
        for (index,name) in allNames.enumerated() {
            
            if let icrm = favoriteFlavorsOfIceCream[name] {
            
                retString = "\(retString)\(name) likes \(icrm)"
            
            }
            
            
            if index+1 != allNames.count {
                retString = "\(retString)\n"
            }
            
        }
        
        return retString
    
    }
    
    
    
    

}
