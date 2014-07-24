if Meteor.isClient
    Template.search.helpers
      searchResults: ->
        searchResults = Session.get("searchResults");