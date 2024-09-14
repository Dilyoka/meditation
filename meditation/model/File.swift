
import Foundation

class User {
    
    var login : String!
    var password : String!
    
    init(_ login: String!, _ password: String!) {
        self.login = login
        self.password = password
    }
}

var user = User("", "")


class Category {
    var name : String
    var img_categ : String!
    var txt_categ : String
    var list : [Audio]!
    init(name: String, img_categ : String, txt_categ : String, l : [Audio]) {
        self.name = name
        self.img_categ = img_categ
        self.txt_categ = txt_categ
        self.list = l
    }
}


class Audio {
    
    var name : String
    var audio_name : String
    var audio_img : String
    
    init( name : String, audio_name : String, audio_img : String) {
       
        self.audio_img = audio_img
        self.audio_name = audio_name
        self.name = name
        
    }
}



let sleep1 = Audio(name: "Sleep - session 1",
                      audio_name: "sleep_1",
                      audio_img: "num1")
let sleep2 = Audio(name: "Sleep - session 2",
                      audio_name: "sleep_2",
                      audio_img: "num1")
let sleep3 = Audio(name: "Sleep - session 3",
                      audio_name: "sleep_3",
                      audio_img: "num1")

let relax1 = Audio(name: "Relax - session 1",
                      audio_name: "relax_1",
                      audio_img: "num2")
let relax2 = Audio(name: "Relax - session 2",
                      audio_name: "relax_2",
                      audio_img: "num2")
let relax3 = Audio(name: "Relax - session 3",
                      audio_name: "relax_3",
                      audio_img: "num2")

let reflection1 = Audio(name: "Reflection - session 1",
                      audio_name: "reflection_1",
                      audio_img: "num3")
let reflectio2 = Audio(name: "Reflection - session 2",
                      audio_name: "reflection_2",
                      audio_img: "num3")
let reflection3 = Audio(name: "Reflection - session 3",
                      audio_name: "reflection_3",
                      audio_img: "num3")

let listTovar : [Audio] = [sleep1,sleep2,sleep3]
let listRelax = [relax1,relax2,relax3]
let listRef = [reflection1,reflectio2,reflection3]


let sleep = Category(name: "Sleep",
                    img_categ: "num1",
                    txt_categ: "Meditation has a positive effect on the process of cognition, the ability to see the situation from a different point of view, control of emotions, and the ability to empathize." , l: listTovar)
let relax = Category(name: "Relax",
                    img_categ: "num2",
                     txt_categ: "Meditation has a positive effect on the process of cognition, the ability to see the situation from a different point of view, control of emotions, and the ability to empathize.",l: listRelax )
let reflection = Category(name: "Reflection",
                    img_categ: "num3",
                          txt_categ: "Meditation has a positive effect on the process of cognition, the ability to see the situation from a different point of view, control of emotions, and the ability to empathize." , l : listRef )

let listCateg : [Category] = [sleep, relax, reflection]

