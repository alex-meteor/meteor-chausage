if Meteor.isClient
    Template.search.events
        'keypress input': (e) ->
            if (e.which == 13) 
                Meteor.call "searchSpotify", $('#searchInput').val(), (error, results) ->
                    Session.set('searchResults', results.data.tracks.items)
     Template.searchResult.events
        'click .add-to-queue': (e) ->
            Queue.insert $(@)[0]
            $(e.currentTarget).parent().slideUp()
