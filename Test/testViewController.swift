import UIKit

class testViewController: UIViewController {

    let question = [Question(question:"Q1.你的口頭禪是？",
                             choice:["A. 我要堅強","B. 這是為你好","C. 我能做到", "D.「如果別人不喜歡我怎麼辦？」"]),
                    Question(question:"Q2.你認為工作中什麼是重要的？",
                             choice:["A. 完美","B. 團隊合作","C. 自我認同","D. 耐心"]),
                    Question(question:"Q3.和你最好的朋友約見面,但他沒有出現,你會想?",
                             choice:["A.「絕對不會原諒你遲到！」","B. 擔心他出什麼事了","C. 等待的時間很無聊，開始尋找有趣的事做", "D. 感到焦慮，擔心自己是否做錯什麼事"]),
                    Question(question:"Q4.戀愛時你在意的是什麼？",
                             choice: ["A. 誠實","B. 同情心","C. 悸動感","D. 安全感"]),
                    Question(question: "Q5.如果你看到一個人有麻煩你會？",
                             choice: ["A. 我的正義感告訴我要幫助他","B. 溫柔的抱抱他","C. 對他微笑","D. 假裝沒看到"])]
    
    @IBOutlet var choicebt: [UIButton]!
    @IBOutlet weak var qusetionlabel: UILabel!
    
    var n = 0
    var touchAmount: Dictionary<String,Int> = ["0":0,"1":0,"2":0,"3":0]
      
    override func viewDidLoad() {
        super.viewDidLoad()
        settings()
    }
    
    @IBSegueAction func showResult(_ coder: NSCoder) -> resultViewController? {
        let controller = resultViewController(coder: coder)
        let maxItem = touchAmount.max{ v1,v2 in v1.value < v2.value}
        touchAmount=["0":0,"1":0,"2":0,"3":0]
        let number1 = Int(maxItem!.key)
        controller?.number = number1!
        return controller
    }
    
    @IBAction func calculatebt(_ sender: UIButton) {
        if n < 4{
            sum(number: sender.tag)
            n+=1
            settings()
        }
        else{
            sum(number: sender.tag)
            performSegue(withIdentifier: "result", sender:nil)
            n=0
            settings()
        }
    }
    
    
    //更新題目與選項
    func settings(){
        qusetionlabel.text = question[n].question
        choicebt[0].setTitle(question[n].choice[0], for: .normal)
        choicebt[1].setTitle(question[n].choice[1], for: .normal)
        choicebt[2].setTitle(question[n].choice[2], for: .normal)
        choicebt[3].setTitle(question[n].choice[3], for: .normal)
    }
    
    //計算按鈕點選次數
    func sum(number:Int){
        if number == 1{
            touchAmount.updateValue(touchAmount["0"]!+1, forKey: "0")
        }
        else if number == 2{
            touchAmount.updateValue(touchAmount["1"]!+1, forKey: "1")
        }
        else if number == 3{
            touchAmount.updateValue(touchAmount["2"]!+1, forKey: "2")
        }
        else {
            touchAmount.updateValue(touchAmount["3"]!+1, forKey: "3")
        }
    }

}
