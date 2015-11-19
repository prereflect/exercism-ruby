class Complement
  VERSION= 2

  DNA_NUCLEOTIDES = ['G', 'C', 'T', 'A']
  RNA_NUCLEOTIDES = ['C', 'G', 'A', 'U']

  def self.of_dna(strand)
    valid_dna_strand?(strand)
    strand.tr(DNA_NUCLEOTIDES.join, RNA_NUCLEOTIDES.join)
  end

  def self.of_rna(strand)
    valid_rna_strand?(strand)
    strand.tr(RNA_NUCLEOTIDES.join, DNA_NUCLEOTIDES.join)
  end

  private

  def self.valid_dna_strand?(strand)
    strand.each_char do |dna_nucleotide|
      raise ArgumentError,
        'Not a valid DNA Nucleotide' unless
      DNA_NUCLEOTIDES.include?(dna_nucleotide)
    end
  end

  def self.valid_rna_strand?(strand)
    strand.each_char do |rna_nucleotide|
      raise ArgumentError,
        'Not a valid RNA Nucleotide' unless
      RNA_NUCLEOTIDES.include?(rna_nucleotide)
    end
  end
end
