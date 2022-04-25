package com.ernesto.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ernesto.dojosandninjas.models.Dojo;
import com.ernesto.dojosandninjas.models.Ninja;
import com.ernesto.dojosandninjas.repositories.DojoRepository;
import com.ernesto.dojosandninjas.repositories.NinjaRepository;

@Service
public class MainService {
//	import repositories
	@Autowired
	private NinjaRepository ninjaRepo;

	@Autowired
	private DojoRepository dojoRepo;

//// or option 2
//	private final NinjaRepository ninjaRepo;
//	private final DojoRepository dojoRepo;
//
//	public MovieService(NinjaRepository ninjaRepo, DojoRepository dojoRepo) {
//		this.ninjaRepo = ninjaRepo;
//		this.dojoRepo = dojoRepo;
//	}

//create a NINJA
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}

//find all ninjas
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}

//find one ninja
	public Ninja findOneNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if (optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}

//--------------------------------------------	
//create a DOJO
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

//find all dojos
	public List<Dojo> findAllDojos() {
		return dojoRepo.findAll();
	}

//find one dojo
	public Dojo findOneDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if (optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}

}
