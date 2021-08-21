#!/bin/bash    
cd ~/.config/polybar/assistant
#sed -i "5s/.*/$$/" /tmp/notes-msg
case $1 in    
    "hello")    
        array[0]="Hi! :)"
        array[1]="How is it going?"
        array[2]="Hello buddy"
        array[3]="Hello! :)"
        array[4]="Bonjour!"
        array[5]="Salut!"
        array[6]="Hey!"
        array[7]="What a day"
        array[8]="Hello there"
        array[9]="How are things?"
        array[10]="Howdy"
        array[11]="Pleased to see you"
        array[12]="Hello world"
        array[13]="All Right!"
        array[14]="Greetings"
        array[15]="Hello my Lord"
        array[16]="Hail to your grace"
        array[17]="Salutation"
        array[18]="How met!"
        array[19]="It's you my Lord!"
        array[20]="Hail fellow"
        size=${#array[@]}
        index=$(($RANDOM % $size))
        outputVar=${array[$index]}
        ;;    

    "open")    
        array[0]="What you want to do?"
        array[1]="Right, what's next?"
        array[2]="Done buddy"
        array[3]="Here we go"
        array[4]="What you got in mind?"
        array[5]="What're ya buyin?"
        array[6]="Typing..."
        array[7]="Let me know!"
        array[8]="What if you check your TODOs?"
        array[9]="Are you looking for the browser? Stranger"
        array[10]="Want help? Tell me anytime"
        array[11]="You didn't see that black screen.."
        array[12]="Ok sir"
        array[13]="Got you covered"
        array[14]="What about browsing?"
        array[15]="Did you checked the time?"
        array[16]="Open sesame!"
        array[17]="Hello, again"
        array[18]="From workspace 5 to you!"
        array[19]="Fluush, Opened"
        array[20]="Ding Dong!"
        size=${#array[@]}
        index=$(($RANDOM % $size))
        outputVar=${array[$index]}
        ;;    

    "bye")    
                    
        ;;    

    "close")    
        array[0]="Closed!"
        array[1]="Exited with code 0"
        array[2]="Well, that was fun"
        array[3]="Then what?"
        array[4]="Close sesame!"
        array[5]="Too much fun?"
        array[6]="How was it?"
        array[7]="You will be crawling back to ME!"
        array[8]="Fluush! closed."
        array[9]="I closed this book next to me"
        array[10]="HUH, have a little caution with that book kid!"
        array[11]="You closed it, i'm next?"
        array[12]="I knew you opened the browser"
        array[13]="I got nothing to say, blank empty mind"
        array[14]="How you feel about that?"
        array[15]="I hate that workspace message"
        array[16]="Do you want me to read that book?"
        array[17]="Won't you fire me?"
        array[18]="Go and play me some music!"
        array[19]="Have you heard of the internet?"
        array[20]="The next time want me to close it for you?"
        size=${#array[@]}
        index=$(($RANDOM % $size))
        outputVar=${array[$index]}
        ;;    

    "workspace")    
        if [[ ! -z $2 ]]; then
        outputVar="Workspace $2"
        fi
        ;;    

    "face")    
        case $2 in
            "1") #normal smile up
                echo " ̇ ̇"
                ;;
            "2") #normal smile down
                echo "··"
                ;;
            "3") # normal smile up blink
                echo "¯¯"
        esac
        ;;    

    "time")    
        case $2 in
            "morning")
                array[1]="Morning!"
                array[2]="My breakfast?"
                array[3]="New start"
                array[4]="Set your mind up"
                array[5]="Chill morning"
                size=${#array[@]}
                index=$(($RANDOM % $size))
                outputVar=${array[$index]}
            ;;
            "noon")
                array[1]="Daytime!"
                array[2]="Just in the middle"
                array[3]="Half of a day left!"
                array[4]="Then you realize is noon"
                array[5]="Noon vibes"
                size=${#array[@]}
                index=$(($RANDOM % $size))
                outputVar=${array[$index]}
            ;;
            "afternoon")
                array[1]="Afternoon!"
                array[2]="After-noon, Right?"
                array[3]="Look at the time ;)"
                array[4]="This book says 'afternoon'"
                array[5]="Lunch, please?"
                size=${#array[@]}
                index=$(($RANDOM % $size))
                outputVar=${array[$index]}
            ;;
            "night")
                array[1]="Are you asleep yet"
                array[2]="Why you don't take a nap?"
                array[3]="Night :)"
                array[4]="Go to bed"
                array[5]="What about your eyeballs?"
                size=${#array[@]}
                index=$(($RANDOM % $size))
                outputVar=${array[$index]}
            ;;
        esac
        ;;    
esac    

