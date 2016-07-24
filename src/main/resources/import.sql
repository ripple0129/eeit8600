INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('Biore', '蜜妮', 'src\main\webapp\WEB-INF\img\brand\Biore.png', 'http://www.kao.com/tw/biore/' , 'biore',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('Clinique', '倩碧', 'src\main\webapp\WEB-INF\img\brand\Clinique.png', 'http://www.clinique.com.tw/' , 'elca',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('M.A.C', '', 'src\main\webapp\WEB-INF\img\brand\M.A.C.png', 'https://www.maccosmetics.com.tw/' , 'elca',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('Lancome', '蘭蔻', 'src\main\webapp\WEB-INF\img\brand\Lancome.png', 'http://www.lancome.com.tw/lancome/_zh/_tw/index.aspx' , 'loreal',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('L''Oreal', '巴黎萊雅', 'src\main\webapp\WEB-INF\img\brand\L''Oreal.png', 'http://www.loreal.com.tw/' , 'loreal',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('PAUL & JOE', '', 'src\main\webapp\WEB-INF\img\brand\PAUL & JOE.png', 'http://www.paul-joe-beaute.com/index_pc.html' , 'pj',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('Jill Stuart', '吉麗絲朵', 'src\main\webapp\WEB-INF\img\brand\Jill Stuart.png', 'http://www.jillstuart-beauty.com.tw/' , 'js',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('Kanebo', '佳麗寶', 'src\main\webapp\WEB-INF\img\brand\Kanebo.png', 'http://www.kanebo-tw.net/' , 'kanebo',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('SK-II', '', 'src\main\webapp\WEB-INF\img\brand\SK-II.png', 'http://www.sk-ii.com.tw/tc/index.aspx' , 'sk2',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('cle de peau', '肌膚之鑰 ', 'src\main\webapp\WEB-INF\img\brand\cle de peau.png', 'http://www.cledepeau-beaute.com/ta/' , 'cdp',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('YSL', '', 'src\main\webapp\WEB-INF\img\brand\YSL.png', 'http://www.yslbeauty.com.tw/' , 'loreal',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('Dior', '迪奧', 'src\main\webapp\WEB-INF\img\brand\Dior.png', 'http://www.dior.com/beauty/zh_tw/home.html' , 'dior',1)
INSERT INTO BRAND (BRANDNAME, BRANDCNAME, BRANDIMG, WEBSITE, BCFUNC, BRANDSHOW) VALUES ('CHANEL', '香奈兒', 'src\main\webapp\WEB-INF\img\brand\CHANEL.png', 'http://www.chanel.com/zh_TW/fragrance-beauty/makeup.html' , 'chanel',1)

INSERT INTO CATEGORYTITLE (TITLENAME) VALUES ('臉部保養')
INSERT INTO CATEGORYTITLE (TITLENAME) VALUES ('化妝產品')

INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('睫毛膏', 'src\main\webapp\WEB-INF\img\category\睫毛膏.png', 'HAIR')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('唇膏唇蜜', 'src\main\webapp\WEB-INF\img\category\唇膏唇蜜.png', 'MAKEUP')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('粉霜粉餅', 'src\main\webapp\WEB-INF\img\category\粉霜粉餅.png', 'MAKEUP')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('臉部卸妝', 'src\main\webapp\WEB-INF\img\category\臉部卸妝.png', 'SKINCARE')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('乳液乳霜', 'src\main\webapp\WEB-INF\img\category\乳液乳霜.png', 'SKINCARE')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('沐浴清潔', 'src\main\webapp\WEB-INF\img\category\沐浴清潔.png', 'BATHBODY')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('身體保養', 'src\main\webapp\WEB-INF\img\category\身體保養.png', 'BATHBODY')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('美足美甲', 'src\main\webapp\WEB-INF\img\category\美足美甲.png', 'BATHBODY')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('洗髮潤髮', 'src\main\webapp\WEB-INF\img\category\洗髮潤髮.png', 'HAIR')
INSERT INTO Category (CATEGORYNAME, CATEGORYIMG, CATEGORYTITLE) VALUES ('染髮燙髮', 'src\main\webapp\WEB-INF\img\category\染髮燙髮.png', 'HAIR')

INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Water', '水', '溶劑', 0, 0, 1)
INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Titanium Dioxide', '二氧化鈦', '防曬', 0, 0, 2)
INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Carbomer', '卡波莫, 卡波姆, 聚羧乙烯, 卡波樹脂', '黏度控制,乳化劑', 0, 1, 1)
INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Cyclomethicone', '矽靈, 環聚二甲基矽氧烷, 環甲矽脂, 環甲基矽氧烷', '溶劑,黏度控制,抗靜電,保溼,柔潤劑', 0, 0, 2)
INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Natto gum', '納托膠',null, 0, 0, 1)
INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Glycyrrhiza Glabra Root Extract','光果甘草根萃取', '香料,鎮靜消炎,柔潤劑', 0, 0, 1)
INSERT INTO Ingredient (INGREDName, INGREDCHName, INGREDChar, INGREDIrritant, INGREDAcne, INGREDSafety) values ('Dimethicone','矽靈,地美司康,二甲基矽酮,二甲矽油,聚二甲基矽氧烷', '柔潤劑', 1, 0, 1)

INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('含水防曬保濕水凝乳', 1, 1, 0.5, 3.5, 290, 50, '2011-04-01', '產品說明', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\含水防曬保濕水凝乳.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('深層卸粧乳', 1, 2, 0.6, 3.5, 180, 200, '2013-05-12', '產品說明2', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\深層卸粧乳.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('深層卸粧精華露', 1, 3, 1.0, 2.5, 280, 230, '2014-02-20', '產品說明3', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\深層卸粧精華露.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('高效活性眼唇卸粧液', 1, 4, 0.3, 2.4, 280, 130, '2010-02-01', '產品說明4', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\高效活性眼唇卸粧液.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('蜜妮卸粧凝露', 1, 1, 0.25, 3.9, 169, 120, '2016-06-12', '產品說明5', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\蜜妮卸粧凝露.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('高防曬隔離乳液', 1, 1, 0.7, 4.5, 230, 30, '2007-04-30', '產品說明6', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\高防曬隔離乳液.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('深層卸粧棉', 1, 1, 1.0, 3.8, 46, 200, '2015-07-03', '產品說明7', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\深層卸粧棉.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('高防曬乳液SPF28', 1, 1, 0.87, 3.3, 250, 100, '2016-07-12', '產品說明8', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\高防曬乳液SPF28.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('清透極淨洗面乳', 1, 1, 0.65, 4.4, 110, 100, '2015-03-01', '產品說明9', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\清透極淨洗面乳.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('深層淨白洗面乳', 1, 1, 0.9, 2.4, 135, 100, '2011-04-20', '產品說明10', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\深層淨白洗面乳.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('溫和水嫩洗面乳', 1, 1, 0.8, 3.8, 110, 100, '2015-03-15', '產品說明11', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\溫和水嫩洗面乳.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('卸粧兩用洗面乳', 1, 1, 1.0, 3.5, 150, 120, '2012-09-08', '產品說明12', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\卸粧兩用洗面乳.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('淨嫩沐浴乳溫柔保濕型', 1, 1, 0.15, 4.1, 190, 1000, '2010-10-25', '產品說明13', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\淨嫩沐浴乳溫柔保濕型.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('透白細嫩洗顏慕絲', 1, 1, 0.23, 3.2, 210, 160, '2014-04-01', '產品說明14', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\透白細嫩洗顏慕絲.png')
INSERT INTO PRODUCT (PRODNAME, BRANDID, CATEGORYID, WEIGHT, SCORE, PRICE, CAPACITY, LAUNCHDATE, PRODDESC, MAINIGDT, CONCENTRATION, PRODIMG) VALUES ('淨嫩沐浴乳浪漫保濕型', 1, 1, 0.72, 4.5, 125, 700, '2009-08-01', '產品說明15', 1, 0.3, 'src\main\webapp\WEB-INF\img\product\淨嫩沐浴乳浪漫保濕型.png')

INSERT INTO EXPDATE(MEMBERID,PROID,BATCHCODE,MFD,EXP) values (3,1,333,'2015-01-16','2016-08-20')
INSERT INTO EXPDATE(memberId,proId,batchCode,mfd,exp) values (1,2,555,'2015-01-16','2018-02-16')
INSERT INTO EXPDATE(memberId,proId,batchCode,mfd,exp) values (2,9,999,'2015-01-16','2018-01-16')
INSERT INTO EXPDATE(memberId,proId,batchCode,mfd,exp) values (3,2,555,'2014-01-16','2016-08-21')
INSERT INTO EXPDATE(memberId,proId,batchCode,mfd,exp) values (1,2,555,'2016-02-16','2018-03-16')

INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME, LASTNAME, FIRSTNAME, GENDER, BIRTHDAY, SKINTYPE, MEMBERIMG, PHONE, ADDR, MEMBERSUSPEND, MEMBERSUSPENDDAYS, MEMBERSUSPENDCOUNT) VALUES ('jenny@gmail.com', 'j', 'little J', 'Wang', 'Jenny', 'Female', '1988-7-16', 'sensitive', 'src\main\webapp\WEB-INF\img\member\member_default.png', '0910123456', 'Taipei Taiwan', 0, '0', 0)
INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME, LASTNAME, FIRSTNAME, GENDER, BIRTHDAY, SKINTYPE, MEMBERIMG, PHONE, ADDR, MEMBERSUSPEND, MEMBERSUSPENDDAYS, MEMBERSUSPENDCOUNT) VALUES ('serena@gmail.com', 's', 'Serena', 'Lee', 'Serena', 'Female', '1988-7-15', 'dry', 'src\main\webapp\WEB-INF\img\member\member_default.png', '0910123456', 'Taipei Taiwan', 1, '30', 1)
INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME, LASTNAME, FIRSTNAME, GENDER, BIRTHDAY, SKINTYPE, MEMBERIMG, PHONE, ADDR, MEMBERSUSPEND, MEMBERSUSPENDDAYS, MEMBERSUSPENDCOUNT) VALUES ('katesong0204@gmail.com', 'k', 'KK', 'K', 'King', 'Female', '1999-6-14', 'oil', 'src\main\webapp\WEB-INF\img\member\member_default.png', '0910123456', 'Taipei Taiwan', 1, '30', 1)
INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME, LASTNAME, FIRSTNAME, GENDER, BIRTHDAY, SKINTYPE, MEMBERIMG, PHONE, ADDR, MEMBERSUSPEND, MEMBERSUSPENDDAYS, MEMBERSUSPENDCOUNT) VALUES ('p', 'p', 'KK', 'K', 'King', 'Female', '1999-6-14', 'oil', 'src\main\webapp\WEB-INF\img\member\member_default.png', '0910123456', 'Taipei Taiwan', 1, '30', 1)
INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME, LASTNAME, FIRSTNAME, GENDER, BIRTHDAY, SKINTYPE, MEMBERIMG, PHONE, ADDR, MEMBERSUSPEND, MEMBERSUSPENDDAYS, MEMBERSUSPENDCOUNT) VALUES ('h', 'h', 'Tina', 'Liu', 'Tina', 'Female', '1990-7-14', 'oil', 'src\main\webapp\WEB-INF\img\member\userh.png', '0910111111', 'Taipei Taiwan', 0, '0', 0)
INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME, LASTNAME, FIRSTNAME, GENDER, BIRTHDAY, SKINTYPE, MEMBERIMG, PHONE, ADDR, MEMBERSUSPEND, MEMBERSUSPENDDAYS, MEMBERSUSPENDCOUNT) VALUES ('w', 'w', 'Amy', 'Wu', 'Amy', 'Female', '1991-2-16', 'oil', 'src\main\webapp\WEB-INF\img\member\userw.jpg', '0910222222', 'Taipei Taiwan', 0, '0', 0)


INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (3, 10, 'Biore 蜜妮 [防曬系列] 含水防曬美白水凝露', '蜜妮防曬【內文1】前幾年有用過基本款保濕型那款防曬凝露，是個不錯的身體防曬選擇但後來也是換來換去，不固定幾個開架品牌在使用，今年又輪到蜜妮這次買的是新推出的「美白型」防曬凝露，看到美白總是忍不住一試囉含水防曬美白水凝露，$230，容量90ml，容臉和身體都可使用那時候是特價$179時買的，不外乎是看上它容量大又便宜啦它聞起來有些微花香味，凝露質地很好推、不起屑，只是開口的設計不好，很容易擠太多出來..我都拿來塗脖子跟手臂，平常待在室外時間短，使用spf30系數就夠了頂多是買個早餐跟溜小孩而以，所以也不太需要用到高防曬系數囉蠻喜歡它擦起來的觸感，清爽易抹的質地，塗起來又不會太乾聞起來有淡花香味，而不是濃濃的防曬乳液味道，蠻適合夏天擦的眼看夏天快結束了，明年再回購吧', '2', 'src\main\webapp\WEB-INF\img\review\心得標題1.png', '2016-06-18', '99', 0,1)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (2, 1, '[CLINIQUE 倩碧] 水磁場保濕精華霜', '倩碧水磁場【內文2】這罐霜前前後後也用了10罐去了,超好用。。。雖然它的名字是霜,卻像是很濃稠的凝膠,無香精.無色素.無酒精。延展性好,很好推勻。三年前冬天剛使用它時,皮膚因酒糟皮膚炎發作,臉部極度乾燥脫皮紅癢,因成分中有凡士林和吉拉索蘆薈,可以舒緩修護肌膚,想說死馬當活馬醫試試,結果一用超驚豔,一擦上肌膚就感覺很舒緩也很潤澤。原本擦什麼都刺痛紅癢脫皮的臉,不痛也不癢了,過二三天紅疹也變不明顯了,它的修復能力很好。再過一星期,因為保濕做夠了,皮膚變很穩定,皮膚慢慢恢復健康!!!嘴角.人中.鼻翼處也不脫皮了,連之後上妝也很服貼哩~.~...後來,因老公長年是指漏性皮膚炎,冬天也是擦什麼就脫皮紅癢,我就拿這罐給他用,他也感到很舒服很好用,已經使用二年冬天都沒再復發,現在他的皮膚也被這罐保溼精華霜調理的很穩定,膚質水嫩水嫩的^o^肌膚保養最重要就是保濕,保濕只要做好皮膚就會健康。這罐成分單純,會繼續回購,是我冬季的必備品!!!', '4', 'src\main\webapp\WEB-INF\img\review\心得標題2.png', '2016-06-19', '88', 0,1)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (1, 1, 'M.A.C [眼部彩妝] 持妝防水眼線筆', '內文3', '3', 'src\main\webapp\WEB-INF\img\review\心得標題3.png', '2016-06-26', '77', 1)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (2, 1, '心得標題4', '內文4', '3', 'src\main\webapp\WEB-INF\img\review\心得標題4.png', '2016-06-26', '66', 0,1)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (1, 1, '心得標題5', '內文5', '4', 'src\main\webapp\WEB-INF\img\review\心得標題5.png', '2016-06-26', '55', 1,2)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (3, 1, '心得標題6', '內文6', '5', 'src\main\webapp\WEB-INF\img\review\心得標題6.png', '2016-06-26', '44', 0,0)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (3, 1, '心得標題6', '內文6', '5', 'src\main\webapp\WEB-INF\img\review\心得標題6.png', '2016-06-26', '44', 1,1)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (3, 1, '心得標題6', '內文6', '1', 'src\main\webapp\WEB-INF\img\review\心得標題1.png', '2016-07-05', '33', 1,0)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (1, 3, '心得標題6', '內文6', '2', 'src\main\webapp\WEB-INF\img\review\心得標題2.png', '2016-07-05', '22', 0,0)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (2, 1, '心得標題6', '內文6', '4', 'src\main\webapp\WEB-INF\img\review\心得標題3.png', '2016-07-05', '11', 0,1)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (2, 1, '心得標題6', '內文6', '3', 'src\main\webapp\WEB-INF\img\review\心得標題4.png', '2016-07-05', '22', 1,0)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (3, 11, '心得標題6', '內文6', '5', 'src\main\webapp\WEB-INF\img\review\心得標題5.png', '2016-07-05', '33',0,2)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (1, 4, '心得標題8', '內文8', '8', 'src\main\webapp\WEB-INF\img\review\心得標題4.png', '2016-07-20', '22', 1,0)
INSERT INTO REVIEW (MEMBERID, PRODID, REVIEWTITLE, REVIEW, REVIEWRATING, REVIEWIMG, REVIEWTIME, REWCOLLECT, REVIEWSHOW,REVIEWREPORT) VALUES (1, 5, '心得標題9', '內文9', '9', 'src\main\webapp\WEB-INF\img\review\心得標題4.png', '2016-02-20', '22', 1,0)

INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'NEWS','標題1','內文1','2016-06-22 12:26:24',2,5,1,0)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1,'QUESTION','標題2','內文2','2016-04-02 13:01:02',12,0,1,0)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1,'CHAT','標題3','內文3','2016-03-09 16:10:11',11,19,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'CHAT','標題4','內文4','2016-03-05 08:02:03',5,2,1,2)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'SOLICIT','標題5','內文5','2016-03-01 06:05:56',6,5,0,6)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'NEWS','標題6','內文1','2016-06-22',25,4,1,0)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1,'QUESTION','標題7','內文2','2016-04-02 10:25:22',33,0,1,0)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1,'CHAT','標題8','內文3','2016-03-19 10:24:55',22,19,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'CHAT','標題9','內文4','2016-03-15 15:12:22',33,2,1,2)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'SOLICIT','標題10','內文5','2016-03-11 20:25:22',2,5,0,6)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1, 'NEWS','標題11','內文1','2016-06-22 13:06:45',3,3,1,0)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1,'QUESTION','標題12','內文2','2015-12-02 16:45:55',1,0,1,0)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (1,'CHAT','標題13','內文3','2015-08-19 17:50:25',3,19,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (2,'QUESTION','標題14','內文3','2016-05-23 17:16:20',1,10,1,8)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (2,'SOLICIT','標題15','內文3','2016-04-22 23:11:25',120,2,0,3)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'QUESTION','標題16','內文3','2016-06-30 20:25:47',100,2,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'CHAT','標題17','Hello','2016-05-20 12:22:22',1,0,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'CHAT','標題18','<h1>hi</h4>','2016-04-25 08:06:21',1,0,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'CHAT','標題19','color','2014-03-20 15:22:22',1,0,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'CHAT','標題20','color','2016-04-20 14:22:22',1,0,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'CHAT','標題21','內文21','2016-01-06 03:22:22',1,0,0,5)
INSERT INTO ARTICLE (memberID_author, ARTICLETYPE, ARTICLETITLE, ARTICLECONTENT, ARTICLETIME, ARTICLEVIEW, ARTICLECOLLECT, ARTICLESHOW, ARTICLEREPORT) VALUES (3,'CHAT','標題22','內文22','2015-12-09 21:22:22',1,0,0,5)

INSERT INTO DETAIL(NUMBEROFPAGES) VALUES (10)
INSERT INTO DETAIL(NUMBEROFPAGES) VALUES (20)
INSERT INTO DETAIL(NUMBEROFPAGES) VALUES (30)

INSERT INTO BOOKCATEGORY(NAME) VALUES ('category1')
INSERT INTO BOOKCATEGORY(NAME) VALUES ('category2')
INSERT INTO BOOKCATEGORY(NAME) VALUES ('category3')

INSERT INTO PUBLISHER(NAME) VALUES ('publisher1')
INSERT INTO PUBLISHER(NAME) VALUES ('publisher2')
INSERT INTO PUBLISHER(NAME) VALUES ('publisher3')

INSERT INTO BOOK(NAME, DETAILID, CATEGORYID) VALUES ('bookA', 1, 3)
INSERT INTO BOOK(NAME, DETAILID, CATEGORYID) VALUES ('bookB', 2, 2)
INSERT INTO BOOK(NAME, DETAILID, CATEGORYID) VALUES ('bookC', 3, 1)

INSERT INTO TESTER(NAME, AGE, GENDER) VALUES ('USER1', 20, 'MALE')

INSERT INTO PROINGRELIST(prodId,ingredId) values (1,1)
INSERT INTO PROINGRELIST(prodId,ingredId) values (1,2)
INSERT INTO PROINGRELIST(prodId,ingredId) values (1,3)
INSERT INTO PROINGRELIST(prodId,ingredId) values (1,4)

INSERT INTO member_article(MEMBERID, ARTICLEID) values(1, 3)
INSERT INTO member_article(MEMBERID, ARTICLEID) values(1, 4)
INSERT INTO member_article(MEMBERID, ARTICLEID) values(1, 7)
INSERT INTO member_article(MEMBERID, ARTICLEID) values(1, 8)

INSERT INTO member_review(MEMBERID, REVIEWID) values(1, 1)
INSERT INTO member_review(MEMBERID, REVIEWID) values(2, 8)
INSERT INTO member_review(MEMBERID, REVIEWID) values(1, 3)
INSERT INTO member_review(MEMBERID, REVIEWID) values(3, 8)
INSERT INTO member_review(MEMBERID, REVIEWID) values(1, 4)
INSERT INTO member_review(MEMBERID, REVIEWID) values(4, 7)
INSERT INTO member_review(MEMBERID, REVIEWID) values(2, 6)
INSERT INTO member_review(MEMBERID, REVIEWID) values(3, 1)
INSERT INTO member_review(MEMBERID, REVIEWID) values(1, 2)


INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言1', '2015-04-22 20:22:56', 1, 0, 0, 1)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言2', '2016-06-22 23:12:22', 1, 0, 3, 1)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言3', '2015-08-30 23:45:23', 1, 1, 6, 2)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言4', '2016-03-20 08:47:32', 2, 0, 2, 5)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言5', '2015-06-08 10:06:37', 2, 0, 0, 6)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言6', '2016-01-22 08:23:25', 3, 0, 3, 12)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言7', '2016-03-05 06:08:46', 3, 1, 8, 15)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言8', '2016-05-05 06:09:45', 2, 0, 2, 3)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言9', '2016-05-15 07:56:33', 2, 0, 2, 1)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言10', '2016-05-20 16:44:30', 1, 0, 0, 1)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言11', '2015-12-11 15:36:22', 1, 0, 0, 2)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言12', '2015-12-12 14:25:51', 1, 1, 10, 2)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言13', '2016-04-10 14:26:45', 3, 1, 11, 2)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言14', '2016-06-27 13:12:44', 3, 1, 6, 1)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言15', '2016-05-05 11:16:54', 3, 0, 0, 3)
INSERT INTO ArticleCM(ARTICLECMMSG, ARTICLECMTIME, MEMBERID ,ARTICLECMSHOW, ARTICLECMREPORT, ARTICLEID) VALUES('留言16', '2016-04-20 22:23:42', 3, 0, 0, 3)


INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (1,1,'內容1','2015-04-22 20:22:56', 1, 4)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (2,2,'內容2','2015-12-11 15:36:22', 0, 2)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (3,3,'內容3','2016-05-05 11:16:54', 1, 0)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (2,2,'內容4','2015-05-22 20:22:56', 0, 1)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (1,1,'內容5','2015-12-11 15:36:22', 1, 4)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (3,3,'內容6','2015-05-22 20:22:56', 1, 2)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (4,1,'內容7','2016-03-20 08:47:32', 1, 0)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (1,2,'內容8','2016-03-20 08:47:32', 0, 0)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (2,3,'內容9','2016-04-22 20:22:56', 1, 4)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (3,2,'內容10','2016-01-22 17:21:16', 1, 1)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (4,1,'內容11','2016-04-11 23:55:06', 1, 4)
INSERT INTO REVIEWCM (REVIEWID, MEMBERID,REVIEWCMMSG, REVIEWCMTIME, REVIEWCMSHOW, REVIEWCMREPORT) VALUES (2,2,'內容12','2015-01-21 20:42:56', 1, 3)


