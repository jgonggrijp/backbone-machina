import { Events } from 'backbone'
import { extend } from 'lodash'
import { Fsm } from 'machina'

export default BackboneFsm = Fsm.extend
    constructor: ->
        Fsm.apply @, arguments
        @_events = mirrorStar(@_events || {})
        @on @eventListeners
        @eventListeners = @_events
        @

    eventListeners:
        transition: ({fromState, toState, action}) ->
            @emit "exit:#{fromState}", @, action
            @emit "enter:#{toState}", @, action

extend BackboneFsm.prototype, Events,
    emit: Events.trigger

mirrorStar = (eventMap) ->
    Object.defineProperty eventMap, '*',
        get: -> @all
        set: (newValue) -> @all = newValue
    eventMap
