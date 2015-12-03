class Complement
  VERSION = 2

  DNA_NUCLEOTIDES = %w(G C T A)
  RNA_NUCLEOTIDES = %w(C G A U)

  def self.of_dna(strand)
    valid_strand?(strand, DNA_NUCLEOTIDES)
    strand.tr(DNA_NUCLEOTIDES.join, RNA_NUCLEOTIDES.join)
  end

  def self.of_rna(strand)
    valid_strand?(strand, RNA_NUCLEOTIDES)
    strand.tr(RNA_NUCLEOTIDES.join, DNA_NUCLEOTIDES.join)
  end

  def self.valid_strand?(strand, type)
    fail ArgumentError, 'Incorrect nucleotide' if strand =~ /[^#{type.join}]/
  end
end
