package web.model.logic.command;

import web.model.logic.FullTeamService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegCommand implements Command {


    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String regLogin = request.getParameter("regLogin");
        String regPassword = request.getParameter("regPassword");
        FullTeamService fullTeamService = new FullTeamService();
        if (fullTeamService.isUserExist(regLogin,regPassword)){
            return "RegistrationFailed.jsp";
        }
        else { fullTeamService.createNewAccount(regLogin,regPassword);
            return "SuccessRegistration.jsp";
        }
    }
}
