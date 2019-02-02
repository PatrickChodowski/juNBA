function parse_game_period(periods_list, p_number)
        period_number = get(periods_list[p_number],"p",0)
        plays = get(periods_list[p_number],"pla",0)
        period_df = vcat(map(play_row -> convert(DataFrame, play_row), plays)...)
        period_df[:period_number] = period_number
        return period_df
   end
