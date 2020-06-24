# onlinestore
This is a practice application. I took the UI design from https://dribbble.com/shots/8138861-Fashion-Online-App-Store and I tried to copy it. 
I used Dart languaf=ge and flutter to implement this UI. I faced a problem while using ListView. When I scrolled there was a shadow at the end of screen that didn't match the theme of my UI. Then I figured out that you can control it by using the theme under the MaterialApp().   


## Theme Data
'''
 theme: ThemeData(
      accentColor: Colors.amber[200],
    ),
    '''
