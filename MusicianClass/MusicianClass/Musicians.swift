//
//  Musicians.swift
//  MusicianClass
//
//  Created by Fatih Filizol on 5.06.2022.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Pianist
    case Drummer
    case Bassist
    case Violensit
}


class Musicians{
    
    //Property
    var name: String
    var age: Int
    var instrument: String
    var type: MusicianType
    
    // Initializer (Constructor)
    init(nameInit:String, ageInit:Int, instrumentInit:String, typeInit:MusicianType) {
        print("Musician Created")
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing(){
        print("Türk Marşı")
    }
    
}
