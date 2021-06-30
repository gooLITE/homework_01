//
//  ViewController.swift
//  homework_01
//
//  Created by Yu Sum Yung on 19/6/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var content: UILabel!
    
    let location = [
        ShowData(infoImage: "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fi.forbesimg.com%2Fmedia%2Flists%2Fplaces%2Ftaiwan_416x416.jpg", title1Text: "Taiwan", title2Text: "中華民國", contentText: "Taiwan,[II] officially the Republic of China (ROC),[I][f] is a country in East Asia.[20][21] Neighbouring countries include the People's Republic of China (PRC) to the northwest, Japan to the northeast, and the Philippines to the south. The main island of Taiwan has an area of 35,808 square kilometres (13,826 sq mi), with mountain ranges dominating the eastern two-thirds and plains in the western third, where its highly urbanised population is concentrated. The capital is Taipei, which, along with New Taipei and Keelung, forms the largest metropolitan area of Taiwan. Other major cities include Kaohsiung, Taichung, Tainan and Taoyuan. With 23.57 million inhabitants, Taiwan is among the most densely populated countries in the world."),
        ShowData(infoImage: "https://media.timeout.com/images/105240237/image.jpg", title1Text: "Japan", title2Text: "日本", contentText: "Japan is an island country in East Asia, located in the northwest Pacific Ocean. It is bordered on the west by the Sea of Japan, and extends from the Sea of Okhotsk in the north toward the East China Sea and Taiwan in the south. Part of the Ring of Fire, Japan spans an archipelago of 6852 islands covering 377,975 square kilometers (145,937 sq mi); the five main islands are Hokkaido, Honshu, Shikoku, Kyushu, and Okinawa. Tokyo is Japan's capital and largest city; other major cities include Yokohama, Osaka, Nagoya, Sapporo, Fukuoka, Kobe, and Kyoto."),
        ShowData(infoImage: "https://cdn.getyourguide.com/img/country/5b812d338dc9b.jpeg/88.jpg", title1Text: "Korea", title2Text: "韓國", contentText: "Korea, or the Korean Peninsula, is a region in East Asia. Since 1945 it has been divided into the two parts which soon became the two sovereign states: North Korea"),
        ShowData(infoImage: "https://static01.nyt.com/images/2020/10/31/world/31VURUS-UK01/merlin_179332086_afac6382-3467-4123-acd7-4c418e092c05-mediumSquareAt3X.jpg", title1Text: "United Kingdom", title2Text: "United Kingdom of Great Britain and Northern Ireland", contentText: "The United Kingdom of Great Britain and Northern Ireland, commonly known as the United Kingdom (UK) or Britain,[15][note 10] is a sovereign country in north-western Europe, off the north-­western coast of the European mainland.[16] The United Kingdom includes the island of Great Britain, the north-­eastern part of the island of Ireland, and many smaller islands within the British Isles.[17] Northern Ireland shares a land border with the Republic of Ireland. Otherwise, the United Kingdom is surrounded by the Atlantic Ocean, with the North Sea to the east, the English Channel to the south and the Celtic Sea to the south-west, giving it the 12th-longest coastline in the world. The Irish Sea separates Great Britain and Ireland. The total area of the United Kingdom is 93,628 square miles (242,500 km2)."),
        ShowData(infoImage: "https://www.tallocate.com/sites/default/files/blog/images/evening-4746326_1280.jpg", title1Text: "Denmark", title2Text: "Kingdom of Denmark", contentText: "Denmark (Danish: Danmark, pronounced [ˈtænmɑk] (About this soundlisten)), officially the Kingdom of Denmark,[N 11] is a Nordic country in Northern Europe. Denmark proper,[N 2] which is the southernmost of the Scandinavian countries, consists of a peninsula, Jutland, and an archipelago of 443 named islands,[15] with the largest being Zealand, Funen and the North Jutlandic Island. The islands are characterised by flat, arable land and sandy coasts, low elevation and a temperate climate. Denmark lies southwest of Sweden and south of Norway,[N 12] and is bordered to the south by Germany. The Kingdom of Denmark is constitutionally a unitary state comprising Denmark proper and the two autonomous territories[16] in the North Atlantic Ocean: the Faroe Islands and Greenland. Denmark has a total area of 42,943 km2 (16,580 sq mi) as of 2020,[7] and the total area including Greenland and the Faroe Islands is 2,210,579 km2 (853,509 sq mi). Denmark proper has a population of 5.84 million (as of 2021)."),
        ShowData(infoImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYbZDUbaFpDlHsrz-Q-jyel3wFMukPff2Y4A&usqp=CAU", title1Text: "Kazakhstan", title2Text: "Republic of Kazakhstan", contentText: "Kazakhstan,[e] officially the Republic of Kazakhstan,[f][4][13] is a transcontinental country mainly located in Central Asia with a smaller portion west of the Ural River in Eastern Europe. It covers a land area of 2,724,900 square kilometres (1,052,100 sq mi), and shares land borders with Russia in the north, China in the east, and Kyrgyzstan, Uzbekistan, and Turkmenistan in the south while also adjoining a large part of the Caspian Sea in the southwest. Kazakhstan does not border Mongolia, although they are only 37 kilometers apart, separated by a short portion of the border between Russia and China."),
        ShowData(infoImage: "https://images.theconversation.com/files/323846/original/file-20200329-146671-12ibktl.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop", title1Text: "Germany", title2Text: "Federal Republic of Germany", contentText: "Germany (German: Deutschland, pronounced [ˈdɔʏtʃlant] (About this soundlisten)), officially the Federal Republic of Germany,[e] is a country in Central Europe. It is the second-most populous country in Europe after Russia, and the most populous member state of the European Union. Germany is situated between the Baltic and North seas to the north, and the Alps to the south; covering an area of 357,022 square kilometres (137,847 sq mi), with a population of over 83 million within its 16 constituent states. It borders Denmark to the north, Poland and the Czech Republic to the east, Austria and Switzerland to the south, and France, Luxembourg, Belgium, and the Netherlands to the west. The nation's capital and largest city is Berlin, and its financial centre is Frankfurt; the largest urban area is the Ruhr."),
        ShowData(infoImage: "https://montessori-ami.org/sites/default/files/images/countries/russia.jpg", title1Text: "Russia", title2Text: "Russian Federation", contentText: "Russia (Russian: Россия, Rossiya, Russian pronunciation: [rɐˈsʲijə]), or the Russian Federation,[c] is a country spanning Eastern Europe and Northern Asia. It is the largest country in the world, covering over 17 million square kilometres (6.6×106 sq mi), and encompassing more than one-eighth of Earth's inhabited land area. Russia extends across eleven time zones, and has borders with sixteen sovereign nations. It has a population of 146.2 million; and is the most populous country in Europe, and the ninth-most populous country in the world. Moscow, the capital, is the largest city in Europe, while Saint Petersburg is the nation's second-largest city and cultural centre. Russians are the largest Slavic and European nation; they speak Russian, the most spoken Slavic language, and the most spoken native language in Europe."),
        ShowData(infoImage: "https://imagesvc.meredithcorp.io/v3/jumpstartpure/image?url=https://cf-images.us-east-1.prod.boltdns.net/v1/static/3281700261001/034388df-4bd5-46af-8c3a-4f4eae0c21be/70e9b054-54fd-499a-a873-9dc79fedd99a/1280x720/match/image.jpg&w=1280&h=720&q=90&c=cc", title1Text: "Iceland", title2Text: "Iceland", contentText: "Iceland (Icelandic: Ísland; [ˈistlant] (About this soundlisten))[d] is a Nordic island country in the North Atlantic Ocean and the most sparsely populated country in Europe.[e][13] The capital and largest city is Reykjavík. Reykjavík and the surrounding areas in the southwest of the country are home to over two-thirds of the population. Iceland is volcanically and geologically active."),
        ShowData(infoImage: "https://s3.ivisa.com/website-assets/blog/amasyamerkez.png", title1Text: "Turkey", title2Text: "Republic of Turkey", contentText: "Turkey (Turkish: Türkiye [ˈtyɾcije]), officially the Republic of Turkey,[a] is a country straddling Western Asia and Southeast Europe. It shares borders with Greece and Bulgaria to the northwest; the Black Sea to the north; Georgia to the northeast; Armenia, Azerbaijan, and Iran to the east; Iraq to the southeast; Syria and the Mediterranean Sea to the south; and the Aegean Sea to the west. Istanbul, the largest city, is the financial centre, and Ankara is the capital. Turks form the vast majority of the nation's population, and Kurds are the largest minority."),
        ShowData(infoImage: "https://i.pinimg.com/originals/84/45/71/844571addda9f1f4f4d5b7bd6b95437b.jpg", title1Text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", title2Text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", contentText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let i = Int.random(in: 0...location.count-1)
        
        image1.load(urlString: location[i].infoImage)
        title1.text = location[i].title1Text
        title2.text = location[i].title2Text
        content.text = location[i].contentText
        
    }

    @IBAction func clickedChange(_ sender: UIButton) {
        let i = Int.random(in: 0...location.count-1)
        
        image1.load(urlString: location[i].infoImage)
        title1.text = location[i].title1Text
        title2.text = location[i].title2Text
        content.text = location[i].contentText
        
    }
    
    @IBAction func clickedNext(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goTo2ndScrollView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTo2ndScrollView"{
            let destinationVC = segue.destination as! _ndScrollViewController
            
            destinationVC.location = location
        }
    }
}

