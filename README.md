# dagster-ascend-test

web-crawler 
    ในที่นี้จะทำการ crawler มาเฉพาะเว็บไชต์ bigc เนื่องด้วยเวลาที่จำกัด โดยที่จะเจาะจงเฉพาะหมดหมู่สินค้าประเภทความงามและของใช้ส่วนตัว หมวดหมู่ผลิตภัณฑ์ดูแลผิวกาย (https://www.bigc.co.th/category/body-care) โดยมีขั้นตอนการทำงานดังนี้ 

1. ตรวจสอบไฟล์ bots ของ website ที่ต้องการที่จะ crawler 
    เข้า link url แล้วตามด้วย "/robots.txt" ตามรูปข้างต้น โดยไฟล์จะแสดง path ที่ไม่ให้ทำการเข้าถึง
    จะเห็นว่าสามารถที่จะ crawler ใน path category ได้

2. เพิ่มไฟล์ credentail.json ที่แนบไว้บนเมล ก่อนที่จะทำการรัน dagster

3. Dagster
    รันโดยการใช้คำสั่ง 
    dagster-webserver -f web-crawler.py

4. Docker 
    โดยปัจจุบันยังไม่สามารถรันได้ เนื่องจากติดปัญหา EXPOSE port 
    รันได้โดยการใช้คำสั่ง
    docker build -t web-crawler-test .
    docker run -d --publish 3001:3000 --name web-crawler web-crawler-test

TO DO
    เพิ่ม crawler ของ website ecommerce อื่นขึ้นมา ทำคล้ายกับ creawler ของ Bigc และเขียน dagster มี pipeline ออกมา 2 ทาง โดยอาจใช้ @multi_asset


