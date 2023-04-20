import SwiftUI

     




struct HomePage: View{
    
    var body: some View{
        
        
        NavigationView{
            ZStack{
                Rectangle()
                    .fill(Color("Grey"))
                    .padding(0)
                    .ignoresSafeArea()
                VStack {
                    
                    Text("SortSmart")
                        .font(.system(size:100,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                        .font(.title)
                    
                    Text("Understanding Sorting Algorithms")
                        .foregroundColor(.white)
                        .padding(.bottom,200)
                        .font(.system(size: 50))
                    
                    
                    HStack{
                        NavigationLink(destination: LearnPage().navigationBarBackButtonHidden(true), label:{
                            
                            Text("Get Started")
                                .foregroundColor(.white)
                                .font(.system(size:60))
                                .padding(10)
                                .background(.blue)
                                .cornerRadius(10)
                            
                            
                        }
                        )
                    }
                    Button(""){
                    }
                    .padding(200)
                }
                
                
                
            }
            
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    struct LearnPage: View{
        
        var body: some View{
            
            
            NavigationView{
                ZStack{
                    Rectangle()
                        .fill(Color("Grey"))
                        .padding(0)
                        .ignoresSafeArea()
                    VStack {
                        
                        Text("What are sorting algorithms?")
                            .font(.system(size:60,weight: .bold))
                            .foregroundColor(.white)
                            .padding(.bottom, 50)
                            .padding(.top,60)
                            .padding(.horizontal,10)
                            .multilineTextAlignment(.center)
                            .font(.title)
                        
                        Text("Sorting algorithms are algorithms that organize a collection of data in a specific order, such as numerical or alphabetical order. The goal of a sorting algorithm is to rearrange the elements of a collection in a way that makes them easier to find, access, and manage.")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom,0.0)
                            .padding(.trailing, 20)
                            .padding(.leading,20)
                            .font(.system(size: 40))
                            .padding(.top,0)
                            .frame(height:350)
                        
                    
                        
                        
                        
                        
                        
                        NavigationLink(destination: LearnPageDos().navigationBarBackButtonHidden(true), label:{
                            
                            Text("Continue")
                                .foregroundColor(.white)
                                .font(.system(size:40))
                                .padding(.vertical,10)
                                .padding(.horizontal,10)
                                .background(.blue)
                                .cornerRadius(10)
                            
                            
                        }
                        )
                        
                        Spacer()
                        
                    }
                    .padding(10)
                    
                    
                    
                }
                
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
        }
        
        struct LearnPageDos: View{
            
            var body: some View{
                
                
                NavigationView{
                    ZStack{
                        Rectangle()
                            .fill(Color("Grey"))
                            .padding(0)
                            .ignoresSafeArea()
                        VStack {
                            
                            Text("What are sorting algorithms?")
                                .font(.system(size:60,weight: .bold))
                                .foregroundColor(.white)
                                .padding(.bottom, 50)
                                .padding(.top,60)
                                .padding(.horizontal,20)
                                .multilineTextAlignment(.center)
                                .font(.title)
                            
                            Text("Sorting algorithms have numerous applications in various fields such as finance, healthcare, transportation, and social media. Whether it be in a simple project or an advanced machine learning algorithm, the efficiency and convenience provided by sorting algorithms are essential to computer science. Now you can see some examples!")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.bottom,0.0)
                                .padding(.trailing, 20)
                                .padding(.leading,20)
                                .font(.system(size: 40))
                                .padding(.top,0)
                                .frame(height:400)
                            
                        
                            
                            
                            
                            
                            
                            NavigationLink(destination: BubbleSortView().navigationBarBackButtonHidden(true), label:{
                                
                                Text("Explore")
                                    .foregroundColor(.white)
                                    .font(.system(size:40))
                                    .padding(.bottom,10)
                                    .padding(.top,10)
                                    .background(.blue)
                                    .cornerRadius(10)
                                
                                
                            }
                            )
                            
                            Spacer()
                            
                        }
                        
                        
                        
                    }
                    
                    
                }
                .navigationViewStyle(StackNavigationViewStyle())
                
            }
            
            
            
            
            
            
            struct BubbleSortView: View{
                
                @State var values : [Int] = [Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)
                                             ,Int.random(in: 1..<10)]
                
                
                
                
                
                var body: some View{
                    NavigationView{
                        ZStack{
                            Rectangle()
                                .fill(Color("Grey"))
                                .padding(0)
                                .ignoresSafeArea()
                            VStack {
                                
                                Text("Visualized Sorting Methods")
                                    .font(.system(size:50,weight: .bold))
                                    .foregroundColor(.white)
                                    .padding(0)
                                
                                HStack{
                                    
                                    Text("Bubble Sort")
                                        .font(.system(size:60,weight: .bold))
                                        .foregroundColor(.blue)
                                    
                                    
                                   
                                }
                                HStack{
                                    Button("Sort") {
                                        bubble()
                                        
                                    }
                                    .foregroundColor(.white)
                                    .buttonStyle(.borderedProminent)
                                    .font(.system(size:30))
                                    .controlSize(.large)
                                    .tint(.blue)
                                    .padding(.trailing,20)
                                    
                                    Button("Scramble") {
                                        scramble()
                                    }
                                    .foregroundColor(.white)
                                    .buttonStyle(.borderedProminent)
                                    .font(.system(size:30))
                                    .controlSize(.large)
                                    .tint(.blue)
                                    .padding(.trailing,20)
                                }
                                .padding(.bottom,-30)
                                NavigationLink(destination: SelectionSortView().navigationBarBackButtonHidden(true), label:{
                                    ZStack{
                                        Text("Next >")
                                            .font(.system(size:30))
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                            .padding(30)
                                    }
                                })
                                
                                HStack{
                                    
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[0])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[1])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[2])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[3])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[4])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[5])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[6])*50)
                                        .padding(10)
                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                                        .fill(.blue)
                                        .frame(width:10,height:CGFloat(values[7])*50)
                                        .padding(10)
                                    
                                    
                                    
                                }
                                .padding(40)
                                
                                Text("Bubble Sort is the simplest sorting algoritm that works by repeatedly swapping the adjacent elements if they are in the wrong order")
                                    .foregroundColor(.white)
                                    .padding(.horizontal,30)
                                    .font(.system(size: 40))
                                
                            }
                            
                        }
                        
                    }
                    .navigationViewStyle(StackNavigationViewStyle())
                    
                }
                func scramble(){
                    for i in 0...values.count-1{
                        values[i] = Int.random(in: 1..<10)
                        
                        
                        
                    }
                    
                }
                
                
                
                func bubble(){
                    DispatchQueue.global(qos: .background).async{
                        let n = values.count
                        
                        for i in 0..<n{
                            for j in 0..<values.count-i-1{
                                
                                if values[j]>values[j+1]{
                                    Thread.sleep(forTimeInterval: 0.1)
                                    values.swapAt(j+1,j)
                                    
                                }
                                
                            }
                            
                        }
                    }
                }
                
                
                
                
                
                
                
                
                struct SelectionSortView: View{
                    
                    @State var values : [Int] = [Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)
                                                 ,Int.random(in: 1..<10)]
                    
                    
                    
                    
                    
                    var body: some View{
                        NavigationView{
                            ZStack{
                                Rectangle()
                                    .fill(Color("Grey"))
                                    .padding(0)
                                    .ignoresSafeArea()
                                VStack {
                                    
                                    Text("Visualized Sorting Methods")
                                        .font(.system(size:50,weight: .bold))
                                        .foregroundColor(.white)
                                        .padding(0)
                                    
                                    HStack{
                                        
                                        Text("Selection Sort")
                                            .font(.system(size:60,weight: .bold))
                                            .foregroundColor(.red)
                                        
                                        
                                        
                                    }
                                    
                                    HStack{
                                        Button("Sort") {
                                            select()
                                            
                                        }
                                        .foregroundColor(.white)
                                        .buttonStyle(.borderedProminent)
                                        .font(.system(size:30))
                                        .controlSize(.large)
                                        .tint(.red)
                                        .padding(.trailing,20)
                                        
                                        Button("Scramble") {
                                            scramble()
                                        }
                                        .foregroundColor(.white)
                                        .buttonStyle(.borderedProminent)
                                        .font(.system(size:30))
                                        .controlSize(.large)
                                        .tint(.red)
                                        .padding(.trailing,20)
                                    }
                                    .padding(.bottom,-30)
                                    NavigationLink(destination: InsertionSortView().navigationBarBackButtonHidden(true), label:{
                                        ZStack{
                                            Text("Next >")
                                                .font(.system(size:30))
                                                .foregroundColor(.white)
                                                .clipShape(Capsule())
                                                .padding(30)
                                        }
                                    })

                                    
                                    HStack{
                                        
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[0])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[1])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[2])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[3])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[4])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[5])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[6])*50)
                                            .padding(10)
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .fill(.red)
                                            .frame(width:10,height:CGFloat(values[7])*50)
                                            .padding(10)
                                        
                                        
                                        
                                    }
                                    .padding(40)
                                    
                                    
                                    
                                    Text("Selection sort is a simple and efficient sorting algorithm that works by repeatedly selecting the smallest element form the unsorted portion of the list and moving it to the sorted portion of the list until its sorted.")
                                        .foregroundColor(.white)
                                        .padding(.horizontal,30)
                                        .font(.system(size: 40))
                                    
                                    
                                }
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
                                
                            }
                            
                        }
                        .navigationViewStyle(StackNavigationViewStyle())
                        
                        
                    }
                    func scramble(){
                        for i in 0...values.count-1{
                            values[i] = Int.random(in: 1..<10)
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    func select(){
                        DispatchQueue.global(qos: .background).async{
                            
                            for i in 0..<values.count-1{
                                
                                var minIndex = i
                                for j in i+1..<values.count{
                                    
                                    if values[j] < values[minIndex]{
                                        minIndex = j
                                    }
                                    
                                }
                                
                                if i != minIndex{
                                    Thread.sleep(forTimeInterval: 0.1)
                                    values.swapAt(i, minIndex)
                                }
                            }
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    struct InsertionSortView: View{
                        
                        @State var values : [Int] = [Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)]
                        
                        
                        
                        
                        
                        var body: some View{
                            NavigationView{
                                ZStack{
                                    Rectangle()
                                        .fill(Color("Grey"))
                                        .padding(0)
                                        .ignoresSafeArea()
                                    VStack {
                                        
                                        Text("Visualized Sorting Methods")
                                            .font(.system(size:50,weight: .bold))
                                            .foregroundColor(.white)
                                            .padding(0)
                                        
                                        HStack{
                                            
                                            Text("Insertion Sort")
                                                .font(.system(size:60,weight: .bold))
                                                .foregroundColor(.green)
                                            
                                            
                                                                                    }
                                        
                                        HStack{
                                            Button("Sort") {
                                                InsertionSort()
                                                
                                            }
                                            .foregroundColor(.white)
                                            .buttonStyle(.borderedProminent)
                                            .font(.system(size:30))
                                            .controlSize(.large)
                                            .tint(.green)
                                            .padding(.trailing,20)
                                            
                                            Button("Scramble") {
                                                scramble()
                                            }
                                            .foregroundColor(.white)
                                            .buttonStyle(.borderedProminent)
                                            .font(.system(size:30))
                                            .controlSize(.large)
                                            .tint(.green)
                                            .padding(.trailing,20)
                                        }
                                        .padding(.bottom,-30)
                                        NavigationLink(destination: BogoSortView().navigationBarBackButtonHidden(true), label:{
                                            ZStack{
                                                Text("Next >")
                                                    .font(.system(size:30))
                                                    .foregroundColor(.white)
                                                    .clipShape(Capsule())
                                                    .padding(30)
                                            }
                                        })

                                        HStack{
                                            
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[0])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[1])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[2])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[3])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[4])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[5])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[6])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.green)
                                                .frame(width:10,height:CGFloat(values[7])*50)
                                                .padding(10)
                                            
                                            
                                            
                                        }
                                        .padding(40)
                                        Text("Insertion sort is a simple sorting algorithm that works by spliting the array into an unsorted and a sorted section, values from the unsorted section are taken and placed into the correct spot in the sorted section.")
                                            .foregroundColor(.white)
                                            .padding(.horizontal,30)
                                            .font(.system(size: 40))
                                        
                                        
                                    }
                                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
                                    
                                }
                                
                            }
                            .navigationViewStyle(StackNavigationViewStyle())
                            
                            
                        }
                        func scramble(){
                            for i in 0...values.count-1{
                                values[i] = Int.random(in: 1..<10)
                                
                                
                                
                            }
                            
                        }
                        
                        
                        
                        func InsertionSort() {
                            DispatchQueue.global(qos: .background).async{
                                for i in 1..<values.count {
                                    let currentValue = values[i]
                                    var j = i - 1
                                    while j >= 0 && values[j] > currentValue {
                                        values[j + 1] = values[j]
                                        j -= 1
                                    }
                                    Thread.sleep(forTimeInterval: 0.1)
                                    values[j + 1] = currentValue
                                }
                            }
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    struct BogoSortView: View{
                        @State var values : [Int] = [Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)
                                                     ,Int.random(in: 1..<10)]
                        
                        
                        
                        
                        
                        var body: some View{
                            NavigationView{
                                ZStack{
                                    Rectangle()
                                        .fill(Color("Grey"))
                                        .padding(0)
                                        .ignoresSafeArea()
                                    VStack {
                                        
                                        Text("Visualized Sorting Methods")
                                            .font(.system(size:50,weight: .bold))
                                            .foregroundColor(.white)
                                            .padding(0)
                                        
                                        HStack{
                                            
                                            Text("Bogo Sort")
                                                .font(.system(size:60,weight: .bold))
                                                .foregroundColor(.yellow)
                                            
                                            
                                                                                    }
                                        HStack{
                                            Button("Sort") {
                                                BogoSort()
                                                
                                            }
                                            .foregroundColor(.white)
                                            .buttonStyle(.borderedProminent)
                                            .font(.system(size:30))
                                            .controlSize(.large)
                                            .tint(.yellow)
                                            .padding(.trailing,20)
                                            
                                            Button("Scramble") {
                                                scramble()
                                            }
                                            .foregroundColor(.white)
                                            .buttonStyle(.borderedProminent)
                                            .font(.system(size:30))
                                            .controlSize(.large)
                                            .tint(.yellow)
                                            .padding(.trailing,20)
                                        }
                                        .padding(.bottom,-30)
                                        NavigationLink(destination: BubbleSortView().navigationBarBackButtonHidden(true), label:{
                                            ZStack{
                                                Text("Next >")
                                                    .font(.system(size:30))
                                                    .foregroundColor(.white)
                                                    .clipShape(Capsule())
                                                    .padding(30)
                                            }
                                        })

                                        HStack{
                                            
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[0])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[1])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[2])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[3])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[4])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[5])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[6])*50)
                                                .padding(10)
                                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                                .fill(.yellow)
                                                .frame(width:10,height:CGFloat(values[7])*50)
                                                .padding(10)
                                            
                                            
                                            
                                        }
                                        .padding(40)
                                        
                                        Text("Bogo Sort is an algorithm that will randomize the set of data over and over again until the data randomizes into an order that is sorted. This method is inefficient and will take random amounts of time to sort.")
                                            .foregroundColor(.white)
                                            .padding(.horizontal,30)
                                            .font(.system(size: 40))
                                        
                                        
                                    }
                                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
                                    
                                }
                                
                            }
                            .navigationViewStyle(StackNavigationViewStyle())
                            
                            
                        }
                        func scramble(){
                            for i in 0...values.count-1{
                                values[i] = Int.random(in: 1..<10)
                                
                                
                                
                            }
                            
                        }
                        
                        
                        
                        func BogoSort() {
                            DispatchQueue.global(qos: .background).async{
                                while !isSorted(arr: values){
                                    values.shuffle()
                                }
                                Thread.sleep(forTimeInterval: 0.1)
                            }
                        }
                        func isSorted(arr : [Int]) -> Bool{
                            
                            for i in 1..<arr.count{
                                if arr[i]<arr[i-1]{
                                    return false
                                }
                            }
                            return true
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        class Rect: ObservableObject {
                            @Published var height : Int
                            @Published var color : Color
                            
                            
                            init(height: Int, color: Color){
                                self.height = height
                                self.color = color
                            }
                            
                            func setHeight(height : Int){
                                
                                self.height = height
                                
                            }
                            
                            var body: some View{
                                
                                
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(.blue)
                                    .frame(width:10,height:CGFloat(height)*50)
                                    .padding(10)
                                
                                
                            }
                        }
                        
                        
                        
                    }
                    
                    
                }
            }
        }
    }
}
