if Meteor.isClient
    Template.search.events
        'keypress input': (e) ->
            if (e.which == 13) 
                Meteor.call "searchSpotify", $('#searchInput').val(), (error, results) ->
                    Session.set('searchResults', results.data.tracks.items)