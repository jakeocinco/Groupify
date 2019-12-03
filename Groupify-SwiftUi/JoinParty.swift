//
//  JoinParty.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import SwiftUI

struct JoinParty: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            Text("Join Party!")
                .font(.title)
            .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            
            TextField("Your Name...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 8.0)
            .padding(.vertical, 15.0)
                .frame(width: 350.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            .scaleEffect(1.0)
            
            Text("Party Code")
                .font(.headline)
                .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            HStack {
                TextField("1", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .fixedSize()
                .frame(width: 40.0, height: 50.0)
                TextField("2", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 40.0, height: 50.0)
                TextField("3", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 40.0, height: 50.0)
                TextField("4", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 40.0, height: 50.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: {self.viewRouter.change(cp:"party")})
            {StandardButtonContent(text:"Join the Party")}
            
            Button(action: {self.viewRouter.change(cp:"main")})
            {StandardButtonContent(text:"Back")}
        }
        
    }
    
}

struct JoinParty_Previews: PreviewProvider {
    static var previews: some View {
        JoinParty(viewRouter: ViewRouter())
    }
}


