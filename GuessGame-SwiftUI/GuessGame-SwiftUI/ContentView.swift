import SwiftUI

struct ContentView: View {
    var correctAnswer = 0
    @State var score = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("?")
                    .font(.system(size: 40, weight: .bold))
            }
            .frame(height: 350)
            HStack {
                Text("Score: \(score)")
            }
            Button(action: {
                if correctAnswer == 0 {
                    score = score + 1
                }
            },
                   label: {
                    Image("fox")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
            Button(action: {
                if correctAnswer == 0 {
                    score = score + 1
                }
            },
                   label: {
                    Image("shiba")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
            Button(action: {
                if correctAnswer == 0 {
                    score = score + 1
                }
            },
                   label: {
                    Image("cat 2")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
