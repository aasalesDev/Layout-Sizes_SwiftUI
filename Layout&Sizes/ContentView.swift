//
//  ContentView.swift
//  Layout&Sizes
//
//  Created by Anderson Sales on 08/03/23.
//

import SwiftUI

struct ContentView: View {
    
    //This variable receives the size of the screen
    //let screenSize = UIScreen.main.bounds
    
    //Third in hierarchy
    var body: some View {
        
        
        GeometryReader { screenSize in
            
            HStack {
                VStack {
                    Text("This is a text")
                    Button("Print Screen Size") {
                        print(screenSize.size.width)
                        print(screenSize.size.height)
                    }
                }
            }
            //.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            //.background(.green)
        }
        .background(.red)
        
        /*
        //Second in hierarchy
        HStack (alignment: .center) {
            
            //First in hierarchy
            Text("Irmandade Swift")
                //.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .frame(width: screenSize.width/5, height: screenSize.height/2, alignment: .top)
                .background(.red)
                //.offset() -> keeps the original position (displace only)
            
            //First in hierarchy
            Text("Irmandade Swift")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
                .background(.blue)
            //.position() -> really moves the view
            
            Circle()
                .frame(width: 200)
                .background(.yellow)
                .foregroundColor(.purple)
        }
        .padding(20)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.green)
         
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
