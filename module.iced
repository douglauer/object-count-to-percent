# vim: set expandtab tabstop=2 shiftwidth=2 softtabstop=2
_ = require 'lodash'

log = (x...) -> console.log x...

module.exports = to_percent = (obj,decimals=1) ->
  return obj if !_.size(obj)

  total = _.sum _.values obj

  for k,v of obj
    percent = ((v/total) * 100).toFixed(decimals)
    obj[k] = percent

  obj

###
if !module.parent
  log to_percent({
    safari: 100
    chrome: 5
    msie: 10
  })
###

