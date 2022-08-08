# Translate RNA sequences into proteins.

# RNA can be broken into three nucleotide sequences called codons, and then translated to a polypeptide like so:

# RNA: "AUGUUUUCU" => translates to

# Codons: "AUG", "UUU", "UCU" => which become a polypeptide with the following sequence =>

# Protein: "Methionine", "Phenylalanine", "Serine"

# There are 64 codons which in turn correspond to 20 amino acids; however, all of the codon sequences and resulting amino acids are not important in this exercise. If it works for one codon, the program should work for all of them. However, feel free to expand the list in the test suite to include them all.

# There are also three terminating codons (also known as 'STOP' codons); if any of these codons are encountered (by the ribosome), all translation ends and the protein is terminated.

# All subsequent codons after are ignored, like this:

# RNA: "AUGUUUUCUUAAAUG" =>

# Codons: "AUG", "UUU", "UCU", "UAA", "AUG" =>

# Protein: "Methionine", "Phenylalanine", "Serine"

# Note the stop codon "UAA" terminates the translation and the final methionine is not translated into the protein sequence.

class Translation
  @hash = { "AUG" => "Methionine", "UUU" => "Phenylalanine", "UUC" => "Phenylalanine", "UUA" => "Leucine", "UUG" => "Leucine", "UCU" => "Serine", "UCC" => "Serine", "UCA" => "Serine", "UCG" => "Serine", "UAU" => "Tyrosine", "UAC" => "Tyrosine", "UGU" => "Cysteine", "UGC" => "Cysteine", "UGG" => "Tryptophan", "UAA" => "STOP", "UAG" => "STOP", "UGA" => "STOP" }
  def self.of_codon(strand)
    return @hash[strand]
  end
  def self.of_rna(strand)
    output = []
    codons = strand.chars.each_slice(3).map(&:join)
    codons.each { |codon| @hash[codon] == "STOP" ? (return output) : output.push(@hash[codon]) }
    return output
  end
end

p Translation.of_rna("AUG")
