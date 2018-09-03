# backbone-machina

[machina.Fsm][1] dressed as a fourth [Backbone][2] pillar next to Model, View and Router.

[1]: http://backbonejs.org
[2]: http://machina-js.org


## Quickstart

```console
$ npm i backbone-machina
```

```js
import BackboneFsm from 'backbone-machina';

const someFsm = new BackboneFsm({...});
someFsm.on('enter:someState', (fsm, action) => {...});
someFsm.on('exit:anotherState', (fsm, action) => {...});
```

`BackboneFsm` is the default and only export of this package. It extends both [`machina.Fsm`][3] and [`Backbone.Events`][4]. In addition, it emits `enter:stateName` and `exit:stateName` events so you can hook into the behaviour of your FSM in the same way as you would do with `Backbone.Model` et al. This fully describes the API.

[3]: https://github.com/ifandelse/machina.js/wiki/API
[4]: https://backbonejs.org/#Events


## Why you should use this

If you are using Backbone, then you already have some powerful tools at your disposal for managing (changes of) state:

 - `Model` and `Collection` for the state of your *data*;
 - `View` for the state of your *document*;
 - `Router` for the state of the *URL* that is shown in the browser.

There is fourth type of state, however, that none of these classes captures very well. I would call this *contextual state*. Examples of contextual state include

 - whether the user has authenticated or not;
 - whether a search is blank, being edited, submitted, successful or unsuccessful;
 - whether there is still a connection with the backend.

Finite state machines are ideal for managing contextual state. There are many libraries out there that provide finite state machines, but I believe machina is the most declarative and also the most powerful of them all. To my knowledge, backbone-machina is the first library that marries Backbone and machina. Head to http://machina-js.org for some impressive examples of what a `machina.Fsm` can do!


## Recommended usage

Head over to the [wiki][5] for some philosophy on Backbone project organization, which also discusses the place of `BackboneFsm` in your project.

[5]: https://github.com/jgonggrijp/backbone-machina/wiki/Backbone-project-organization-philosophy


## Limitations

*Please consult the [issue list][6] for the most up-to-date information on bugs and missing features.*

 - `machina.Fsm`'s `eventListeners` option is currently not supported. [#1][7]
 - There is no `machina.BehavioralFsm` variant. [#2][8]

[6]: https://github.com/jgonggrijp/backbone-machina/issues
[7]: https://github.com/jgonggrijp/backbone-machina/issues/1
[8]: https://github.com/jgonggrijp/backbone-machina/issues/2
