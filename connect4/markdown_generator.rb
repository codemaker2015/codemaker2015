require_relative './game'

class MarkdownGenerator
  IMAGE_BASE_URL = 'https://raw.githubusercontent.com/codemaker2015/codemaker2015/main/images'
  ISSUE_BASE_URL = 'https://github.com/codemaker2015/codemaker2015/issues/new'
  ISSUE_BODY = 'body=Just+push+%27Submit+new+issue%27+without+editing+the+title.+The+README+will+be+updated+after+approximately+30+seconds.'

  RED_IMAGE = "![](#{IMAGE_BASE_URL}/red.png)"
  BLUE_IMAGE = "![](#{IMAGE_BASE_URL}/blue.png)"
  BLANK_IMAGE = "![](#{IMAGE_BASE_URL}/blank.png)"

  def initialize(game:)
    @game = game
  end

  def readme(metadata:, recent_moves:)
    current_turn = game.current_turn

    total_moves_played = metadata[:all_players].values.sum
    completed_games = metadata[:completed_games]
    game_winning_players = metadata[:game_winning_players].sort_by { |_, wins| -wins }

    markdown = <<~HTML
        <img src="codemaker.png" alt="Vishnu Sivan" />

        <p align="left">
          <a href="https://github.com/codemaker2015/codemaker2015">
            <img src="https://komarev.com/ghpvc/?username=codemaker2015&color=red" alt="profile views" />
          </a>
          <a href="https://stackoverflow.com/users/7103882">
            <img alt="Stack Exchange reputation" src="https://img.shields.io/stackexchange/stackoverflow/r/7103882?color=orange&label=reputation&logo=stackoverflow">
          </a>
          <a href="https://www.hackerrank.com/codemaker2015">
            <img alt="HackerRank" src="https://img.shields.io/badge/hackerrank-15+-green?color=green&logo=hackerrank">
          </a>
          <a href="https://codemaker2015.medium.com">
            <img alt="Medium" src="https://img.shields.io/badge/medium-50+-lightgrey?color=lightgrey&logo=medium">
          </a>
          <a href="https://github.com/codemaker2015?tab=followers">
            <img alt="GitHub followers" src="https://img.shields.io/github/followers/codemaker2015?color=yellow&logo=github">
          </a>
          <a href="https://www.linkedin.com/in/codemaker2015">
            <img alt="Linkedin followers" src="https://img.shields.io/badge/followers-2.5K-blue?color=blue&logo=linkedin">
          </a>
          <a href="https://instagram.com/codemaker2015">
            <img alt="Instagram followers" src="https://img.shields.io/badge/followers-100-blue?color=orange&logo=instagram">
          </a>
        </p>
        
        # <img src="animated/rabbit.gif" height="30" /> Hey, I'm Vishnu Sivan <img src="animated/hands.gif" height="30" />
        
        <p align="center">
          <img src="codemaker.gif" height="175px" /> 
        </p>
        
        ## 🚀 About Me
        
        #### **Vishnu Sivan**, Immersive Tech Lead, Game Developer, Mobile App Developer, Full Stack Developer, Web Developer
        
        <img src="animated/light_1.gif" height="20px" />  Seasoned professional, forward looking software engineer with 5+ years of experience in creating and executing innovative solutions in immersive field to enhance business productivity. Highly experienced in AR, VR, gesture related technologies. Completed 10+ client projects and worked on 50+ POCs in various technologies. Consistently recognized for the contributions in immersive sector and web / mobile app developments. Skilled at coordinating cross functional teams in a fast paced deadline driven environment.
        
        ![Jokes Card](https://readme-jokes.vercel.app/api)
        
        ## <img src="animated/light_5.gif" height="30px" /> My Stats <img src="animated/loading.gif" height="20px" />
        
        ![GitHub Stats](https://github-readme-stats.vercel.app/api?username=codemaker2015&show_icons=true&theme=radical)
        [![GitHub Streak](https://github-readme-streak-stats.herokuapp.com?user=codemaker2015&theme=blueberry&date_format=M%20j%5B%2C%20Y%5D)](https://git.io/streak-stats)
        
        ![Github Trophy](https://github-profile-trophy.vercel.app/?username=codemaker2015&theme=discord)
        
        ![Github activity graph](https://github-readme-activity-graph.vercel.app/graph?username=codemaker2015&bg_color=000000&color=ffffff&line=2574b1&point=e58a8a&area=true&hide_border=true)
        
        ![GitHub Langs](https://github-readme-stats.vercel.app/api/top-langs/?username=codemaker2015&layout=compact&theme=blue-green)
        ![Codemaker2015 wakatime stats](https://github-readme-stats.vercel.app/api/wakatime?username=codemaker2015&layout=compact&theme=blue-green)
        
        ## 🏅 Achievements
        
        -    👨‍💻 Completed **10+ client projects** and **50+ POCs** in _TCS_
        -    🥇 **Ranked #1** in **Python** on _HackerRank_
        -    🥇 **Ranked #1** in **Java** on _HackerRank_
        -    📜 **500+ certification and course completion** from various 
        learning platforms like _LinkedIn, Udemy, Coursera_
        -    👩🏼‍💻 **500+ project repos** in _Github_
        -    ✨ **10K reputation** in _Stackoverflow_
        -    💎 **15+ badges** in _LeetCode_
        -    🐐 Completed **100+ days challenges** in _LeetCode_
        -    💎 **15+ badges and verified skills** in _Hackerrank_
        -    📝 **50+ articles** in _Medium_ and _Dev_
        -    🐐 Completed all **coding challenges** in _Codingbat_
        -    🥉 **2nd Runner up** in a Coding Competition conducted by _TCS TI Trivandrum_
        -    🥉 **Won Silver badge** on Tata ideas for automated counterfeit detection for tata consumer products.
        
        ## 🏆 Awards
        
        -    🌷 **Service & Commitment Award** (02/2022 - Present)
        _Tata Consultancy Services_
        -    🌸 **On the spot award** (10/2021 - Present)
        _Tata Consultancy Services_
        -    🌹 **Star Team** (08/2021 - Present)
        _Tata Consultancy Services_
        -    🌺 **Special Achievement Award** (07/2020 - Present)
        _Tata Consultancy Services_
        -    🌻 **Best Programmar** (03/2015 - Present)
        _Baselius Poulose II Catholicose College Piravom_
        
        ## 📕 Publications
        -    📜 **Patent - Autonomous laboratory monitoring robot and method thereof** (08/2023 - Present)
        -    📜 **Patent - Method and system for assessing and improving 
        wellness of person using body gestures** (08/2021 - Present)
        -    📰 **Journal publication - Living smart at smart home**
        _KETCON 2017 (01/2017)_
        -    🧩 Applications - [**VPicker**](https://play.google.com/store/apps/details?id=com.vsoft.apps.vpicker),  [**Jumber**](https://play.google.com/store/apps/details?id=com.VSoft.Jumper) and ![**Jumbo**](https://play.google.com/store/apps/details?id=com.vsoft.jumbo) on Play Store
        -    📦 **Packages** - [**csv toolkit**](https://assetstore.unity.com/packages/slug/274646) and [**Swipe Input**](https://assetstore.unity.com/packages/tools/input-management/swipe-input-275012)
        
        
        ## 📝 Top Blog Posts
        -   [Exploring Gemma: Google open-source AI model](https://medium.com/pythoneers/exploring-gemma-google-open-source-ai-model-812e71b539c0)
        -   [Build your own ChatGPT using Google Gemini API](https://codemaker2016.medium.com/build-your-own-chatgpt-using-google-gemini-api-1b079f6a8415)
        -   [Chat with your databases using LangChain](https://coinsbench.com/chat-with-your-databases-using-langchain-bb7d31ed2e76)
        -   [React Native cheatsheet for beginners](https://dev.to/codemaker2015/react-native-cheatsheet-for-beginners-28oa)
        -   [Create your chatbot using Rasa and deploy it on AWS](https://medium.com/coinmonks/create-your-chatbot-using-rasa-and-deploy-it-on-aws-e59b4f296605)
        -   [Introduction to Metaverse](https://medium.com/@codemaker2016/introduction-to-metaverse-e48a29fc906f)
        -   [Unity3D Fundamentals](https://medium.com/@codemaker2016/unity3d-fundamentals-384aaa67fea5)
        -   [How to run python code in your browser](https://medium.com/@codemaker2016/how-to-run-python-code-in-your-browser-69b4044b803a)
            [QR code scanner app using React native](https://dev.to/codemaker2015/qr-code-scanner-app-using-react-native-eog)
        -   [Develop your first Dapp with Web3.js](https://coinsbench.com/develop-your-first-dapp-with-web3-js-c038bc10710b)
        -   [Create and deploy your first smart contract with Solidity](https://coinsbench.com/create-and-deploy-your-first-smart-contract-with-solidity-92c39987655e)
        -   [Unity 3D C# scripting cheatsheet for beginners](https://blog.devgenius.io/unity-3d-c-scripting-cheatsheet-for-beginners-be6030b5a9ed)
        -   [Python cheatsheet for beginners](https://medium.com/@codemaker2016/python-cheatsheet-for-beginners-41736296c636)
        -   [13 ways to secure your react.js application](https://blog.devgenius.io/13-ways-to-secure-your-react-js-application-d48da9eacd45)
        -   [Develop your HelloAR app in Android studio using ARCore and Sceneform](https://blog.devgenius.io/develop-your-helloar-app-in-android-studio-using-arcore-and-sceneform-ae9e1b7a1b5b)
        -   [Tips and tricks to create an awesome GitHub profile README](https://medium.com/@codemaker2016/tips-and-tricks-to-create-an-awesome-github-profile-readme-ce3825a355c7)

        Want to read more? [Check out all the blogs](https://medium.com/@codemaker2016)


        ## 🛠️ Skills
        
        ### Languages
        
        ![C](https://img.shields.io/badge/C-317823?style=for-the-badge&logo=C%20&logoColor=white)
        ![C++](https://img.shields.io/badge/C++-114836?style=for-the-badge&logo=c++&logoColor=white)
        ![C#](https://img.shields.io/badge/C%23-035375?style=for-the-badge&logo=C%20sharp&logoColor=white)
        ![Java](https://img.shields.io/badge/Java-5BA8C9?style=for-the-badge&logo=java&logoColor=white)
        ![Javascript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)
        ![PHP](https://img.shields.io/badge/Php-A10E3B?style=for-the-badge&logo=php&logoColor=white)
        ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
        ![R](https://img.shields.io/badge/R-789CAB?style=for-the-badge&logo=r&logoColor=white)
        ![Kotlin](https://img.shields.io/badge/Kotlin-851773?style=for-the-badge&logo=kotlin&logoColor=white)
        ![Dart](https://img.shields.io/badge/Dart-28B6F6?style=for-the-badge&logo=dart&logoColor=white)
        ![Go](https://img.shields.io/badge/Go-DD861F?style=for-the-badge&logo=go&logoColor=white)
        ![SQL](https://img.shields.io/badge/sql-62B962?style=for-the-badge&logo=sql&logoColor=white)
        
        ### Game Development
        
        ![unity3d](https://img.shields.io/badge/unity3d-20232A?style=for-the-badge&logo=unity&logoColor=61DAFB)
        ![unreal](https://img.shields.io/badge/unreal-20112A?style=for-the-badge&logo=unreal-engine&logoColor=61DAFB)
        ![oculus](https://img.shields.io/badge/Oculus-272080?style=for-the-badge&logo=oculus&logoColor=61DAFB)
        ![phaser](https://img.shields.io/badge/Phaser-0C490B?style=for-the-badge&logo=phaser.js&logoColor=61DAFB)
        ![web xr](https://img.shields.io/badge/WebXR-610033?style=for-the-badge&logo=webxr&logoColor=white)
        
        ### Front-End Development
        
        ![react](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
        ![angular](https://img.shields.io/badge/Angular-593D88?style=for-the-badge&logo=angular&logoColor=white)
        ![pwa](https://img.shields.io/badge/Progressive_Web_App-4285F4?style=for-the-badge&logo=googlechrome&logoColor=white)
        ![next](https://img.shields.io/badge/Next-000000?style=for-the-badge&logo=nextdotjs&logoColor=FFFFFF)
        ![graphql](https://img.shields.io/badge/GraphQL-E434AA?style=for-the-badge&logo=graphql&logoColor=white)
        ![three.js](https://img.shields.io/badge/Three.js-000000?style=for-the-badge&logo=three.js&logoColor=white)
        ![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
        ![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
        ![sass](https://img.shields.io/badge/SASS-CC6699?style=for-the-badge&logo=sass&logoColor=white)
        ![bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
        ![jquery](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
        
        ### Back-End Development
        
        ![nodejs](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)
        ![graphql](https://img.shields.io/badge/GraphQL-ff3399?style=for-the-badge&logo=graphql&logoColor=white)
        ![hadoop](https://img.shields.io/badge/Hadoop-cc9900?style=for-the-badge&logo=hadoop&logoColor=white)
        ![nginx](https://img.shields.io/badge/Nginx-009900?style=for-the-badge&logo=nginx&logoColor=white)
        
        ### Block-Chain Development
        
        ![ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=ethereum&logoColor=white)
        ![web3](https://img.shields.io/badge/Web_3-F16822?style=for-the-badge&logo=web3.js&logoColor=white)
        ![solidity](https://img.shields.io/badge/Solidity-611130?style=for-the-badge&logo=solidity&logoColor=white)
        
        ### Mobile App Development
        
        ![android](https://img.shields.io/badge/Android-66ff66?style=for-the-badge&logo=android&logoColor=white)
        ![flutter](https://img.shields.io/badge/Flutter-28B6F6?style=for-the-badge&logo=flutter&logoColor=white)
        ![dart](https://img.shields.io/badge/Dart-3366cc?style=for-the-badge&logo=dart&logoColor=white)
        ![kotlin](https://img.shields.io/badge/Kotlin-cc0000?style=for-the-badge&logo=kotlin&logoColor=white)
        ![react native](https://img.shields.io/badge/React%20Native-2C2E3B?style=for-the-badge&logo=react&logoColor=white)
        
        ### Database
        
        ![mongodb](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white)
        ![postgresql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
        ![mysql](https://img.shields.io/badge/MySQL-cc6600?style=for-the-badge&logo=mysql&logoColor=white)
        ![oracle](https://img.shields.io/badge/Oracle-990000?style=for-the-badge&logo=oracle&logoColor=white)
        ![mssql](https://img.shields.io/badge/MS_SQL-999966?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
        ![neo4j](https://img.shields.io/badge/Neo4j-1BACEE?style=for-the-badge&logo=neo4j&logoColor=white)
        ![hive](https://img.shields.io/badge/Hive-cc9900?style=for-the-badge&logo=hive&logoColor=white)
        ![sqlite](https://img.shields.io/badge/SQLite-0099ff?style=for-the-badge&logo=sqlite&logoColor=white)
        
        ### DevOps
        
        ![aws](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
        ![azure](https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white)
        ![gcp](https://img.shields.io/badge/GCP-4285F4?style=for-the-badge&logo=google-cloud&logoColor=whit)
        ![docker](https://img.shields.io/badge/Docker-006699?style=for-the-badge&logo=docker&logoColor=white)
        ![kubernetes](https://img.shields.io/badge/Kubernetes-0066cc?style=for-the-badge&logo=kubernetes&logoColor=white)
        
        ### Backend as a Service (BaaS)
        
        ![firebase](https://img.shields.io/badge/Firebase-ffaa00?style=for-the-badge&logo=Firebase&logoColor=white)
        ![heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)
        
        ### Design Tools
        
        ![adobe-xd](https://img.shields.io/badge/adobe_xd-470137?style=for-the-badge&logo=adobe-xd&logoColor=white)
        ![figma](https://img.shields.io/badge/figma-000000?style=for-the-badge&logo=figma&logoColor=white)
        ![blender](https://img.shields.io/badge/Blender-ff9900?style=for-the-badge&logo=blender&logoColor=white)
        ![photoshop](https://img.shields.io/badge/Photoshop-3366cc?style=for-the-badge&logo=adobe%20photoshop&logoColor=white)  
        
        ### Testing
        
        ![jest](https://img.shields.io/badge/Jest-C21325?style=for-the-badge&logo=jest&logoColor=white)
        
        ## 🖥️ Workspace Setup
        
        ![i5-8th-gen](https://img.shields.io/badge/Intel-Core_i5_8th-0071C5?style=for-the-badge&logo=intel&logoColor=white)
        ![gtx-1060](https://img.shields.io/badge/NVIDIA-GTX_1060-76B900?style=for-the-badge&logo=nvidia&logoColor=white)
        ![windows](https://img.shields.io/badge/Windows_10-0078D6?style=for-the-badge&logo=windows&logoColor=white)
        ![vs-code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=Visual-Studio-Code&logoColor=white)

        
        ## 🔗 Links
        
        [![portfolio](https://img.shields.io/badge/Portfolio-5340ff?style=for-the-badge&logo=Google-chrome&logoColor=white)](https://linktr.ee/codemaker)
        [![resume](https://img.shields.io/badge/Resume-4285F4?style=for-the-badge&logo=read-the-docs&logoColor=white)](https://drive.google.com/file/d/1zQKbMCvlsIeV4Ew5FiCNWKDzNfrLAecS/view?usp=sharing)
        [![linked-in](https://img.shields.io/badge/Linked_In-0077B5?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/codemaker2015/)
        [![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/codemaker2015)
        [![medium](https://img.shields.io/badge/medium-000000?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@codemaker2016)
        [![dev](https://img.shields.io/badge/dev-000000?style=for-the-badge&logo=dev.to&logoColor=white)](https://dev.to/codemaker2015)
        [![gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=Gmail&logoColor=white)](mailto:mail.vishnu.sivan@gmail.com)   
            ## :game_die: Join my community Connect Four game!
        ![](https://img.shields.io/badge/Moves%20played-#{total_moves_played}-blue)
        ![](https://img.shields.io/badge/Completed%20games-#{completed_games}-brightgreen)
        ![](https://img.shields.io/badge/Total%20players-#{metadata[:all_players].size}-orange)

        Everyone is welcome to participate! To make a move, click on the **column number** you wish to drop your disk in.

    HTML

    game_status = if game.over?
      "#{game.status_string} [Click here to start a new game!](#{ISSUE_BASE_URL}?title=connect4%7Cnew&#{ISSUE_BODY})"
    else
      "It is the **#{current_turn}** team's turn to play."
    end

    markdown.concat("#{game_status}\n\n")

    markdown.concat(generate_game_board)

    unless game.over?
      markdown.concat("\nTired of waiting? [Request a move](#{ISSUE_BASE_URL}?title=connect4%7Cdrop%7C#{current_turn}%7Cai&#{ISSUE_BODY}) from Connect4Bot :robot: \n")
    end

    markdown.concat <<~HTML

        Interested in how everything works? [Click here](https://github.com/codemaker2015/codemaker2015/tree/main/connect4) to read up on what's happening behind the scenes.

        **:alarm_clock: Most recent moves**
        | Team | Move | Made by |
        | ---- | ---- | ------- |
    HTML

    recent_moves.each { |(team, move, user)| markdown.concat("| #{team} | #{move} | #{user} |\n") }

    markdown.concat <<~HTML

        **:trophy: Leaderboard: Top 10 players with the most game winning moves :1st_place_medal:**
        | Player | Wins |
        | ------ | -----|
    HTML

    game_winning_players.first(10).each do |player, wins|
      user = if player == 'Connect4Bot'
        'Connect4Bot :robot:'
      else
        "[@#{player}](https://github.com/#{player})"
      end
      markdown.concat("| #{user} | #{wins} |\n")
    end

    markdown
  end

  def game_over_message(red_team:, blue_team:)
    winner = game.winner
    victory_text = if winner.nil?
      'The game ended in a draw, how anticlimactic!'
    else
      "The **#{winner}** team has emerged victorious! :trophy:"
    end

    <<~HTML
      # :tada: The game has ended :confetti_ball:
      #{victory_text}

      [Click here to start a new game!](#{ISSUE_BASE_URL}?title=connect4%7Cnew&#{ISSUE_BODY})

      ### :star: Game board
      #{generate_game_board}

      ## Thank you to everybody who participated!

      ### Red team roster
      #{generate_player_moves_table(red_team)}

      ### Blue team roster
      #{generate_player_moves_table(blue_team)}
    HTML
  end

  private

  attr_reader :game

  def generate_game_board
    valid_moves = game.valid_moves
    current_turn = game.current_turn
    headers = if valid_moves.empty?
      '1|2|3|4|5|6|7'
    else
      (1..7).map do |column|
        if valid_moves.include?(column)
          "[#{column}](#{ISSUE_BASE_URL}?title=connect4%7Cdrop%7C#{current_turn}%7C#{column}&#{ISSUE_BODY})"
        else
          column.to_s
        end
      end.join('|')
    end

    game_board = "|#{headers}|\n| - | - | - | - | - | - | - |\n"

    5.downto(0) do |row|
      format = (0...7).map do |col|
        offset = row + 7 * col
        if ((game.bitboards[0] >> offset) & 1) == 1
          RED_IMAGE
        elsif ((game.bitboards[1] >> offset) & 1) == 1
          BLUE_IMAGE
        else
          BLANK_IMAGE
        end
      end
      game_board.concat("|#{format.join('|')}|\n")
    end
    game_board
  end

  def generate_player_moves_table(player_moves)
    table = "| Player | Moves made |\n| - | - |\n"
    player_moves.sort_by { |_, move_count| -move_count }.reduce(table) do |tbl, (player, move_count)|
      tbl.concat("| #{player} | #{move_count} |\n")
    end
  end
end
