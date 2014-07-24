  Router.configure
      layoutTemplate: 'layout'

  Router.map ->
    this.route 'queue', path: '/'
    this.route 'queue', path: '/home'
    this.route 'about'
    this.route 'search'
    this.route 'login', path: '/profile'