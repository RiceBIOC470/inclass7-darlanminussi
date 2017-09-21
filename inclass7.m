%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% Using assembly hg19

% A. What human chromosome is it located on?

% Chromosome 13

% B. How many exons does it have?

% 3 exons

% C. What is the precise position of its stop codon in the genome?

% chr13:28547252-28537255

% D. Identify at least one difference in sequence between human and mouse
% CDX2.

% Human mRNA size: 2370
% Mouse mRNA size: 2145

% E. In which human tissues is it expressed most abundantly?

% colon -transverse followed by smal intestine - teminal ileum


%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 

% NM_001265.4

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 

genbank_cdx2 = getgenbank('NM_001265.4');

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?

start_pos = regexp(genbank_cdx2.Sequence, 'atg');
disp(start_pos(1));

stop_codon = regexp(genbank_cdx2.Sequence, 'tca');
disp(stop_codon(end));

% before the start codons 5' UTR, after stop codon 5' UTR

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 

protein_cdx2 = getgenpept(genbank_cdx2.CDS.protein_id);
disp(protein_cdx2.Features);

% Homeobox is at region 190 .. 242


