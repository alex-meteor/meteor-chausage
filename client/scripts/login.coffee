if Meteor.isClient
    Template.login.events
        'click #loginButton': (e) ->
            e.preventDefault()
            username = $('#username').val()
            password = $('#password').val()
            Meteor.loginWithPassword username, password, (err) ->
                if err
                    console.log err
                else
                    console.log 'the user has been logged in'