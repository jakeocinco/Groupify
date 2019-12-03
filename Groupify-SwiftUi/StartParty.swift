//
//  StartParty.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import SwiftUI

struct StartParty: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
            VStack {
                Text("Start Party!")
                    .font(.title)
                    .foregroundColor(Color(red: 0.117, green: 0.843, blue: 0.376, opacity: 1.0))
                
                TextField("Party Name...", text: $viewRouter.PartyName)
                    .padding(.horizontal,8.0)
                    .padding(.vertical,10.0).textFieldStyle(RoundedBorderTextFieldStyle())
                    .scaleEffect(1.0)
                    
                
                
                TextField("Your Name...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 8.0)
                    .padding(.vertical, 10.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .scaleEffect(1.0)
                    
                HStack {
                    Text(viewRouter.getPartyCode(elem:0))
                        .font(.largeTitle)
                        .padding(.horizontal, 4.0)
                        .frame(width: 30.0, height: 45.0)
                        .background(Color.init(red: 0.87, green: 0.87, blue: 0.87))
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    Text(viewRouter.getPartyCode(elem:1))
                        .font(.largeTitle)
                        .padding(.horizontal, 4.0)
                        .frame(width: 30.0, height: 45.0)
                        .background(Color.init(red: 0.87, green: 0.87, blue: 0.87))
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                    Text(viewRouter.getPartyCode(elem:2))
                        .font(.largeTitle)
                        .padding(.horizontal, 4.0)
                        .frame(width: 30.0, height: 45.0)
                        .background(Color.init(red: 0.87, green: 0.87, blue: 0.87))
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    Text(viewRouter.getPartyCode(elem:3))
                        .font(.largeTitle)
                        .padding(.horizontal, 4.0)
                        .frame(width: 30.0, height: 45.0)
                        .background(Color.init(red: 0.87, green: 0.87, blue: 0.87))
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                }
                .padding(.bottom, 8.0)
                
                ZStack{
                    Color.init(red: 0.18, green: 0.18, blue: 0.188)
                    .edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("Spotfy Login")
                            .font(.subheadline)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        HStack{
                            Image("fake-profile")
                            .resizable()
                                .padding(1.0)
                                .frame(width:50, height:50)
                                .overlay(Circle().stroke(Color.black, lineWidth: 5))
                            .clipShape(Circle())
                            
                            Text("@Jakeocinco")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .padding(.leading, 16.0)
                        }
                        Text("Logout")
                        .font(.subheadline)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                            .underline()
                    }
                    
                }
                .frame(width: 250.0, height: 115.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                
                
                Button(action: {self.viewRouter.change(cp:"party")})
                {StandardButtonContent(text:"Start the Party")}
                
                Button(action: {self.viewRouter.change(cp:"main")})
                {StandardButtonContent(text:"Back")}
                
            }
            .padding(.horizontal, 30.0)
            
        }
        
        
    }
}

struct StartParty_Previews: PreviewProvider {
    static var previews: some View {
        StartParty(viewRouter: ViewRouter())
    }
}





struct NextButtonContent : View {
    var body: some View {
        return Text("Next")
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}
