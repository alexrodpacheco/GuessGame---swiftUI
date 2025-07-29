import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("?")
                    .font(.system(size: 40, weight: .bold))
            }
            .frame(height: 350)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                   label: {
                    Image("fox")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                   label: {
                    Image("shiba")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                   label: {
                    Image("cat 2")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
