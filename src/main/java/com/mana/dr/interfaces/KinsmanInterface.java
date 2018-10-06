package com.mana.dr.interfaces;

import com.mana.dr.entities.Kinsman;

import java.util.List;

public interface KinsmanInterface {
    public List<Kinsman> getAllKinsmen();
    public Kinsman getKinsmanById(Long id);
    public Kinsman saveKinsman(Kinsman kinsman);
    public Kinsman editKinsman(Kinsman kinsman,Long id);
    public int deleteKinsman(Long id);
}
