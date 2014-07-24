if Meteor.isServer
    Meteor.methods
        searchSpotify: (trackName) ->
            this.unblock()
            Meteor.http.call("GET", "https://api.spotify.com/v1/search?q=#{trackName}&type=track")