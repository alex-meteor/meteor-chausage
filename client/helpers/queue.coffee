Template.queue.helpers
    queueList: ->
        Queue.find {}, {sort: {votes: -1 }}
    nowPlayingItem: ->
        playingData = Playing.findOne {}