if Meteor.isClient
    Template.logoutButton.events
        'click #logoutButton': (e) ->
        	Meteor.logout()