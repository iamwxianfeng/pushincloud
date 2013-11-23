# encoding: utf-8
#!/usr/bin/env ruby
require 'httparty'


lists = [
  { name: 'RainZhai', href: '', avatar: 'http://tp2.sinaimg.cn/1653818105/50/5615443447/1',content: '#cloud jam#美女设计师@Vanessa_Vivian 在进行交互效果的优化 http://ww1.sinaimg.cn/large/629342f9jw1drs1klkq59j.jpg ' },
  { name: '大城小胖', href: 'http://weibo.com/finscn', avatar: 'http://tp2.sinaimg.cn/1657422865/50/5619053377/1', content: '在#cloud jam#活动上开发的一款游戏, 目前还在开发中. 先给大家看看截图. 不要问我那是什么东西. 大家暂且把它当作肉色手电筒好了,http://ww4.sinaimg.cn/large/62ca4411gw1drr7x2m3ioj.jpg .' },
  { name: 'RainZhai', href: 'http://weibo.com/rainzhai', avatar: 'http://tp2.sinaimg.cn/1653818105/50/5615443447/1', content: '#cloud jam# 代码加咖啡 http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/14/tza_org.gif http://ww3.sinaimg.cn/large/629342f9jw1drresjvjf4j.jpg http://ww3.sinaimg.cn/large/629342f9jw1drresjvjf4j.jpg ' },
  { name: 'stonehuang', href: 'http://weibo.com/stonelf', avatar: 'http://tp1.sinaimg.cn/1681750392/50/5601711402/1', content: 'cloud jam也要通宵在那吗？活动主页地址给个。' },
  { name: 'Ada李力', href: 'http://weibo.com/adali', avatar: 'http://tp3.sinaimg.cn/1401313454/50/1297752679/0', content: '盛大研究院搞的“cloud jam"大赛，参赛者需要连续作战33小时，很考验体力。大赛结果明晚揭晓。http://ww4.sinaimg.cn/large/538658aejw1drr7rkoswoj.jpg ' },
  { name: 'MIMORay', href: 'http://weibo.com/measy', avatar: 'http://tp1.sinaimg.cn/1586577820/180/5607176895/1', content: '探班盛大Cloud jam  #WeicoLomo# http://ww1.sinaimg.cn/large/5e91419cjw1drr6gg03bkj.jpg ' },
  { name: '盛大云计算', href: 'http://weibo.com/grandcloudcn', avatar: 'http://tp3.sinaimg.cn/2153701974/50/5606803307/1', content: '#Cloud Jam#盛大云计算开发挑战赛，北京站15支队伍分别是：哇！、Wi$、CC、HF、WeiBackup、ZD、vPreamer、Doom、AQTech、AIR研究小组A、AIR研究小组B、WED、Cloudeye、PushInCloud、蓝色的鱼，北京站的朋友们加油！http://ww1.sinaimg.cn/large/805ee256gw1drr3nb724dj.jpg ' },
  { name: '米粽my', href: 'http://weibo.com/myst729', avatar: 'http://tp4.sinaimg.cn/1408056531/50/1295339011/1', content: '起床！去公司围观#cloud jam#' },
  { name: '文飞翔', href: 'http://weibo.com/wenfeixiang', avatar: 'http://tp4.sinaimg.cn/1661552451/50/5596891316/0', content: '#cloud jam# 参加者在介绍项目了，现场招人中，有百度、网易、IBM、雅虎的开发者，也有几个创业团队和学生，有组队好的，这个在现场找人：会前端的，同一套代码能在IE6和ipad上都顺畅就好 http://ww2.sinaimg.cn/large/63094743jw1drqvd04ox9j.jpg ' },
  { name: '盛大创新院', href: 'http://weibo.com/isnda', avatar: 'http://tp4.sinaimg.cn/1823370643/50/1285381941/0', content: '#cloud jam# 盛大云计算开发挑战赛开始咯，北京上海同时进行中，这里是北京现场：人、电脑、网络、沙发、食物、云主机都到位了，33小时的自我挑战开始 http://ww2.sinaimg.cn/large/6cae6d93jw1drquvttn12j.jpg ' },
  { name: '裕波', href: 'http://weibo.com/itchina100', avatar: 'http://tp2.sinaimg.cn/1455818357/50/1285579250/1', content: '#cloud jam北京#正式开场，由@LukeFan 主持  http://ww4.sinaimg.cn/large/56c60675jw1drqumtvdexj.jpg ' },
  { name: 'wxianfeng', href: 'http://weibo.com/wxianfeng', avatar: 'http://tp3.sinaimg.cn/1640606994/50/1267886589/1', content: '39.999491,116.339687' }
]


lists = lists.reverse


ws_server = if Rails.env == "development"
  "http://localhost/pub?id=cloudjam"
else
  "http://www.pushincloud.com/pub?id=cloudjam"
end


lists.each do |list|
  options = {
    :body => list.to_json
  }
  HTTParty.post(ws_server, options)
  sleep 3
end


