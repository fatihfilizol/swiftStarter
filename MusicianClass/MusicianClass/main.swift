//
//  main.swift
//  MusicianClass
//
//  Created by Fatih Filizol on 5.06.2022.
//

import Foundation

let james = Musicians(nameInit: "James Quick", ageInit: 32, instrumentInit: "Pinao", typeInit: .Pianist)
print(james.name)
print(james.instrument)
print(james.age)
print(james.type)
james.sing()

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: .LeadGuitar)
kirk.sing()
kirk.sing2()
