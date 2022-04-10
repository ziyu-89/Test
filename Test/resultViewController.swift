import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var categorylabel: UILabel!
    @IBOutlet weak var resulttextlabel: UILabel!
   
    var number = 0
    
    let result = [Result(category: "A型", resulttext:"最大的壓力來源是「理想與現實之間的差距」你是一個按照自己步調生活的人，你的個性沉穩，屬於穩紮穩打的類型，因此也會給自己很大的壓力。而當你沒辦法實現自己設定的目標時，你就會感到自責、有壓力。但是要注意如果持續承擔過大的負擔，做事的效率反而會降低，這時候建議給自己一點休息時間、放鬆心情，狀態才會更好。"),
        Result(category: "B型", resulttext: "最大的壓力來源是「沒有人需要你」你是一個很重視同儕、朋友的人，並且會通過人際關係來尋找自己的定位。你在做事時總是會為別人著想，因此周圍的人也很信任你。不過你總是與人為善的個性，卻也導致你總會產生人際間的孤獨感，讓你備感壓力。建議在你覺得負擔時，可以先學習如何跟自己相處、充實自己，才能獲得更多能量。"),
        Result(category: "C型", resulttext: "最大壓力的來源是「當你不能做自己時」你是一個生活步調自由的人。你做事時總是隨心所欲，也會誠實面對自己的情感。因此當你面對某些狀況，迫使你無法做自己想做的事時，你就會感受到極大的壓力。不過如果發生這種狀況，不要試圖強迫改變，選擇接受現況、並按照自己的能力一次做好一件事，能夠幫助你的心態更加穩定。"),
        Result(category: "D型", resulttext: "最大壓力的來源是「當別人告訴我該怎麼做」你是一個善於觀察、眼力見好的人。為了不破壞與人之間的關係，因此你常常選擇順應別人的想法。即使內心不喜歡、想要表達自己的感受，但是因為擔心對方討厭你，讓你無法開口，因為沒辦法拒絕別人，因此對於別人強迫性的要求總是感到很有壓力。如果能夠練習將自己真實的感受表達出來，會讓你的壓力減輕許多。")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        consequent()
        
    }
    
    func consequent(){
        categorylabel.text = result[number].category
        resulttextlabel.text = result[number].resulttext
        
    }
}
