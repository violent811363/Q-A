//
//  ViewController.swift
//  Q&A
//
//  Created by 吳世馨 on 2020/12/28.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    var questions = [Question]()
    var index = 0
    
    func showQuestion() {
        questions.shuffle()
        questionLabel.text = questions[index].description
        answerLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let question1 = Question(description: "哪一件衣服最耐穿？", answer: "最不喜歡的那件")
        questions.append(question1)
        
        let question2 = Question(description: "什麼人是人們很崇拜，但卻不想見到的人？", answer: "上帝")
        questions.append(question2)
        
        let question3 = Question(description: "為什麼拿破崙的字典裡沒有一個「難」字？", answer: "因為他的字典是法文")
        questions.append(question3)
        
        let question4 = Question(description: "什麼樣的河人們永遠也渡不過去？", answer: "銀河")
        questions.append(question4)
        
        let question5 = Question(description: "鐵放到外面會生銹，那金子放到外面呢？", answer: "不見了")
        questions.append(question5)

        
        let question6 = Question(description: "閉著眼睛也看得見的是什麼？", answer: "夢")
        questions.append(question6)

        let question7 = Question(description: "小明每天都和媽媽上街買菜，每次都捉著媽媽的裙子，但這次卻迷路了，為什麼？", answer: "因為那天媽媽穿著迷你裙")
        questions.append(question7)

        
        let question8 = Question(description: "為什麼沖天炮射不到星星？", answer: "因為星星會閃")
        questions.append(question8)

        
        let question9 = Question(description: "浪費掉人的一生的三分之一時間的會是什麼東西？", answer: "床")
        questions.append(question9)
        
        let question10 = Question(description: "班長告訴菜鳥，當拉開手榴彈的保險之後，口中先數五秒再投擲出去，菜鳥一切都按班長指示動作，但仍被炸死了，為什麼？", answer: "因為菜鳥有口吃")
        questions.append(question10)

        let question11 = Question(description: "除了動物園和非洲可以看到長頸鹿外，還有哪些地方看得到？", answer: "考場")
        questions.append(question11)
        
        let question12 = Question(description: "聖女貞德是哪國人？", answer: "天國")
        questions.append(question12)
        
        let question13 = Question(description: "針掉進海裡了怎麼辦？", answer: "再去買一根")
        questions.append(question13)
        
        let question14 = Question(description: "什麼東西破裂之後，即使最精密的儀器也找不到裂紋？", answer: "感情")
        questions.append(question14)
        
        let question15 = Question(description: "為什麼羅丹雕塑的作品「沉思者」沒有穿衣服？", answer: "他正在想穿那件衣服好看")
        questions.append(question15)
        
        let question16 = Question(description: "什麼事情，只能用一隻手去做？", answer: "剪自己的手指甲")
        questions.append(question16)
        
        let question17 = Question(description: "什麼房子失了火卻不見有人跑出來？", answer: "太平間")
        questions.append(question17)
        
        let question18 = Question(description: "為什麼暑假一定比寒假長？", answer: "熱漲冷縮")
        questions.append(question18)
        
        let question19 = Question(description: "什麼時候有人敲門，你絕不會說請進？", answer: "在廁所裡的時候")
        questions.append(question19)
        
        let question20 = Question(description: "一個人的小腿應該有多長？", answer: "長到碰到地面")
        questions.append(question20)
        
        showQuestion()
    }

    @IBAction func showAnswerButton(_ sender: Any) {
        answerLabel.text = questions[index].answer
    }
    
    
    
    //玩到第5題不能再繼續按
    @IBAction func next(_ sender: Any) {
        if index < 4 {
            index = index + 1
            questionNum.text = "第\(index+1)題"
            showQuestion()
        }else if index > 4 {
            index = 0
            questionNum.text = "第1題"
            showQuestion()
    }
    //玩到最後一題就不能再繼續按
    //@IBAction func next (_ sender: Any) {
        //if index < questions.count - 1 {
            //index = index + 1
            //showQuestion()
        //}
    //玩到最後一題後跳回第一題
        //@IBAction func nextQuestionButton(_ sender: Any) {
            //index = index + 1
            //if index == questions.count {
            //index = 0
        //}
        showQuestion()
        }
    
    @IBAction func replay(_ sender: Any) {
        index = index + 1
        questionNum.text = "第1題"
        showQuestion()
    }
    
}
    

