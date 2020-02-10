# Changelog of backbone-machina

Newest version on top.


## 1.1.0 — 2020-02-10

- Added full support for Machina.Fsm's `eventListeners` option.
- Added support for Machina's `'*'` event wildcard as an alternative for Backbone.Event's `'all'`. Both forms can now be used interchangeably.
- As a result of the above two changes, BackboneFsm is finally a true drop-in replacement for Machina.Fsm. It can now be used in hierarchical settings.
- Upgraded all dependencies to their latest versions. This includes a major upgrade from Machina 2.0.2 to 4.0.2. However, the latter upgrade introduces no breaking changes that affect users of backbone-machina. In particular, Machina.Fsm in version 4.0.2 is still API-compatible with version 2.0.2.
- Moved the source repository from GitHub to GitLab.
- Renamed the `master` branch to `production` and the `develop` branch to `master`.


## 1.0.0 — 2018-09-03

Initial release. Included machina.Fsm and Backbone.Events interfaces as well as enter:state and exit:state events. Lacked support for the `eventListeners` option, which made it impossible to create hierarchical FSMs.
