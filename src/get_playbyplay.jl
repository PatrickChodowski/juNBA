using HTTP
using JSON
using DataFrames


function get_playbyplay(game_id)

        season_id = parse(Int,"20"*SubString("$(game_id)",2:3))

        pbp_link = "https://data.nba.com/data/10s/v2015/json/mobile_teams/nba/$(season_id)/scores/pbp/00$(game_id)_full_pbp.json"
        resp = HTTP.get(pbp_link)
        str = String(resp.body)
        jobj = JSON.Parser.parse(str)

        game_info = get(jobj, "g", 0)
        game_code = get(game_info,"gcode",0)
        game_date_id = parse(Int,split(game_code,"/")[1])
        visit_team = split(game_code,"/")[2][1:3]
        home_team = split(game_code,"/")[2][4:6]
        periods_list = get(game_info, "pd",0)
        number_of_periods = length(periods_list)

        pbp_full = vcat(map(period_number -> parse_game_period(periods_list, period_number), 1:number_of_periods)...)

        colnames = ["clock",
                    "description",
                    "secondary_player_id",
                    "event_type",
                    "event_id",
                    "home_score",
                    "loc_x",
                    "loc_y",
                    "message_type",
                    "offensive_team_id",
                    "opponent_player_id",
                    "opt1",
                    "opt2",
                    "order_no",
                    "player_id",
                    "team_id",
                    "visitor_score",
                    "period_number"]
        names!(pbp_full, Symbol.(colnames))

        pbp_full[:game_id] = game_id
        pbp_full[:game_date_id] = game_date_id
        pbp_full[:home_team] = home_team
        pbp_full[:visit_team] = visit_team

return pbp_full
end
