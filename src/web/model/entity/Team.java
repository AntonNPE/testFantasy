package web.model.entity;

import web.model.util.CustomIterator;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Team implements Iterable <Player> {


    private List<Player> team;
    private int cost;
    private int TEAM_BUDGET = 100;
    private int goalkeepersCount;
    private int defendersCount;
    private int midfieldersCount;
    private int forwardsCount;


    public Team() {
        this.team = new ArrayList<>();
    }

    @Override
    public Iterator<Player> iterator() {
        return new CustomIterator(team);
    }

    public void addGoalkeepersCount() {
        this.goalkeepersCount++;
    }

    public void addDefendersCount() {
        this.defendersCount++;
    }

    public void addMidfieldersCount() {
        this.midfieldersCount++;
    }

    public void addForwardsCount() {
        this.forwardsCount++;
    }

    public int getGoalkeepersCount() {

        return goalkeepersCount;
    }

    public int getDefendersCount() {
        return defendersCount;
    }

    public int getMidfieldersCount() {
        return midfieldersCount;
    }

    public int getForwardsCount() {
        return forwardsCount;
    }

    public int getTEAM_BUDGET() {
        return TEAM_BUDGET;
    }

    public int transferMoney() {

        return TEAM_BUDGET - cost;
    }

    public void addCost(int price) {

        cost += price;

    }

    public List<Player> getAllTeam() {
        return team;
    }

    public int getCost() {
        return cost;
    }


    public Player getPlayer(int i) {
        return team.get(i);
    }

    public void addPlayer(Player player) {

        team.add(player);

    }


    public int getTeamSize() {
        return team.size();
    }

    public void removePlayer(Player player) {
        team.remove(player);

    }

    @Override
    public String toString() {
        return "\n" + team;

    }
}