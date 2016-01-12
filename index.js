global.require = function () {
  global.require = undefined
  return undefined
}
// Just in case
module.exports = require
