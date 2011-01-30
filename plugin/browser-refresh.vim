" File:         browser-refresh.vim
" Description:  vim plugin that refreshes the current running browser, see :help browser-refresh
" Maintainer:   Matthew Kitt <mk dot kitt at gmail dot com>>
" Version:      1.0.0
" Last Change:  2010 Oct, 11
" License:
" Copyright (c) 2010 by Matthew Kitt

" Permission is hereby granted, free of charge, to any person
" obtaining a copy of this software and associated documentation
" files (the 'Software'), to deal in the Software without
" restriction, including without limitation the rights to use,
" copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the
" Software is furnished to do so, subject to the following
" conditions:

" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software

" THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
" OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
" HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
" WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
" FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
" OTHER DEALINGS IN THE SOFTWARE

" Bail quickly when:
" - this plugin was already loaded or disabled
" - when 'compatible' is set
if (exists("g:loaded_browserrefresh") && g:loaded_browserrefresh) || &cp
  finish
endif
let g:loaded_browserrefresh = 1

" Scoot if not in mac
if !has("mac")
  finish
endif

" Set to all if a default browser isn't set
if !exists("g:RefreshRunningBrowserDefault")
  let g:RefreshRunningBrowserDefault = 'all'
endif

" Allows focus to be returned to MacVim
if !exists("g:RefreshRunningBrowserReturnFocus")
  let g:RefreshRunningBrowserReturnFocus = 1
endif

function! RefreshRunningBrowser()

  if (g:RefreshRunningBrowserDefault == 'chrome' || g:RefreshRunningBrowserDefault == 'all')
    silent :!ps -xc|grep -sq Chrome && osascript -e 'tell app "Google Chrome"' -e 'activate' -e 'tell app "System Events" to keystroke "r" using {command down}' -e 'end tell'
    redraw!
  endif

  if (g:RefreshRunningBrowserDefault == 'safari' || g:RefreshRunningBrowserDefault == 'all')
    silent :!ps -xc|grep -sq Safari && osascript -e 'tell app "Safari"' -e 'activate' -e 'tell app "System Events" to keystroke "r" using {command down}' -e 'end tell'
    redraw!
  endif

  if (g:RefreshRunningBrowserDefault == 'firefox' || g:RefreshRunningBrowserDefault == 'all')
    silent :!ps -xc|grep -sqi firefox && osascript -e 'tell app "Firefox"' -e 'activate' -e 'tell app "System Events" to keystroke "r" using {command down}' -e 'end tell'
    redraw!
  endif

  if ((g:RefreshRunningBrowserReturnFocus == 1) && has('gui_macvim'))
    silent :!ps -xc|grep -sq MacVim && osascript -e 'tell app "MacVim"' -e 'activate' -e 'end tell'
  endif

endfunction
:command! RRB :call RefreshRunningBrowser()
