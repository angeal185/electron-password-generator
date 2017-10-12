pw_len = undefined

genpw = (id, plen, arg1, arg2, arg3, arg4) ->
  obj = document.getElementById(id)
  arg1 = document.getElementById(arg1)
  arg2 = document.getElementById(arg2)
  arg3 = document.getElementById(arg3)
  arg4 = document.getElementById(arg4)
  obj.value = GeneratePassword(plen, arg1.checked, arg2.checked, arg3.checked, arg4.checked)
  return

GeneratePassword = (length, arg1, arg2, arg3, arg4) ->
  res = ''
  str = ''
  str1 = 'qwertyuioplkjhgfdsazxcvbnm'
  str2 = 'QWERTYUIOPLKJHGFDSAZXCVBNM'
  str3 = '1234567890'
  str4 = '!@#$%^&*.,/{}[]:;()<>'
  if arg1
    str = str + str1
  if arg2
    str = str + str2
  if arg3
    str = str + str3
  if arg4
    str = str + str4
  i = 0
  while i < length
    j = getRandomNum(str.length)
    res = res + str.charAt(j)
    i++
  res

getRandomNum = (cnt) ->
  rndNum = Math.random()
  rndNum = parseInt(rndNum * cnt)
  rndNum

refreshpw = ->
  genpw 'pw', pw_len, 'arg1', 'arg2', 'arg3', 'arg4'
  return

new Dragdealer('my-slider',
  x: 0.09
  steps: 252
  snap: true
  animationCallback: (x, y) ->
    pw_len = parseInt(4 + x * 252)
    document.getElementById('drag-helper').innerHTML = pw_len + ' CHAR'
    refreshpw 'pw'
    return
)
labels = [
  'l1'
  'l2'
  'l3'
  'l4'
]
labels.forEach (el_id) ->
  el = document.getElementById(el_id)

  el.onselectstart = ->
    false

  el.onmousedown = ->
    false

  return