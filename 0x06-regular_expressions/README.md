
# 0x06. Regular expression

## Background Context



For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.



Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the `//`:



```

sylvain@ubuntu$ cat example.rb

#!/usr/bin/env ruby

puts ARGV[0].scan(/127.0.0.[0-9]/).join

sylvain@ubuntu$

sylvain@ubuntu$ ./example.rb 127.0.0.2

127.0.0.2

sylvain@ubuntu$ ./example.rb 127.0.0.1

127.0.0.1

sylvain@ubuntu$ ./example.rb 127.0.0.a

```

# Tasks

## Mandatory Tasks



### 0. Simply matching School<img width="969" alt="Task_0" src="https://user-images.githubusercontent.com/66600426/186179462-9d8d84d8-4ff5-4a1c-bf22-525cae89dcee.png">



Requirements:



- The regular expression must match `School`

- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method



Example:



```

sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e

School$

sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e

School$

sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e

SchoolSchool$

sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e

$

```



File: [`0-simply_match_school.rb`](./0-simply_match_school.rb)

### 1. Repetition Token #0

<img width="959" alt="Task_1" src="https://user-images.githubusercontent.com/66600426/186179641-c164f08c-285c-4fe5-9647-de4538dbaa5b.png">

Requirements:



- Find the regular expression that will match the above cases

- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method



File: [`1-repetition_token_0.rb`](./1-repetition_token_0.rb)



### 2. Repetition Token #1



<img width="967" alt="Task_2" src="https://user-images.githubusercontent.com/66600426/186179706-3c6396ab-0210-465e-b22c-d8b54e6d74b0.png">

Requirements:

- Find the regular expression that will match the above cases

- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method



File: [`2-repetition_token_1.rb`](./2-repetition_token_1.rb)



Done! Help Check your code Get a sandbox



### 3. Repetition Token #2




<img width="974" alt="Tas_3" src="https://user-images.githubusercontent.com/66600426/186179771-e7b2337c-d8df-4ae3-a70f-e1b78cdde254.png">


Requirements:



- Find the regular expression that will match the above cases

- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method



File: [`3-repetition_token_2.rb`](./3-repetition_token_2.rb)



### 4. Repetition Token #3



<img width="956" alt="Task_4" src="https://user-images.githubusercontent.com/66600426/186179807-ab7f0ed8-7be7-4c7a-b3a2-fbd3962fc6e1.png">

Requirements:



- Find the regular expression that will match the above cases

- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

- Your regex should not contain square brackets



File: [`4-repetition_token_3.rb`](./4-repetition_token_3.rb)



### 5. Not quite HBTN yet

Requirements:

- The regular expression must be exactly matching a string that starts with `h` ends with `n` and can have any single character in between

- Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method



Example:



```

sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e

$

sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e

hbn$

sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e

$

sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e

h8n$

sylvain@ubuntu$

$



```

File: [ `5-beginning_and_end.rb`

](./%205-beginning_and_end.rb)

### 6. Call me maybe

This task is brought to you by a professional advisor [Neha Jain](https://alx-intranet.hbtn.io/rltoken/GqwvXAvTXR_JXqyTvZ4AzQ  "Neha Jain"), Senior Software Engineer at LinkedIn.



Requirement:



- The regular expression must match a 10 digit phone number



Example:



```

sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e

4155049898$

sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e

$

sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e

$

sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e

 $

sylvain@ubuntu$



```



File: [`6-phone_number.rb`](./6-phone_number.rb)





### 7. OMG WHY ARE YOU SHOUTING?

Requirement:



- The regular expression must be only matching: capital letters



Example:



```

sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e

ILOVESYSADMIN$

sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e

WHATSAY$

sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e

$

sylvain@ubuntu$



```



File: [`7-OMG_WHY_ARE_YOU_SHOUTING.rb`](./7-OMG_WHY_ARE_YOU_SHOUTING.rb)

## Advanced Tasks

### 8. Textme





This exercise was prepared for you by [Guillaume Plessis](https://alx-intranet.hbtn.io/rltoken/2Rwwb9pSGKXSp3b3BcqkAw  "Guillaume Plessis"), VP of Infrastructure at TextMe. It is something he uses daily. You can thank Guillaume for his project [on Twitter](https://alx-intranet.hbtn.io/rltoken/Vz-iLl3_Of797s9TsjCxJQ  "on Twitter").



For this task, you’ll be taking over Guillaume’s responsibilities: one afternoon, a TextMe VoIP Engineer comes to you and explains she wants to run some statistics on the TextMe app text messages transactions.



Requirements:



- Your script should output: `[SENDER],[RECEIVER],[FLAGS]`

- The sender phone number or name (including country code if present)

- The receiver phone number or name (including country code if present)

- The flags that were used



You can find a [[log file here]](http://intranet-projects-files.s3.amazonaws.com/holbertonschool-sysadmin_devops/78/text_messages.log).



Example:



```

$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]'

Google,+16474951758,-1:0:-1:0:-1

$

$

$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-64-10 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE2] [SVC:] [ACT:] [BINF:] [FID:] [from:+17272713208] [to:+19172319348] [flags:-1:0:-1:0:-1] [msg:136:Orbiting this at a distance of roughly ninety-two million miles is an utterly insignificant little blue green planet whose ape-descended] [udh:0:]'

+17272713208,+19172319348,-1:0:-1:0:-1

$

$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-64-11 mdr: 2016-02-01 11:00:00 Sent SMS [SMSC:SYBASE1] [SVC:backendtextme] [ACT:] [BINF:] [FID:] [from:18572406905] [to:14022180266] [flags:-1:0:-1:-1:-1] [msg:136:Far out in the uncharted backwaters of the unfashionable end of the western spiral arm of the Galaxy lies a small unregarded yellow sun.] [udh:0:]'

18572406905,14022180266,-1:0:-1:-1:-1

$

$

$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-64-11 mdr: 2016-02-01 11:00:00 Sent SMS [SMSC:SYBASE1] [SVC:backendtextme] [ACT:] [BINF:] [FID:] [from:12392190384] [to:19148265919] [flags:-1:0:-1:-1:-1] [msg:99:life forms are so amazingly primitive that they still think digital watches are a pretty neat idea.] [udh:0:]'

12392190384,19148265919,-1:0:-1:-1:-1

$




```

File: [`100-textme.rb`](./100-textme.rb)
## Author
[Yitagesu Ketema](https://www.github.com/yitagesuketema)
##  
