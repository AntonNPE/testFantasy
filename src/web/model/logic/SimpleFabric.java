package web.model.logic;


import web.model.logic.command.*;


public class SimpleFabric {


    public static Command createCommand(String type) {

        switch (type) {

            case "fullTeam":
                return new GetFullTeamCommand();
            case "tempCommand":
                return new TempCommand();
            case "addCommand":
                return new AddPlayerCommand();
            case "subCommand":
                return new SubCommand();
            case "logCommand":
                return new LogCommand();
            case "regCommand":
                return new RegCommand();
            default:
                return new GetFullTeamCommand();
        }

    }

}
