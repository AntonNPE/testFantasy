package web.model.logic.command;


import web.model.entity.Player;
import web.model.logic.FullTeamService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Set;

public class AddPlayerCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String clubSort = request.getParameter("clubSort");
        String positionSort = request.getParameter("positionSort");
        String priceSort = request.getParameter("priceSort");
        FullTeamService fullTeamService = new FullTeamService();
        request.setAttribute("sortedTeam", fullTeamService.getSortedTeam(clubSort, positionSort, priceSort));

        int userId = Integer.parseInt(request.getParameter("userId"));
        int playerId = Integer.parseInt(request.getParameter("playersId"));
        String teamName = request.getParameter("teamName");
        FullTeamService fullTeamService1 = new FullTeamService();
        Set<Player> set = fullTeamService1.getPlayersByTeamName(teamName,userId);
        Player player = fullTeamService1.getPlayerById(playerId);
        if (!set.contains(player)) {
            set.add(player);
            fullTeamService1.setPlayerInTeam(teamName, playerId,userId);
        }
        request.setAttribute("playersByName", set);
        return "TeamCreateDisplay.jsp";
    }
}
