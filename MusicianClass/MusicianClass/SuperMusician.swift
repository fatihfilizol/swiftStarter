//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Fatih Filizol on 5.06.2022.
//

import Foundation

class SuperMusician : Musicians{
    
    func sing2(){
        print("Nothing Else Matters")
    }
    
    override func sing() {
        super.sing()
        print("Exit Light")
    }
}
