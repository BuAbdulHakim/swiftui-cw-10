//
//  ContentView.swift
//  SwiftUI-CW_10
//
//  Created by NasserAlsaqabi on 04/01/2021.
//

import SwiftUI
enum Mood {
    case happy, sad, meh, fine
}

struct ContentView: View {
    @State var MoodText: Mood
    
   
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                Text("I feel")
                    switch MoodText{
                    case .happy:
                        Text("happy")
                    case .sad:
                        Text("sad")
                    case .meh:
                        Text("meh")
                    case .fine:
                        Text("fine")
                    }                }
                .padding()
                    Divider()
                HStack{
                    Button(action: {
                        MoodText = Mood.happy
                    }, label: {
                        Text("😄")
                    })
                    Button(action: {
                        MoodText = Mood.sad
                    }, label: {
                        Text("😔")
                    })
                    Button(action: {
                        MoodText = Mood.meh
                    }, label: {
                        Text("😕")
                    })
                    Button(action: {
                        MoodText = Mood.fine
                    }, label: {
                        Text("😇")
                    })
                    
                }
            }.navigationBarTitle("MoodCheck")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(MoodText: .happy)
    }
}
