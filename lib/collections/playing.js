Playing = new Meteor.Collection('playing');

if (Playing.find().count() === 0){
	console.log('no now playing data');
	Playing.insert({
		name: 'No song data yet',
		artist: 'Please start your player',
		userName: 'Made by Jae\'s Chausages',
		trackArt: "https://i.scdn.co/image/65e56facb763991812a60e80e53562db81720221"
	});
}