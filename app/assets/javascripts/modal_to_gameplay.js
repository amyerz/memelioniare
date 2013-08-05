$(document).ready(function () {

    var startGameButton = $('#startGameButton'); //start the game
    var about_page_container = $('#about_page_container'); //
    var game_container = $('#game');

    var switch_from_homepage_to_game = function() {
      startGameButton.on('click', function(){
        var player1_name = $('#player1name').val().toUpperCase();
        var player2_name = $('#player2name').val().toUpperCase();
        var player3_name = $('#player3name').val().toUpperCase();
        var player1_name_show = $('#player1_name_show');
        var player2_name_show = $('#player2_name_show');
        var player3_name_show = $('#player3_name_show');
        // take player names from forms and append to the h3's showing their names

        player1_name_show.append(player1_name);
        player2_name_show.append(player2_name);
        player3_name_show.append(player3_name);

        game.player[0].name = player1_name;
        game.player[1].name = player2_name;
        game.player[2].name = player3_name;

        // close/hide the modal
        $('#myModal').modal('hide');
        // display: none for about_page
        about_page_container.hide();
        // show the game page

        game_container.show();

        load_questions();

      });
    };


   switch_from_homepage_to_game();


});
