if Meteor.isClient
    Template.queueItem.events
        'click .upvote': (e) ->
        	Meteor.call "upvoteTrack", $(@)[0], (error, results) ->
        		console.log(results)

        'click .downvote': (e) ->
        	Meteor.call "downvoteTrack", $(@)[0], (error, results) ->
        		console.log(results)