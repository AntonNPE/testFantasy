package web.model.logic.command;

import web.model.logic.FullTeamService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LogCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        FullTeamService fullTeamService = new FullTeamService();

        if (fullTeamService.isUserExist(login,password)) {
            request.setAttribute("userId",fullTeamService.getUser().getId());
            return "accountPage.jsp";
        }
        else return "index.jsp";

    }

}
