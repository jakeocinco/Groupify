//
//  ContentView.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack{
            Color.init(red: 0.098, green: 0.0784, blue: 0.0784)
            .edgesIgnoringSafeArea(.all)
            VStack {
                if viewRouter.currentPage == "main" {
                    MainPage(viewRouter: viewRouter)
                    //StartParty_struc
                } else if viewRouter.currentPage == "start" {
                    StartParty(viewRouter: viewRouter)
                    //StartParty_struc
                } else if viewRouter.currentPage == "join" {
                    JoinParty(viewRouter: viewRouter)
                    //JoinParty_struc(viewRouter: viewRouter)
                } else if viewRouter.currentPage == "party" {
                    Party(viewRouter: viewRouter)
                    //JoinParty_struc(viewRouter: viewRouter)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}

struct StandardButtonContent : View {
    
    var text : String
    
    var body: some View {
        return Text(text)
            .foregroundColor(.white)
            .frame(width: 350, height: 40)
            .background(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
            .cornerRadius(15)
            .padding(.all, 15)
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
