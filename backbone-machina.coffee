import { Events } from 'backbone'
import { extend } from 'lodash'
import { Fsm } from 'machina'

export default BackboneFsm = Fsm.extend
    constructor: ->
        Fsm.apply @, arguments
        @on 'transition', ({fromState, toState, action}) =>
            @emit "exit:#{fromState}", @, action
            @emit "enter:#{toState}", @, action
        @

extend BackboneFsm.prototype, Events
BackboneFsm.prototype.emit = BackboneFsm.prototype.trigger
