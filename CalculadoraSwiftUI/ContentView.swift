//
//  ContentView.swift
//  CalculadoraSwiftUI
//
//  Created by BENJAMIN ORIBE MENDIETA on 07/01/20.
//  Copyright © 2020 BENJAMIN ORIBE MENDIETA. All rights reserved.
//

import SwiftUI

struct CalcButtonStruct: Hashable {
    
    var text:String
    var isDouble:Bool
    var bColor:Color;
}

struct ContentView: View {
    
    let buttons: [[CalcButtonStruct]] =
    [
        [CalcButtonStruct(text:"AC",isDouble:false,bColor: Color(.lightGray)),CalcButtonStruct(text:"+/-",isDouble:false,bColor: Color(.lightGray)),CalcButtonStruct(text:"%",isDouble:false,bColor: Color(.lightGray)),CalcButtonStruct(text:"/",isDouble:false,bColor: Color(.orange))],
        [CalcButtonStruct(text:"7",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"8",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"9",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"X",isDouble:false,bColor: Color(.orange))],
        [CalcButtonStruct(text:"4",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"5",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"6",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"-",isDouble:false,bColor: Color(.orange))],
       [CalcButtonStruct(text:"1",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"2",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"3",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"+",isDouble:false,bColor: Color(.orange))],
       [CalcButtonStruct(text:"0",isDouble:true,bColor: Color(.darkGray)),CalcButtonStruct(text:".",isDouble:false,bColor: Color(.darkGray)),CalcButtonStruct(text:"=",isDouble:false,bColor: Color(.orange))],
       
    ]
    var body: some View {
        
        ZStack(alignment: .bottom)
        {
            Color.black.edgesIgnoringSafeArea(.all)
        VStack(spacing:12)
        {
            
            HStack(spacing:12)
            {
                Spacer()
                Text("42").foregroundColor(.white).font(.system(size:64))
                
            }.padding()
            
            ForEach(buttons,id: \.self)
            {
                row in
                HStack
                {
                    ForEach(row,id: \.self)
                    {
                        button in
                   
                       Button(action: {})
                       { Text(button.text).font(.system(size:31)).frame(width:self.buttonWidth(isDouble:button.isDouble),height:self.buttonHeight()).background(button.bColor).foregroundColor(.white)
                        .cornerRadius(self.buttonWidth(isDouble: button.isDouble))
                        }
                    }
                    
                }
            }
        }.padding(.bottom)
        }
    }
    func buttonWidth(isDouble:Bool)->CGFloat
    {
        if isDouble
        {
            return (UIScreen.main.bounds.width - 5*12)/2
        }
        
        return (UIScreen.main.bounds.width - 5*12)/4
    }
    func buttonHeight()->CGFloat
    {
        return (UIScreen.main.bounds.width - 5*12)/4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
