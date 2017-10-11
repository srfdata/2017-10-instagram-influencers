# Identifying a Large Number of Fake Followers on Instagram

## A Statistical Learning Approach

*There have been quite some reports about high numbers of fake followers in the emerging influencer marketing business. However, we know of no systematic study that actually tried to thouroughly quantify the phenomenon. This journalistic investigation therefore sets out to quantify the amount of fake followers in a representative sample of Swiss Instagram influencers. It does that by training and employing a statistical model that has sufficient precision to reliably distinguish a fake from a real follower. The results show that fake followers are indeed a widespread phenomenon, as almost a third of approximately 7 million classified accounts appear to be fake – on average, the surveyed influencers have around 30% fake followers. Also, influencers with high ratios of fake followers seem to form a distinct cluster which stands apart from influencers with a "normal" base rate of fake followers.*

## Preliminary Remarks

This document illustrates the analysis supporting the articles on Instagram influencers, published on October 11th, 2017 and available on the [home page of SRF Data](https:/www.srf.ch/data).

SRF Data attaches great importance to transparent and reproducible data preprocessing and -analysis. SRF Data believes in the principles of open data but also open and reproducible methods. Third parties should be empowered to build on the work of SRF Data and to generate new analyses and applications.

### R-Script & Processed Data

The analysis of the data was conducted in the [R project for statistical computing](https://www.r-project.org/). The RMarkdown script used to generate this document and all the resulting data can be downloaded under this [link](https://srfdata.github.io/2017-10-instagram-influencers/rscript.zip). Through executing `analysis.Rmd`, the herein described process can be reproduced and this document can be generated. In the course of this, data from the folder `ìnput` will be processed and results will be written into `output`.

### GitHub

The code for the herein described process can also be freely downloaded from [https://github.com/srfdata/2017-10-instagram-influencers](https://github.com/srfdata/2017-10-instagram-influencers). Criticism in the form of GitHub issues and pull requests are very welcome!

### License

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons Lizenzvertrag" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
<br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Dataset" property="dct:title" rel="dct:type">2017-10-instagram-influencers</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/srfdata/2017-10-instagram-influencers" property="cc:attributionName" rel="cc:attributionURL">SRF Data</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

### Other Projects

All code & data from [SRF Data](https://srf.ch/data) are available under [https://srfdata.github.io](https://srfdata.github.io).

### Exclusion of Liability

The published information has been collated carefully, but no guarantee is offered of its completeness, correctness or up-to-date nature. No liability is accepted for damage or loss incurred from the use of this script or the information drawn from it. This exclusion of liability also applies to third-party content that is accessible via this offer.