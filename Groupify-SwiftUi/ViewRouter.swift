//
//  ViewRouter.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "main" {
        didSet {
            self.objectWillChange.send(self)
        }
    }
    
    var PartyName: String = ""
    var FirstName: String = ""
    var PartyCode: [String] = [
        String(Int.random(in: 1..<10)),
        String(Int.random(in: 1..<10)),
        String(Int.random(in: 1..<10)),
        String(Int.random(in: 1..<10))]
    
    var Search: String = ""
    
    func change(cp: String) {
        self.currentPage = cp
    }
    
    func setPartyName(partyName: String) {
        self.PartyName = partyName
    }
    
    func setFirstName(firstName: String) {
        self.FirstName = firstName
    }
    
    func setPartyCode(partyCode: [String]) {
        self.PartyCode = partyCode
    }
    
    func getPartyCode(elem : Int) -> String{
        return PartyCode[elem]
    }
    
    func getPartyCode() -> String{
        return PartyCode[0] + PartyCode[1] + PartyCode[2] + PartyCode[3]
    }
}
