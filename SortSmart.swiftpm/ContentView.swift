import SwiftUI

     






    
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
                        
                        
                        NavigationLink(destination: SelectionSortView().navigationBarBackButtonHidden(true), label:{
                            ZStack{
                                Text(">")
                                    .font(.system(size:50))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                            }
                        })
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
                    Spacer()
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
                    .padding(50)
                    Spacer()
                    Text("Bubble Sort is the simplest sorting algoritm that works by repeatedly swapping the adjacent elements if they are in the wrong order")
                        .foregroundColor(.white)
                        .padding(30)
                        .font(.system(size: 30))
                    
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
                        Thread.sleep(forTimeInterval: 0.05)
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
                            
                            
                            NavigationLink(destination: InsertionSortView().navigationBarBackButtonHidden(true), label:{
                                ZStack{
                                    Text(">")
                                        .font(.system(size:50))
                                        .foregroundColor(.white)
                                        .clipShape(Capsule())
                                }
                            })
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
                        Spacer()
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
                        .padding(50)
                        
                        Spacer()
                        
                        Text("Selection sort is a simple and efficient sorting algorithm that works by repeatedly selecting the smallest element form the unsorted portion of the list and moving it to the sorted portion of the list this process is repeated until the entire array is sorted.")
                            .foregroundColor(.white)
                            .padding(30)
                            .font(.system(size: 30))
                        
                        
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
                        Thread.sleep(forTimeInterval: 0.05)
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
                                
                                
                                NavigationLink(destination: BogoSortView().navigationBarBackButtonHidden(true), label:{
                                    ZStack{
                                        Text(">")
                                            .font(.system(size:50))
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                    }
                                })
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
                            Spacer()
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
                            .padding(50)
                            Spacer()
                            Text("Insertion sort is a simple sorting algorithm that works by spliting the array into an unsorted and a sorted section, values from the unsorted section are taken and placed into the correct spot in the sorted section.")
                                .foregroundColor(.white)
                                .padding(30)
                                .font(.system(size: 30))
                            
                            
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
                        Thread.sleep(forTimeInterval: 0.05)
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
                                
                                
                                NavigationLink(destination: BubbleSortView().navigationBarBackButtonHidden(true), label:{
                                    ZStack{
                                        Text(">")
                                            .font(.system(size:50))
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                    }
                                })
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
                            Spacer()
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
                            .padding(50)
                            Spacer()
                            Text("Bogo Sort is an algorithm that will essentially randomize the set of data over and over again untill the data randomizes into an order that is sorted. This method is highly inefficient and can take extremely long times to sort, especially with large data sets.")
                                .foregroundColor(.white)
                                .padding(30)
                                .font(.system(size: 30))
                            
                            
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
                    Thread.sleep(forTimeInterval: 0.05)
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
