###
@author Your Name <email@example.com>
@license LICENSE
###

# # Library
#
# Before starting, adjust L25 and set your module's export name (or just remove
# the whole UMD wrapper). Also modify L23 and handle any dependencies you might
# have.
#

## UMD WRAPPER ##
define = ((root) ->
  if typeof root.define is 'function' and root.define.amd
    root.define
  else
    if typeof root.module is 'object' and root.module.exports
      (factory) -> module.exports = factory(root.require)
    else
      require = (dep) ->
        (() ->
          null
        )() or throw new Error "Unmet dependency #{dep}"
      (factory) -> root.myModule = factory(require)
) this


define (require) ->

    ## HAPPY HACKING! ##

