//
//  SongCardView.swift
//  Groupify-SwiftUi
//
//  Created by Jacob Carlson on 12/2/19.
//  Copyright © 2019 Jacob Carlson. All rights reserved.
//

import SwiftUI

struct SongCardView: View {
    
    var song : String
    var artist : String
    var album : String
    var image : String
    
    var body: some View {
    ZStack {
        Color.init(red: 0.87, green: 0.87, blue: 0.87)
            .edgesIgnoringSafeArea(.all)
        VStack {
            Image(image)
                .resizable()
                .frame(width:350, height:350)
            VStack {
                Text(song)
                    .font(.largeTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                Text(artist)
                    .font(.headline)
                Text(album)//"Young the Giant (Special Edition)")
                Text("Queued by: Jake")
                    .padding(.top, 5.0)

            }
            .padding(.bottom, 25.0)
            .frame(width: 350.0, height: 150.0)
        }
    }
    .frame(width: 350.0, height: 500.0)
    .cornerRadius(20)
    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    
    }
}

struct SongCardView_Previews: PreviewProvider {
    static var previews: some View {
        SongCardView(song: String(),artist: String(), album: String(), image:String())
        
    }
}
