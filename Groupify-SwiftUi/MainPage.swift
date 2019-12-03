//
//  MainPage.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import SwiftUI

struct MainPage: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            
            Text("Groupfiy")
            .font(.largeTitle)
                .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
                .padding(.bottom, 20.0)
            
            Text("Welcome to Groupify, an application designed to give users the ability to contribute to a set list in real time. Start or Join a party with friends to get started.")
            .multilineTextAlignment(.center)
                .padding(.vertical, 10.0)
            .frame(width: 350, height: 120)
            .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            
            
            Button(action: {self.viewRouter.change(cp:"start")})
                {StandardButtonContent(text:"Start a Party")}
            
            Text("- or -")
            .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            
            Button(action: {self.viewRouter.change(cp:"join")})
                {StandardButtonContent(text:"Join a Party")}
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage(viewRouter: ViewRouter())
    }
}


struct StartPartyButtonContent : View {
    var body: some View {
        return Text("Start a Party")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}

struct JoinPartyButtonContent : View {
    var body: some View {
        return Text("Join a Party")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}
