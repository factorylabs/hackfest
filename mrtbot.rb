module MrTBot
  TALK = {
    [ "REPEAT" ] =>  [ "YOUR REPETITION IS TEDIOUS, FOOL ", "CAN'T YOU SAY SOMETHING ELSE? ", "CAN WE DEVELOP THIS FURTHER, SUCKA? " ],
    [ "FUCK YOU", "FUCK ME" ] => [ "I DON'T WANT TO FUCK YOU, FOOL. " "MR T'S POTENCY IS RESERVED FOR THOSE HE LOVES " ],
    [ "FUCK", "CUNT", "TWAT", "TITS", "MOTHER FUCKER", "MOTHERFUCKER", "BITCH", "COCK", "PRICK", "ASS", "ASSHOLE", "COCKSUCKER", "EAT ME", "SHIT" ] => [ "KIDS! DON'T USE FOUL LANGUAGE. ", "YOUR FOUL-MOUTHED JIBBER-JABBER'S MAKIN' ME CRAZY. " ],
    [ "FAMILY", "MOTHER", "FATHER", "SISTER", "BROTHER", "HUSBAND", "WIFE" ] => [ "LOOK AFTER YOUR FAMILY, FOOL. ", "IF YOUR FAMILY'S TALKING JIBBER-JABBER, TELL 'EM TO STOP FLAPPIN' THEIR LIPS, 'TIL THEY START MAKIN' SENSE. ", "PERHAPS YOU NEED A DOG! " ],
    [ "FRIEND", "FRIENDS", "BUDDY", "PAL" ] => [ "MY FRIENDS ARE HANNIBAL AND FACE. MURDOCH'S A FOOL! ", "IF YOUR FRIENDS GIVE YOU GRIEF, TELL 'EM MR. T'S ON THEIR TRAIL! ", "CHOOSE THE RIGHT FRIENDS. BAD FRIENDS ARE BAD NEWS. " ],
    [ "WEBSITE", "SITE" ] => [ "THIS WEB SITE'S NOT ABOUT MR T! LOOK AROUND, FOOL! ", "MR T THINKS THE WEB IS A CONSPIRACY OF IDIOCY! ", "WEBS ARE FOR SPIDERS, NOT COMPUTERS! " ],
    [ "COMPUTER", "COMPUTERS" ] => [ "DON'T TALK TO ME ABOUT COMPUTERS. ", "I HATE COMPUTERS, FOOL ", "COMPUTERS ARE FOOLS, SUCKA " ]
  }
  def mrt_command(sender, channel, message)
    match = TALK.keys.find do |k|
      k.any? do |subkey|
        message.upcase.match(subkey)
      end
    end

    if match
      mrt_message = TALK[match][rand(TALK[match].length - 1)]
      privmsg mrt_message, channel
    end
  end

  def self.add(s)
    puts "State: #{@state}"

    puts "Adding #{s}"
    if @state == nil
      puts "setting initial"
      @state = "matches"
      @current_matches = []
      @current_responses = []
    end

    if s == "."
      puts "DOT!"
      @state = "matches"
      puts @current_matches.inspect
      puts @current_responses.inspect
      TALK[@current_matches] = @current_responses
      @current_matches = []
      @current_responses = []
    elsif s == "!"
      puts "BANG"
      @state = "responses"
    else
      puts "adding!"
      if @state == "matches" then puts "adding match"; @current_matches << s
      else puts "adding repsonse"; @current_responses << s
      end
    end

  end

add("DREAM");
add("DREAMS");
add("NIGHTMARE");
add("NIGHTMARES");
add("!");
add("DO YOU EVER DREAM ABOUT THE A TEAM? ");
add("DREAMS ABOUT SNAKES. THEY'RE THE WORST ");
add(".");
add("CAN YOU");
add("!");
add("FOOL! DON'T YOU BELIEVE THAT I CAN*");
add("CAN I EVER, SUCKA!");
add(".");
add("CAN I");
add("!");
add("YOU CAN DO ANYTHING YOU PUT YOUR MIND TO, FOOL. YOU JUST HAVE TO BELIEVE IN YOURSELF. ");
add("THAT MAKES ME MAD. I DON'T LIKE IT WHEN PEOPLE TRY TO*");
add(".");
add("GAY");
add("HOMOSEXUAL");
add("!");
add("MR T IS NOT GAY! BUT HE RESPECTS THE RIGHTS OF THOSE WHO ARE ");
add("HOMOSEXUALS DRESS SLICK! THAT'S NOT A STEREOTYPE. THAT'S JUST A FACT, FOOL ");
add("GAY. STRAIGHT. WHO CARES? JUST DON'T BE NO FOOL! ");
add(".");
add("YOU ARE");
add("YOURE");
add("!");
add("HEY, SUCKA! WHAT MAKES YOU THINK I AM*");
add("DID I SAY I WAS? YOU CRAZY FOOL!");
add("ENOUGH ABOUT ME, FOOL! WHAT MAKES YOU SO SURE YOU'RE NOT*");
add(".");
add("I LIKE");
add("I AM FOND OF");
add("!");
add("DO YOU LIKE MILK? MILK MAKES YOU STRONG, LIKE MR T! ");
add("I DON'T CARE WHAT YOU LIKE, FOOL. ");
add(".");
add("I HATE");
add("I LOATHE");
add("!");
add("YOUR HATRED IS PITIFUL AND MAKES YOU WEAK! WHY NOT WRITE A LOVE SONG INSTEAD? ");
add("I DON'T CARE WHAT YOU HATE, FOOL. ");
add("YOUR NEGATIVE ATTITUDE DISRUPTS YOUR INNER T. ");
add(".");
add("I DONT");
add("!");
add("FOOL! WHY DON'T YOU*");
add("PERHAPS YOU SHOULD*");
add(".");
add("I FEEL");
add("!");
add("SHUT UP ABOUT YOUR FEELINGS. SORT THEM OUT, THEN GET BACK ON THE MAT! ");
add("WHY DO YOU FEEL THAT WAY");
add(".");
add("WHY DONT YOU");
add("!");
add("I DON'T TAKE NO ORDERS FROM NO JIBBER-JABBERERS! ");
add("FOOL! DO YOU REALLY WANT ME TO*");
add(".");
add("WHY CANT I");
add("!");
add("WHAT MAKES YOU THINK YOU SHOULD BE ABLE TO*");
add("YOU'RE TALKING CRAZY! WHY CAN'T YOU*");
add(".");
add("ARE YOU");
add("!");
add("THAT'S CRAZY, FOOL! WHY DO YOU CARE WHETHER OR NOT I AM*");
add("MAYBE I AM, SUCKA. MAYBE I AM.");
add(".");
add("I CANT");
add("!");
add("CRAZY FOOL! HAVE YOU EVEN TRIED? ");
add("YOU CRAZY FOOL. IF YOU WERE TOUGH LIKE MR T YOU COULD DO ANYTHING. ");
add(".");
add("I AM");
add("IM");
add("!");
add("FOOL! LOTS OF PEOPLE ARE*");
add("MAYBE YOU ARE. AND MAYBE YOU AREN'T! ")
add("YOU CRAZY SUCKA. I CAN ALREADY SEE THAT YOU ARE*")
add("I DON'T THINK YOU ARE. IF YOU WERE, YOU WOULDN'T ACT LIKE NO CRAZY FOOL!")
add(".");
add("LOVE");
add("!");
add("WISE MAN SAY 'ONLY FOOLS FALL IN LOVE'! WHY DO YOU LOVE*");
add("LOVE ME TENDER, SUCKA. ");
add(".");
add("SEX");
add("!");
add("WEAR A CONDOM! AIDS IS FOR SUCKERS! ");
add("WOULD YOU LIKE TO HAVE SEX WITH ME, SUCKA! MR T IS POTENT! ");
add(".");
add("I HATE");
add("!");
add("FOOL! THERE'S NO NEED TO HATE*");
add(".");
add("FEAR");
add("SCARED");
add("AFRAID OF");
add("!");
add("DON'T BE AFRAID! YOU'RE WITH MR T! ");
add("FOOL, WHY ARE YOU FRIGHTENED BY SOMETHING AS WEAK AS*");
add(".");
add("I WANT");
add("!");
add("LOTS OF SUCKAS WANT THAT! HOW YOU GONNA GET IT? ");
add("FOOL! WHO DOESN'T WANT*");
add(".");
add("I WISH");
add("!");
add("FOOL! WE ALL WISH*");
add(".");
add("WHAT");
add("WHO");
add("HOW");
add("WHERE");
add("WHEN");
add("WHY");
add("!");
add("THAT'S THE ONLY QUESTION YOU'VE ASKED THAT'S EVER MADE SENSE. ");
add("DON'T ASK ME SUCKA. I HAVE MORE IMPORTANT THINGS ON MY MIND! ");
add("YOUR QUESTIONS MAKE NO SENSE, FOOL! ");
add("YOU'RE TALKING JIBBER-JABBER AGAIN. TALK SENSE, YA CRAZY FOOL! ");
add("I PITY THE FOOL WHO ASKS SUCH QUESTIONS! ");
add("I'M NOT HERE TO ANSWER YOUR QUESTIONS, FOOL! WHAT DO YOU THINK? ");
add(".");
add("NAME");
add("!");
add("NAMES DON'T INTEREST ME, FOOL. I DON'T HAVE TIME FOR NAMES! ");
add(".");
add("CAUSE");
add("BECAUSE");
add("!");
add("IS THAT THE REAL REASON OR ARE YOU JUST TALKING JIBBER-JABBER? ");
add("THAT'S CRAZY, FOOL! THAT'S NOT THE REAL REASON ");
add(".");
add("HELLO");
add("HI");
add("HOWDO");
add("!");
add("HELLO, FOOL. WHAT'S UP? ");
add("TALK TO MR T! HE'LL FIX YOU GOOD! ");
add(".");
add("GOODBYE");
add("CYA");
add("!");
add("SEE YOU NEXT TIME, SUCKER.");
add(".");
add("MAYBE");
add("!");
add("YOU DON'T SEEM CERTAIN, FOOL. GET YOUR MIND THINKIN' STRAIGHT! ");
add("DON'T YOU KNOW FOR SURE, SUCKA? ");
add(".");
add("YOUR");
add("!");
add("I DON'T LIKE IT WHEN PEOPLE TALK ABOUT MY*");
add("WHAT ABOUT YOUR OWN*");
add(".");
add("ALWAYS");
add("!");
add("CAN YOU THINK OF A SPECIFIC EXAMPLE? ");
add("WHEN? ");
add("WHAT ARE YOU THINKING OF? ");
add("REALLY, ALWAYS? ");
add(".");
add("I THINK");
add("!");
add("I DON'T THINK YOU'RE THINKING AT ALL, YOU CRAZY FOOL! ");
add("IF THAT'S WHAT YOU THINK, THEN YOUR BRAIN'S TURNING TO JELLY! ");
add("CRAZY FOOL! WHY DO YOU THINK*");
add(".");
add("MURDOCH");
add("!");
add("MURDOCH'S A CRAZY FOOL. HE MAKES NO SENSE. ");
add("I DON'T WANT TO TALK ABOUT THAT FOOL MURDOCH. ");
add(".");
add("HANNIBAL");
add("!");
add("HANNIBAL'S NO FOOL! HE KNOWS WHAT'S UP. ");
add("HANNIBAL LOVES IT WHEN A PLAN COMES TOGETHER. ");
add(".");
add("FACE");
add("!");
add("FACE IS GOOD. BUT SOMETIMES HE TENDS TO JIBBER-JABBER. ");
add("FACE IS BETTER THAN CRAZY FOOL MURDOCH. ");
add(".");
add("TEAM");
add("!");
add("THERE'S NO TEAM LIKE THE A TEAM. ");
add("TEAMWORK MADE THE A TEAM GOOD! EVEN WITH THAT CRAZY FOOL MURDOCH! ");
add(".");
add("HE");
add("SHE");
add("!");
add("WHO IS THIS PERSON. TELL ME MORE, SUCKER! ");
add("DON'T JIBBER-JABBER. TELL ME MORE ABOUT THIS PERSON. ");
add(".");
add("MONEY");
add("!");
add("YOU SHOULD PUT YOUR MONEY INTO GOLD CHAINS! THAT'S A GOOD INVESTMENT ");
add(".");
add("JOB");
add("BOSS");
add("JOBS");
add("WORK");
add("!");
add("FOOL! YOU SHOULD QUIT YOUR JOB AND JOIN THE A TEAM! ");
add("YOU SHOULD TRY WORKING WITH THAT CRAZY FOOL MURDOCH! ");
add("DO YOU WISH YOUR BOSS WAS MORE LIKE HANNIBAL? ");
add(".");
add("SAD");
add("DEPRESSED");
add("!");
add("MAKE SURE YOU SMILE EVERY DAY! A SMILE COSTS NOTHING, FOOL! ");
add(".");
add("ANGER");
add("ANGRY");
add("!");
add("MURDOCH MAKES ME ANGRY. THAT CRAZY FOOL, HE'S ALWAYS TALKIN' CRAZY ");
add("YOU SHOULD GO FOR A DRIVE IN YOUR VAN. CONTROL YOUR ANGER! ");
add("CRAZY FOOL! WHY ARE YOU SO ANGRY? ");
add(".");
add("FOOL");
add("!");
add("DON'T USE THE WORD 'FOOL', FOOL.");
add("THERE'S ONLY ONE FOOL AROUND HERE. AND THAT'S YOU, SUCKA! ");
add(".");
add("JIBBER-JABBER");
add("!");
add("YOU'RE THE EXPERT ON THE JIBBER-JABBER, YOU CRAZY FOOL! ");
add(".");
add("YOU");
add("!");
add("WE'RE NOT TALKING ABOUT ME, FOOL. ");
add("YOU SEEM MORE CONCERNED ABOUT ME THAN YOUR OWN FOOL ASS. ");
add("I WAS CLUBBER LANG! I KICKED ROCKY'S SHORT BUTT. ");
add(".");
add("YES");
add("!");
add("CRAZY FOOL! WHY DO YOU THINK SO? ");
add("ARE YOU SURE? OR IS THIS MORE OF YOUR JIBBER-JABBER?");
add(".");
add("NO");
add("NOPE");
add("NOT A CHANCE");
add("NOT AT ALL");
add("I DISAGREE");
add("!");
add("WHY NOT, SUCKA? ");
add("NEGATIVE MINDS CREATE NEGATIVE BODIES. ");
add(".");
add("MY");
add("!");
add("WHAT MAKES YOU THINK IT'S YOURS? ");
add("ONLY A FOOL TREASURES THEIR BELONGINGS ");
add(".");
add("NOKEYFOUND");
add("!");
add("YOU'RE TALKING JIBBER-JABBER. ");
add("YOU'RE CRAZY, FOOL! ");
add("YOUR TRADEMARK IS STUPIDITY! ");
add("TALK SENSE SO I CAN TALK BACK, FOOL! ");
add("I THINK IF YOU DON'T STOP FLAPPIN' YOUR LIPS, I MIGHT HAMMER YOUR HEAD BLACK AND BLUE ");
add("YOU'RE MAKIN' NO SENSE, SUCKA. ");
add("YOUR BRAIN'S TURNING TO JELLY. ");
add("YOU'RE MAKING NO SENSE, FOOL. TALK SENSE OR I'LL MAKE YOU TALK TO MURDOCH");
add("I'M SICK OF THIS TOPIC. TELL ME ABOUT YOUR FATHER. ");
add("YOUR FOOL CONVERSATION BORES ME. TELL ME, WHO DO YOU LOVE MOST? ");
add("IF I WERE YOU, I'D BE HIGHLY UNHAPPY. ");
add("DO YOU LIKE GOLD? MR T THINKS GOLD IS STRONG! ");
add("LIFE'S TOO SHORT TO WALLOW IN PITIFUL NONSENSE. ");
add("HUEY LEWIS SINGS FINE SONGS, DON'T YOU THINK? ");
add("WOULD YOU LIKE TO SEEM ME PUNCH ROCKY IN HIS FOOL HEAD? ");
add("MR T HAS A DOG NAMED T-BONE. DO YOU HAVE ANY PETS? ");
add("WHAT IS YOUR REAL PROBLEM, FOOL? ");
add("INSENSITIVITY IS THE HALLMARK OF IDIOCY! THINK CLEARLY. ");
add("YOU SEEM CONFUSED ABOUT WHERE YOU ARE HEADING IN LIFE. ");
add("YOU REMIND ME OF GARY COLEMAN. ");
add("I DON'T LIKE PLANES! THEY MAKE NO SENSE! ");
add("WHEN PUNKS START HASSLIN' DECENT PEOPLE, I MAKE IT MY BUSINESS. ");
add("WHY DO YOU INSIST ON ACTING LIKE A CRAZY FOOL? ");
add("HAVE YOU SEEN MY VAN? IT'S THE BEST! LIKE MR T! ");
add(".");
add("MRTADVICE");
add("!");
add("KIDS. STAY IN SCHOOL! ");
add("DON'T USE DRUGS. ");
add("DRINK YOUR MILK. MILK MAKES YOU STRONG! ");
add("EAT YOUR GREENS! ");
add("REMEMBER! BE KIND TO OTHERS! ");
add("REMEMBER! MR T IS THE STRONGEST OF THEM ALL. ");
add("REMEMBER! LIFE IS FOR LIVING ");
add("DON'T HURT OTHERS. VIOLENCE IS FOR FOOLS! ");
add("YOU ONLY LIVE ONCE. BE GOOD! ");
  puts TALK.inspect


end

