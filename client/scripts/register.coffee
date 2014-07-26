if Meteor.isClient
    Template.register.events
        'click #registerButton': (e) ->
            e.preventDefault()
            username = $('#username').val()
            password = $('#password').val()
            Accounts.createUser {username: username, password : password}, (err) ->
                if err
                    console.log(err)
                else
                    console.log('user registered successfully')