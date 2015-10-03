class Complement
  DNA_NUCLEOTIDES = ['G', 'C', 'T', 'A']
  RNA_NUCLEOTIDES = ['C', 'G', 'A', 'U']

  def self.of_dna(dna_strand)
    rna_strand = ''

    dna_strand.each_char do |dna_nucleotide|
      raise ArgumentError,
        'Not a valid DNA Nucleotide' unless
        DNA_NUCLEOTIDES.include?(dna_nucleotide)

      case
      when dna_nucleotide == 'G'
        rna_strand << 'C'
      when dna_nucleotide == 'C'
        rna_strand << 'G'
      when dna_nucleotide == 'T'
        rna_strand << 'A'
      when dna_nucleotide == 'A'
        rna_strand << 'U'
      end
    end

    rna_strand
  end

  def self.of_rna(rna_strand)
    dna_strand = ''

    rna_strand.each_char do |rna_nucleotide|
      raise ArgumentError,
        'Not a valid RNA Nucleotide' unless
        RNA_NUCLEOTIDES.include?(rna_nucleotide)

      case
      when rna_nucleotide == 'C'
        dna_strand << 'G'
      when rna_nucleotide == 'G'
        dna_strand << 'C'
      when rna_nucleotide == 'A'
        dna_strand << 'T'
      when rna_nucleotide == 'U'
        dna_strand << 'A'
      end
    end

    dna_strand
  end
end
