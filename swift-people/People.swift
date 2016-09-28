//
//  People.swift
//  swift-people
//
//  Created by Rama Milaneh on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person{
    let name: String
    var ageInYears: Int?
    var skills = Set<String>()
    var qualifiedTutor: Bool{
        
        return self.skills.count>=4
    }
    
    init(name: String, ageInYears: Int?){
        self.name = name
        self.ageInYears = ageInYears
    }
    
    init(){
        //self.init(name :"John Doe", ageInYears: nil)
        self.name = "John Doe"
        self.ageInYears = nil
    }

    
    convenience init(name: String){
        
       self.init(name: name,ageInYears: nil)
            
        }
    
    func celebrateBirthday()->String{
        if ageInYears==nil{
            return ("HAPPY BIRTHDAY, \(self.name.uppercased())!!!")
        }else{
            self.ageInYears! += 1
            let number = ("\(self.ageInYears!)")+(self.ageInYears?.ordinal().uppercased())!
            return ("HAPPY \(number) BIRTHDAY, \(self.name.uppercased())!!!")
        }
    }
    
    func learnSkillBash(){
        self.skills.insert("bash")
    }
    func learnSkillXcode(){
        self.skills.insert("Xcode")

    }
    func learnSkillObjectiveC(){
        self.skills.insert("Objective-C")
        
    }
    func learnSkillSwift(){
        self.skills.insert("Swift")
        
    }
    func learnSkillInterfaceBuilder(){
        self.skills.insert("Interface Builder")
        
    }
    
    
    }
