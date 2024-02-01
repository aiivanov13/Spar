import SwiftUI

struct PurchaseView: View {
    @State private var selectedTag = 1
    
    var body: some View {
        VStack {
            Picker(selection: $selectedTag, label: Text("Picker")) {
                Text("Шт").tag(1)
                Text("Кг").tag(2)
            }
            .pickerStyle(.segmented)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("55.9")
                            .font(.system(size: 30, weight: .bold))
                        
                        Image("rub_kg")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    
                    Text("199,0")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.green)
                    
                    HStack {
                        Image(systemName: "minus")
                        
                        VStack {
                            Text("1 шт")
                                .font(.system(size: 19, weight: .bold))
                            
                            Text("120,0₽")
                                .font(.system(size: 16))
                                .opacity(0.7)
                        }
                        .padding(.horizontal, 25)
                        
                        Image(systemName: "plus")
                    }
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.horizontal, 9)
                    .padding(.vertical, 5)
                    
                }
                .fixedSize()
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal)
    }
}

#Preview {
    PurchaseView()
}
