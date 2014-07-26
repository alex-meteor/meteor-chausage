if Meteor.isServer
    Meteor.methods
        upvoteTrack: (trackData) ->
        	Queue.update({_id: trackData._id}, {$set: {votes: trackData.votes + 1}})
        	trackData
        downvoteTrack: (trackData) ->
        	Queue.update({_id: trackData._id}, {$set: {votes: trackData.votes - 1}})
        	trackData