import SwiftUI

struct ContentView: View {
    @State var correctAnswer = 0
    @State var score = 0
    @State var gameTitle = "?"
    @State var gameSubtitle = "Can you guess wich animal?"
    
    var body: some View {
        VStack {
            VStack {
                Text(gameTitle)
                    .font(.system(size: 40, weight: .bold))
                Text(gameSubtitle)
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
            }
            .frame(height: 350)
            HStack {
                Text("Score: \(score)")
            }
            Button(action: {
                checkCorrectAnswer(answer: 0)
            },
                   label: {
                    Image("fox")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
            Button(action: {
                checkCorrectAnswer(answer: 1)
            },
                   label: {
                    Image("shiba")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
            })
            Button(action: {
                checkCorrectAnswer(answer: 2)
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
    
     private func checkCorrectAnswer(answer: Int) {
        if answer == correctAnswer {
            score += 1
            gameTitle = "Correct Anwser!"
        } else {
            if score != 0 {
                score -= 1
                gameTitle = "Failed!"
            }
        }
        selectGameSubtitle()
        randomizeCorrectAnswer()
    }
    
    private func randomizeCorrectAnswer() {
        let randomAnswer = Int.random(in: 0..<3)
        correctAnswer = randomAnswer
    }
    
    private func selectGameSubtitle() {
        if correctAnswer == 0 {
            gameSubtitle = "The correct anwser is fox"
        } else if correctAnswer == 1 {
            gameSubtitle = "The correct anwser is dog"
        } else if correctAnswer == 2 {
            gameSubtitle = "The correct anwser is cat"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
