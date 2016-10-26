package trashcan;

import web.model.logic.command.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TeamCreateCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        return "view/teamCreate/TeamName.jsp";

    }
}
