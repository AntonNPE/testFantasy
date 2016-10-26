package web.model.logic.command;

import web.model.entity.Player;
import web.model.logic.FullTeamService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Set;


public class TempCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String clubSort = request.getParameter("clubSort");
        String positionSort = request.getParameter("positionSort");
        String priceSort = request.getParameter("priceSort");
        int userId = Integer.parseInt(request.getParameter("userId"));

        FullTeamService fullTeamService3 = new FullTeamService();
        Set <Player> set = fullTeamService3.getSortedTeam(clubSort,positionSort,priceSort);
        request.setAttribute("sortedTeam",set);

        FullTeamService fullTeamService1 = new FullTeamService();
        Set <Player> anotherSet = fullTeamService1.getPlayersByTeamName(request.getParameter("teamName"),userId);
        request.setAttribute("playersByName",anotherSet);
        return "TeamCreateDisplay.jsp";



    }
}
