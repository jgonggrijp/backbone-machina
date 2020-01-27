# backbone-machina

[machina.Fsm][1] dressed as a fourth [Backbone][2] pillar next to Model, View and Router.

[1]: http://machina-js.org
[2]: http://backbonejs.org

[![pipeline status][shield-pipeline]][build] [![latest version on npm][shield-npm]][npm] [![code hosted on GitLab][shield-gitlab]][code] [![issue tracker on GitLab][shield-issues]][tracker] [![author: Julian Gonggrijp][shield-jgonggrijp]][jgonggrijp] [![license text][shield-license]][license] [![made with CoffeeScript][shield-coffee]][coffeescript] [![changelog][shield-changelog]][changelog]

[code]: https://gitlab.com/jgonggrijp/backbone-machina
[tracker]: https://gitlab.com/jgonggrijp/backbone-machina/issues
[license]: https://gitlab.com/jgonggrijp/backbone-machina/blob/master/LICENSE
[changelog]: https://gitlab.com/jgonggrijp/backbone-machina/blob/master/CHANGELOG.md
[build]: https://gitlab.com/jgonggrijp/backbone-machina/commits/develop
[npm]: https://www.npmjs.com/package/backbone-machina
[jgonggrijp]: https://juliangonggrijp.com
[coffeescript]: https://coffeescript.org/


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

[5]: https://gitlab.com/jgonggrijp/backbone-machina/-/wikis/Backbone-project-organization-philosophy

[shield-pipeline]: https://gitlab.com/jgonggrijp/backbone-machina/badges/develop/pipeline.svg
[shield-npm]: https://img.shields.io/npm/v/backbone-machina
[shield-gitlab]: https://img.shields.io/badge/-GitLab-555?logo=gitlab
[shield-issues]: https://img.shields.io/badge/-issues-555?logo=gitlab
[shield-changelog]: https://img.shields.io/badge/-changelog-555?logo=gitlab
[shield-jgonggrijp]: https://img.shields.io/badge/author-Julian_Gonggrijp-708
[shield-license]: https://img.shields.io/npm/l/backbone-machina
[shield-coffee]: https://img.shields.io/badge/-CoffeeScript-2F2625?logo=CoffeeScript
