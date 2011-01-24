# browser-refresh.vim

Browser Refresh is based off of the TextMate snippet "refresh current running
browser". In other words it allows you to call a command and reload the front
window of your current browser. It also contains the option to auto
return focus to vim after the browser has done it's thing.

In it's current implementation, it only works from within MacVim. It seems to work from within Terminal Vim, but there are some issues with screen redrawing. Stay tuned for updates to other vim implementations.

For more information on the plugin: `:h browser-refresh` within vim or take a look at the [help files](http://github.com/mkitt/browser-refresh.vim/blob/master/doc/browser-refresh.txt) on github.


## Install

Download, fork, clone, or use it as a submodule within your .vim directory.


## Dependencies

Browser Refresh requires the following:

- Vim version 7.0 or above
- MacVim is recommended
- Google Chrome, Safari or Firefox (Mac)

## Todo

- Need to make this work from other environments
- Added support for other browsers


## Credits

Inspired by:

- The TextMate snippet in the HTML bundle
- A burning desire to never touch my mouse again


## Contributing

Contributions are welcome, simply fork do your magic and send me a pull request.

## MIT License

Copyright (c) 2010 by Matthew Kitt

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the 'Software'), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE


