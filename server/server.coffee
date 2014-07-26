if Meteor.isServer
    io = Meteor.require('socket.io')(6665)
    
    io.on 'connect', Meteor.bindEnvironment (socket) ->
        socket.emit 'connection', 'you are connected'
        socket.on 'getNextSong', Meteor.bindEnvironment (err,res) ->
            nextSongData = Queue.findOne {}, {sort: {votes: -1 }}
            socket.emit('nextSong', nextSongData.uri)
            Queue.remove(nextSongData._id)
            playingData = Playing.findOne {}
            Playing.update({_id: playingData._id}, {$set: {
                name: nextSongData.name
                artist: nextSongData.artists[0].name
                trackArt: nextSongData.album.images[0].url
                userName: Meteor.users.findOne({_id: nextSongData.userId}).username
            }})