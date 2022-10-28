
# 村人交易メーカー / Marchent
シュルカーボックスの内容から村人にショップを作成するデータパック <br />

## 必要環境 / Recuired
- Minecraft JavaEdition ver.1.16~
- [MCCMD-ArrayUtility ちぇん氏作成](https://github.com/ChenCMD/MCCMD-ArrayUtility)

# 使い方 / How to Use
1. 村人をスポーンさせる。(``/function marchent:manekin/[職業]``。職業には[村人系nbtデータタグの職業一覧:profession](https://minecraftjapan.miraheze.org/wiki/%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89/%E3%83%87%E3%83%BC%E3%82%BF%E3%82%BF%E3%82%B0/%E3%82%A8%E3%83%B3%E3%83%86%E3%82%A3%E3%83%86%E3%82%A3#%E6%9D%91%E4%BA%BA%E7%B3%BB%E5%85%B1%E9%80%9A)と同じものを入力できます。)<br/>

2. 村人の2ブロック下にシュルカーを置く。
3. シュルカーの1段目に商品を置く
4. シュルカーの2段目に対価1を置く
5. あればシュルカーの3段目に対価2を置く
6. 村人を主体、基点に``/function marchent:``を実行する。
7. 村人は、シュルカーの内容に応じて、ショップを展開する。

# 使用例
1.武器商人を出す。<br />
![sample1](/img/sample1.png)<br />
2.シュルカーボックスにアイテムを入れる。<br />
![sample2](/img/sample2.png)<br />
3.``/execute as @e[type=minecraft:villager,sort=nearest,limit=1] at @s run function marchent:``を実行する。(正しい位置で実行できていればシュルカーの真上に黒曜石が出る。)<br />
![sample3](/img/sample3.png)<br />
4.ショップの完成！<br />
![sample3](/img/sample4.png)<br />

# 連絡先 / Contact
[Twitter](https://twitter.com/Lit_to_)
