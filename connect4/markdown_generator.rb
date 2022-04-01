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
          <a href="https://github.com/codemaker2015/codemaker2015">
            <img src="https://visitor-badge.glitch.me/badge?page_id=page.id" alt="page views" />
          </a>
          <a href="https://stackoverflow.com/users/7103882">
            <img alt="Stack Exchange reputation" src="https://img.shields.io/stackexchange/stackoverflow/r/7103882?color=orange&label=reputation&logo=stackoverflow">
          </a>
          <a href="https://www.hackerrank.com/codemaker2015">
            <img alt="HackerRank" src="https://img.shields.io/badge/hackerrank-15+-green?color=green&logo=hackerrank">
          </a>
          <a href="https://codemaker2015.medium.com">
            <img alt="Medium" src="https://img.shields.io/badge/medium-40+-lightgrey?color=lightgrey&logo=medium">
          </a>
          <a href="https://github.com/codemaker2015?tab=followers">
            <img alt="GitHub followers" src="https://img.shields.io/github/followers/codemaker2015?color=yellow&logo=github">
          </a>
          <a href="https://www.linkedin.com/in/codemaker2015">
            <img alt="Linkedin followers" src="https://img.shields.io/badge/followers-1.9K-blue?color=blue&logo=linkedin">
          </a>
          <a href="https://twitter.com/codemaker2014">
            <img alt="Twitter followers" src="https://img.shields.io/badge/followers-1-blue?color=orange&logo=twitter">
          </a>
          <a href="https://www.facebook.com/vishnu.sivan.754">
            <img alt="Facebook friends" src="https://img.shields.io/badge/friends-1.9K-blue?color=yellowgreen&logo=facebook">
          </a>
        </p>
        
        # <img src="animated/rabbit.gif" /> Hey, I'm Vishnu Sivan <img src="animated/hands.gif" />

        <p align="center">
          <img src="codemaker.gif" height="175px" /> 
        </p>

        ## 🚀 About Me

        #### **Vishnu Sivan**, Immersive Tech Lead, Game Developer, Mobile App Developer, Full Stack Developer, Web Developer

        👨🏼‍💻  Seasoned professional, forward looking software engineer with 3+ years of experience in creating and executing innovative solutions in immersive field to enhance business productivity. Highly experienced in AR, VR, gesture related technologies. Completed 5+ client projects and worked on 20+ POCs in immersive technologies. Consistently recognized for the contributions in immersive sector and web / mobile app developments.Skilled at coordinating cross functional teams in a fast paced deadline driven environment.

        ![GitHub Stats](https://github-readme-stats.vercel.app/api?username=codemaker2015&show_icons=true&theme=radical)
        [![GitHub Streak](https://github-readme-streak-stats.herokuapp.com?user=codemaker2015&theme=blueberry&date_format=M%20j%5B%2C%20Y%5D)](https://git.io/streak-stats)
        ![GitHub Langs](https://github-readme-stats.vercel.app/api/top-langs/?username=codemaker2015&layout=compact)
        [![Codemaker2015 wakatime stats](https://github-readme-stats.vercel.app/api/wakatime?username=codemaker2015)](https://github.com/codemaker2015)

        ## 🏅 Achievements

        -    👨‍💻 Completed **5+ client projects** and **25+ POCs** in _TCS_
        -    🥇 **Ranked #1** in **Python** on _HackerRank_
        -    🥇 **Ranked #1** in **Java** on _HackerRank_
        -    📜 **300+ certification and course completion** from various 
        learning platforms like _LinkedIn, Udemy, Coursera_
        -    👩🏼‍💻 **250+ project repos** in _Github_
        -    ✨ **7000+ reputation** in _Stackoverflow_
        -    💎 **10+ badges and verified skills** in _Hackerrank_
        -    📝 **40+ articles** in _Medium_
        -    🎉 Completed all **coding challenges** in _Codingbat_
        -    🥉 **2nd Runner up** in a Coding Competition conducted by _TCS TI Trivandrum_

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

        -    📜 **Patent** - **Method and system for assessing and improving 
        wellness of person using body gestures** (08/2021 - Present).
        -    📰 **Journal publication - Living smart at smart home**
        _KETCON 2017 (01/2017)_

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

        ### Block-Chain Development

        ![ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=ethereum&logoColor=white)
        ![web3](https://img.shields.io/badge/Web_3-F16822?style=for-the-badge&logo=web3.js&logoColor=white)
        ![solidity](https://img.shields.io/badge/Solidity-611130?style=for-the-badge&logo=solidity&logoColor=white)

        ### Cross Platform Development

        ![flutter](https://img.shields.io/badge/Flutter-28B6F6?style=for-the-badge&logo=flutter&logoColor=white)
        ![react native](https://img.shields.io/badge/React%20Native-2C2E3B?style=for-the-badge&logo=react&logoColor=white)

        ### Backend as a Service (BaaS)

        ![aws](https://img.shields.io/badge/aws-000000?style=for-the-badge&logo=aws&logoColor=white)
        ![azure](https://img.shields.io/badge/azure-00C7B7?style=for-the-badge&logo=azure&logoColor=white)
        ![firebase](https://img.shields.io/badge/Firebase-ffaa00?style=for-the-badge&logo=Firebase&logoColor=white)
        ![heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)

        ### Design Tools

        ![adobe-xd](https://img.shields.io/badge/adobe_xd-470137?style=for-the-badge&logo=adobe-xd&logoColor=white)
        ![figma](https://img.shields.io/badge/figma-000000?style=for-the-badge&logo=figma&logoColor=white)

        ### Testing

        ![jest](https://img.shields.io/badge/Jest-C21325?style=for-the-badge&logo=jest&logoColor=white)

        ## 🖥️ Workspace Setup

        ![i5-8th-gen](https://img.shields.io/badge/Intel-Core_i5_8th-0071C5?style=for-the-badge&logo=intel&logoColor=white)
        ![gtx-1060](https://img.shields.io/badge/NVIDIA-GTX_1060-76B900?style=for-the-badge&logo=nvidia&logoColor=white)
        ![windows](https://img.shields.io/badge/Windows_10-0078D6?style=for-the-badge&logo=windows&logoColor=white)
        ![vs-code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=Visual-Studio-Code&logoColor=white)

        ## 📝 Top Blog Posts

        -   [Develop your HelloAR app in Android studio using ARCore and Sceneform](https://medium.com/p/d032e5788036)
        -   [Rest API integration in Android Studio using Retrofit 2](https://medium.com/p/7ee66b54cd04)
        -   [Unity 3D C# scripting cheat sheet for beginners](https://medium.com/p/2a0036a2739f)
        -   [QR code scanner app in React native](https://medium.com/p/3a4e574d052d)
        -   [Deploy your Flask REST API on Docker](https://medium.com/p/909f5cfa8b0b)
        -   [13 ways to secure your react.js application](https://medium.com/p/dc298899ae67)
        -   [Python cheatsheet for beginners](https://medium.com/p/7511b4b453e8)
        -   [Top 15 React.js frameworks](https://medium.com/p/cf3f76734846)
        -   [Develop your first Dapp with Web3.js](https://medium.com/p/d19354925df0)
        -   [Develop your first Web AR app using WebXR and Three.js](https://medium.com/p/82475773e549)

        Want to read more? [Check out all the blogs](https://codemaker2015.medium.com)

        ## 🔗 Links

        [![portfolio](https://img.shields.io/badge/Portfolio-5340ff?style=for-the-badge&logo=Google-chrome&logoColor=white)](https://linktr.ee/codemaker)
        [![resume](https://img.shields.io/badge/Resume-4285F4?style=for-the-badge&logo=read-the-docs&logoColor=white)](https://drive.google.com/file/d/1zQKbMCvlsIeV4Ew5FiCNWKDzNfrLAecS/view?usp=sharing)
        [![linked-in](https://img.shields.io/badge/Linked_In-0077B5?style=for-the-badge&logo=LinkedIn&logoColor=white)](https://www.linkedin.com/in/codemaker2015/)
        [![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/codemaker2015)
        [![medium](https://img.shields.io/badge/medium-000000?style=for-the-badge&logo=medium&logoColor=white)](https://codemaker2015.medium.com/)
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
