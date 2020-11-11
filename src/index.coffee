styles = '''
/*
 * Love Gift v0.0.1
 * Authored by Exuanbo
 */

body {
  background-color: #1a1c24;
  color: #fff;
  font-size: 15px;
  line-height: 1.4;
  -webkit-font-smoothing: subpixel-antialiased;
}

/*
 * ...
 * ...Hello?
 * 大家好！我是Exuanbo~
 * 今年的双十一到了，单身的我该做点什么好呢~
 * 写一个网页给未来的女朋友吧ww送她一颗小心心💕~
 * 可是~要怎么做呢~
 * 首先做一个框框来放我们的代码吧ww
 * 那么~开动啦！！
 */

pre {
  position: fixed;
  top: 1em;
  bottom: 1.5em;
  transition: left 500ms;
  overflow: auto;
  background-color: #313744;
  color: #a6c3d4;
  border: 1px solid rgba(0, 0, 0, 0.2);
  padding: 0 0.25em 0.875em 0.25em;
  box-sizing: border-box;
  border-radius: 3px;
  box-shadow: 0px 4px 0px 2px rgba(0, 0, 0, 0.1);
}

/*
 * 不行不行，全是白色看代码都要看昏了
 * 我需要语法高亮~那我们就动手实现一下它吧~
 * Colors based on Base16 Ocean Dark
 */

pre em:not(.comment) {
  font-style: normal;
}

.comment {
  color: #707e84;
}
.selector {
  color: #c66c75;
}
.selector .key {
  color: #c66c75;
}
.key {
  color: #c7ccd4;
}
.value {
  color: #d5927b;
}

/*
 * 呦吼你看~代码高亮实现啦~
 * 接下来我们开工吧！
 * 首先我们把这个代码框移一下吧~它太占地方啦!
 * 告诉你一个小秘密~
 * 手机上和电脑上有不同的显示效果呦~
 */

@media screen and (max-width: 768px) {
  pre {
    width: calc(100% - 1em);
    left: 0.5em;
    right: 0.5em;
    top: 45%;
  }
}

@media screen and (min-width: 768px) {
  pre {
    width: 47.5%;
    left: 50%;
    bottom: 2em;
    padding: 1.5em 1em;
  }
}

/*
 * 用代码做一颗小心心！
 */

@media screen and (max-width: 768px) {
  #heart,
  #echo {
    position: fixed;
    width: 300px;
    height: 300px;
    margin: 30px auto;
    left: 0;
    right: 0;
    text-align: center;
    -webkit-transform: scale(0.95);
    transform: scale(0.95);
  }
}

@media screen and (min-width: 768px) {
  #heart,
  #echo {
    position: fixed;
    width: 300px;
    height: 300px;
    top: calc(50% - 150px);
    left: calc(25% - 150px);
    text-align: center;
    -webkit-transform: scale(0.95);
    transform: scale(0.95);
  }
}

#heart {
  z-index: 8;
}
#echo {
  z-index: 7;
}

#heart::before,
#heart::after,
#echo::before,
#echo::after {
  content: '';
  position: absolute;
  top: 40px;
  width: 150px;
  height: 240px;
  background: #c66c75;
  border-radius: 150px 150px 0 0;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  -webkit-transform-origin: 0 100%;
  transform-origin: 0 100%;
}

#heart::before,
#echo::before {
  left: 150px;
}

#heart::after,
#echo::after {
  left: 0;
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
  -webkit-transform-origin: 100% 100%;
  transform-origin: 100% 100%;
}

/*
 * 给它加上一点阴影ww
 */

#heart::after {
  box-shadow: inset -6px -6px 0px 6px rgba(255, 255, 255, 0.1);
}

#heart::before {
  box-shadow: inset 6px 6px 0px 6px rgba(255, 255, 255, 0.1);
}

/*
 * 这可是~我的小心心~
 * 我要给它签上我的名字！
 * >v<
 */

#heart i::before {
  content: 'Exuanbo';
  position: absolute;
  z-index: 9;
  width: 100%;
  top: 35%;
  left: 0;
  font-style: normal;
  color: rgba(255, 255, 255, 0.8);
  font-weight: 100;
  font-size: 30px;
  text-shadow: -1px -1px 0px rgba(0, 0, 0, 0.2);
}

/*
 * 接下来做什么呢~
 * 我们让这颗心跳起来吧！
 */

@-webkit-keyframes heartbeat {
  0%,
  100% {
    -webkit-transform: scale(0.95);
    transform: scale(0.95);
  }
  50% {
    -webkit-transform: scale(1);
    transform: scale(1);
  }
}

@keyframes heartbeat {
  0%,
  100% {
    transform: scale(0.95);
  }
  50% {
    transform: scale(1);
  }
}

@-webkit-keyframes echo {
  0% {
    opacity: 0.1;
    -webkit-transform: scale(1);
    transform: scale(1);
  }
  100% {
    opacity: 0;
    -webkit-transform: scale(1.4);
    transform: scale(1.4);
  }
}

@keyframes echo {
  0% {
    opacity: 0.1;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(1.4);
  }
}

/*
 * 好哒！接下来准备让它跳起来吧ww
 */

#heart,
#echo {
  -webkit-animation-duration: 2000ms;
  animation-duration: 2000ms;
  -webkit-animation-timing-function: cubic-bezier(0, 0, 0, 1.74);
  animation-timing-function: cubic-bezier(0, 0, 0, 1.74);
  -webkit-animation-delay: 500ms;
  animation-delay: 500ms;
  -webkit-animation-iteration-count: infinite;
  animation-iteration-count: infinite;
  -webkit-animation-play-state: paused;
  animation-play-state: paused;
}

#heart {
  -webkit-animation-name: heartbeat;
  animation-name: heartbeat;
}
#echo {
  -webkit-animation-name: echo;
  animation-name: echo;
}

/*
 * 准备好了嘛~！
 */

#heart,
#echo {
  /*
   * ...3...
   *
   * ...2...
   *
   * ...1...
   *
   * 再等一下~略略略~
   */

  -webkit-animation-play-state: running;
  animation-play-state: running;

  /*
   * ...来啦!
   */
}

/*
 * 诶嘿~~
 * 这样我们的小心心就做好啦~
 * 怎么样~ >v< 还好看吗~
 * 希望我快点找到你，一直躲猫猫可太调皮了~
 * 爱你哦！
 */

/*
 * Love Gift v0.0.1
 * 谨以此网页献给未来的女朋友💕
 * 你最可爱ww
 */
'''

finalStyle = styles
openComment = false
isOn = true

writeStyleChar = (which) ->
  # begin wrapping open comments
  if which == '/' && openComment == false
    openComment = true
    styles = $('#style-text').html() + which
  else if which == '/' && openComment == true
    openComment = false
    styles = $ '#style-text'
      .html()
      .replace /(\/[^\/]*\*)$/, '<em class="comment">$1/</em>'
  # wrap style declaration
  else if which == ':'
    styles = $ '#style-text'
      .html()
      .replace /([a-zA-Z- ^\n]*)$/, '<em class="key">$1</em>:'
  # wrap style value
  else if which == ';'
    styles = $ '#style-text'
      .html()
      .replace /([^:]*)$/, '<em class="value">$1</em>;'
  # wrap selector
  else if which == '{'
    styles = $ '#style-text'
      .html()
      .replace /(.*)$/, '<em class="selector">$1</em>{'
  else
    styles = $('#style-text').html() + which
  $('#style-text').html styles
  $('#style-tag').append which

writeStyles = (message, index, interval) ->
  if index < message.length
    pre = document.getElementById 'style-text'
    pre.scrollTop = pre.scrollHeight
    writeStyleChar message[index++]
    if isOn
      setTimeout(
        ->
          writeStyles message, index,
            if openComment then commentTime else codeTime
      ,
        interval
      )

skip = ->
  isOn = false
  setTimeout(
    ->
      $('#style-text').html finalStyle
      $('#style-tag').html finalStyle
      pre = document.getElementById 'style-text'
      pre.scrollTop = pre.scrollHeight
  ,
    2 * commentTime
  )

# appending the tags I'll need.
$('body').append '''
  <style id="style-tag"></style>
	<span id="echo"></span>
	<span id="heart"><i></i></span>
	<pre id="style-text"></pre>
  <div style ="position:fixed;left:30px;bottom:10px;">
    <a style="color:#fff" id="skipAnimation" href="#">跳过动画</a>
    <a style="color:#fff" href="https://exuanbo.xyz/love-gift">重新播放</a>
    <a style="color:#fff" target="_blank" href="https://github.com/exuanbo/love-gift">源码仓库</a>
    <a style="color:#fff" target="_blank" href="https://exuanbo.xyz">我的网站</a>
  </div>
'''

commentTime = 60
codeTime = 15

$(document).ready ->
  $('#skipAnimation').click ->
    skip()

# starting it off
writeStyles styles, 0, commentTime
