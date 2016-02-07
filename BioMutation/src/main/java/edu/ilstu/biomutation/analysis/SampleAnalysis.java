package edu.ilstu.biomutation.analysis;

import org.biojava.nbio.core.exceptions.CompoundNotFoundException;
import org.biojava.nbio.core.sequence.DNASequence;
import org.springframework.stereotype.Service;

@Service
public class SampleAnalysis implements Analysis {


	@Override
	public String analyze() {
		// TODO Auto-generated method stub
		return "Hello World from Implementation";
	}
	
	public DNASequence sequence(String sequence) throws CompoundNotFoundException {
		return new DNASequence(sequence);
	}
}
