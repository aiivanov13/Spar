import SwiftUI

struct FeedbackView: View {
    private let rows = [GridItem()]
    
    var body: some View {
        HStack {
            Text("Отзывы")
                .font(.system(size: 23, weight: .bold))
            
            Spacer()
            
            Button {
            } label: {
                Text("Все 152")
                    .font(.headline)
                    .foregroundColor(.green)
            }
        }
        .padding([.horizontal, .top])
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<10) { _ in
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .shadow(color: .gray.opacity(0.17), radius: 6)
                        
                        VStack(alignment: .leading) {
                            Text("Александр В.")
                                .font(.system(size: 20, weight: .bold))
                            
                            Text("7 мая 2021")
                                .foregroundColor(.gray)
                            
                            HStack {
                                ForEach(0..<4) { index in
                                    Image("star")
                                }
                                
                                Image("star")
                                    .renderingMode(.template)
                                    .opacity(0.6)
                                    .foregroundColor(.gray)
                            }
                            
                            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                                .lineLimit(3)
                                .padding(.top, 2)
                            
                        }
                        .padding()
                    }
                    .frame(width: 280)
                    .padding(.trailing, 10)
                }
            }
            .padding()
        }
        
        Button {
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 2)
                
                Text("Оставить отзыв")
                    .font(.headline)
                    .padding(10)
            }
            .fixedSize(horizontal: false, vertical: true)
        }
        .foregroundColor(.green)
        .padding([.horizontal, .bottom])
    }
}

#Preview {
    FeedbackView()
}
