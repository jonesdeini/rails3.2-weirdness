http://stackoverflow.com/questions/26986260/activerecordrelation-getting-methods-added-to-it

```bash
🐈 jonesdeini@scooty_puff_jr ~/rails3.2-weirdness(master)$ rails c
Loading development environment (Rails 3.2.20)
1.9.3-p125 :001 > Dawg.where(where_you_at: 'dawg').respond_to? :with_cool_story
 => false 
1.9.3-p125 :002 > Bro.with_cool_story
  Bro Load (0.6ms)  SELECT "bros".* FROM "bros" WHERE "bros"."cool_story" = 't'
 => [] 
1.9.3-p125 :003 > Dawg.where(where_you_at: 'dawg').respond_to? :with_cool_story
 => false 
1.9.3-p125 :004 > Bro.where(iphone: false).with_cool_story
  Bro Load (1.1ms)  SELECT "bros".* FROM "bros" WHERE "bros"."iphone" = 'f' AND "bros"."cool_story" = 't'
 => [] 
1.9.3-p125 :005 > Dawg.where(where_you_at: 'dawg').respond_to? :with_cool_story
 => true 
```

```bash
🐈 jonesdeini@scooty_puff_jr ~/example$ rails c
Loading development environment (Rails 3.2.20)
1.9.3-p125 :001 > Dawg.where(nil).respond_to? :hey_bro
 => false 
1.9.3-p125 :002 > Bro.hey_bro
  Bro Load (0.6ms)  SELECT "bros".* FROM "bros" 
 => [] 
1.9.3-p125 :003 > Dawg.where(nil).respond_to? :hey_bro
 => false 
1.9.3-p125 :004 > Bro.where(nil).hey_bro
  Bro Load (0.8ms)  SELECT "bros".* FROM "bros" 
 => [] 
1.9.3-p125 :005 > Dawg.where(nil).respond_to? :hey_bro
 => true  
 ```
