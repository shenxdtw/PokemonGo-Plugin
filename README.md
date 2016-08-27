##Android PokemonGo-Plugin

###說明
1.使用smali-2.1.3.jar將PokemonGo_Smali資料夾內的Smali Code轉為classes.dex檔案<br>
2.將classes.dex丟進Pokemon Go v0.35.0.apk中<br>
3.將Pokemon Go v0.35.0.apk重新簽名，即可安裝進Android裝置使用<br>
4.啟動Pokemon Go即可看到左上方多了一個Tool，分別為⬆️⬇️⬅️➡️🐱✡️<br>
5.預設GPS地點為45.417619, -75.701228，使用Tool即可進行角色的移動

###功能
🐱單擊可以顯示及隱藏Tool，拖曳可以移動Tool位置<br>
⬆️GPS緯度增加<br>
⬇️GPS緯度減少<br>
⬅️GPS經度增加<br>
➡️GPS經度減少<br>
✡️自動走路模式(孵蛋)，開啟後按鈕會變成🔯

###展示
![demo.png](demo.png)

###其他
App會在內部儲存空間建立一個檔案pokemon.location內為GPS資訊<br>
以供其他第三方方式進行GPS位置的修改


###已打包APK
 [My Releases Page](https://github.com/shenxdtw/PokemonGo-Plugin/releases/)
