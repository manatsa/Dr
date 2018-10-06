package com.mana.dr.services;

import com.mana.dr.entities.Kinsman;
import com.mana.dr.repositories.KinsmanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KinsmanService implements KinsmanInterface {

    @Autowired
    KinsmanRepository kinsmanRepository;

    @Override
    public List<Kinsman> getAllKinsmen() {
        return kinsmanRepository.findAll();
    }

    @Override
    public Kinsman getKinsmanById(Long id) {
        return kinsmanRepository.findById(id).get();
    }

    @Override
    public Kinsman saveKinsman(Kinsman kinsman) {
        return kinsmanRepository.save(kinsman);
    }

    @Override
    public Kinsman editKinsman(Kinsman kinsman, Long id) {
        Kinsman kinsman1=kinsmanRepository.findById(id).get();
        kinsman1.setPhone(kinsman.getPhone());
        kinsman1.setLastName(kinsman.getLastName());
        kinsman1.setIdNumber(kinsman.getIdNumber());
        kinsman1.setFirstName(kinsman.getFirstName());
        kinsman1.setEmail(kinsman.getEmail());
        kinsman1.setAddress(kinsman.getAddress());
        return kinsmanRepository.save(kinsman1);

    }

    @Override
    public int deleteKinsman(Long id) {
        kinsmanRepository.deleteById(id);
        return 1;
    }
}
