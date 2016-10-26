package web.model.util;

import web.model.entity.Player;

import java.util.Iterator;
import java.util.List;


public class CustomIterator implements Iterator<Player> {

    private List<Player> team;
    private static int count;

    public CustomIterator(List<Player> team) {
        this.team = team;
    }

    @Override
    public boolean hasNext() {
        return count < team.size();
    }

    @Override
    public Player next() {
        return team.get(count++);
    }

    @Override
    public void remove() {

    }
}
