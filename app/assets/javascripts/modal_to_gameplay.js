var sigin_button = $('#sigin_button');
var about_page_container = $('#about_page_container');
var game_container = $('#game');

var player1_name = $('#player1name').val();
var player2_name = $('#player2name').val();
var player3_name = $('#player3name').val();
var player1_name_show = $('#player1_name_show');
var player2_name_show = $('#player2_name_show');
var player3_name_show = $('#player3_name_show');

var switch_from_homepage_to_game = function() {
  sigin_button.on('click', function(){
    alert('what up')
    // take player names from forms and append to their divs showing their names
    player1_name_show.append(player1_name);
    player2_name_show.append(player2_name);
    player3_name_show.append(player3_name);
    // display: none for about_page
    about_page_container.css('display', 'none');
    // show the game page
    game.css('display', 'visible');

  });
};
