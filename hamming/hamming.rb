class Hamming
  def self.compute(dna_strand_1, dna_strand_2)
    raise ArgumentError,
      "The strands are of different length" if
      dna_strand_1.length != dna_strand_2.length

    dna_strands = dna_strand_1.chars.zip(dna_strand_2.chars)

    dna_strands.count do |nucleotide_1, nucleotide_2|
      nucleotide_1 != nucleotide_2
    end
  end
end
