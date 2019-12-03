//
//  Party.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import SwiftUI

struct Party: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            Text("Groupify").font(.largeTitle)
                .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            Text(viewRouter.PartyName + " - " + viewRouter.getPartyCode())
                .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            
            /// ADD CARD / / /
            SongCardView(song:"My Body", artist:"Young the Giant", album:"Young the Giant (Special Edition)", image:"ytg")
            
            
            TextField("Search a Song...", text: $viewRouter.Search).textFieldStyle(RoundedBorderTextFieldStyle()).scaleEffect(1.0)
                .frame(width: 350.0, height: 50.0)
            
            Button(action: {self.viewRouter.change(cp:"main")})
            {StandardButtonContent(text: "View Queue")}
            
            Button(action: {self.viewRouter.change(cp:"main")})
            {StandardButtonContent(text: "Leave")}
        }
    }
}

struct Party_Previews: PreviewProvider {
    static var previews: some View {
        Party(viewRouter: ViewRouter())
    }
}







