# cucumber-test-1
A repository to learn automation test using cucumber framework

<h2>prequisite</h2>
- downloadn & install [Ruby and the Devkit] [install ruby link] (personally I use v2.7)
- download & install [rubymine] [install rubymine IDE] for the IDE 
- download a browser webdriver. personally, I use [chrome webdriver] [install chrome webdriver], choose the driver according to the version of your browser
- put the webdriver file inside one of your folder that is listed in the 'PATH' environment variables in your system
- start the terminal with ruby, then install cucumber & watir via ruby terminal by running these 2 commands in the ruby terminal sequentially


``
   gem install cucumber
``

and then
  
``
   gem install watir
``

<h2>how to run the test</h2>
- open terminal in the directory ~\cucumber-test-1
- run cucumber .feature files in terminal

``
cucumber [path to file .feature] -r [path to folder where .feature that want to run is exist] 
``


i.e to run signin.feature, after following the write this command in the terminal

  ``
  cucumber amazon\features\signin.feature -r amazon\features
  ``

i.e to run all .feature, after following the write this command in the terminal

``
cucumber amazon\features\signin.feature -r amazon\features
``


[install ruby link]: https://rubyinstaller.org/downloads/
[install rubymine IDE]: https://www.jetbrains.com/ruby/download/
[install chrome webdriver]: https://sites.google.com/a/chromium.org/chromedriver/downloads