import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                ProductCardView()
                    .tabItem {
                        Image("spar")
                            .renderingMode(.template)
                        
                        Text("Главная")
                    }
                
                ProductCardView()
                    .tabItem {
                        Image("menu")
                            .renderingMode(.template)
                        
                        Text("Каталог")
                    }
                
                ProductCardView()
                    .tabItem {
                        Image("cart")
                            .renderingMode(.template)
                        
                        Text("Корзина")
                    }
                
                ProductCardView()
                    .tabItem {
                        Image("person")
                            .renderingMode(.template)
                        
                        Text("Профиль")
                    }
            }
            .onAppear() {
                UITabBar.appearance().backgroundColor = .white
                UITabBar.appearance().barTintColor = .white
            }
            .accentColor(.green)
            
            ZStack {
                Color(UIColor.white)
                    .shadow(color: .gray.opacity(0.1), radius: 5, y: -10)
                
                PurchaseView()
            }
            .padding(.bottom, 49)
            .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    ContentView()
}
