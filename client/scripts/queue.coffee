if Meteor.isClient
    Template.queueItem.events
        'click .upvote': (e) ->
            Meteor.call "upvoteTrack", $(@)[0], (error, results) ->
                $.growl({
                    icon: 'glyphicon glyphicon-warning-sign',
                    title: ' Bootstrap Growl ',
                    message: 'Turning standard Bootstrap alerts into "Growl-like" notifications'
                },{
                    type: "danger",
                    placement: {
                        from: "bottom",
                        align: "center"
                    }
                    animate: {
                        enter: 'animated bounceInUp',
                        exit: 'animated bounceOutDown'
                    }
                });
                trackName = results.name
        'click .downvote': (e) ->
            Meteor.call "downvoteTrack", $(@)[0], (error, results) ->
                console.log(results)