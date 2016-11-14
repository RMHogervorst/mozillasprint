# proportional tables 
# count everyone per country
# count number of people in every group.
num_notNA <- function(x){sum(!is.na(x))}

vars[1] <- num_notNA(vars[1])

paste(paste0("num_notNA(",vars,")"))

social_science_used <- survey_cleaned %>% filter(
    SOCEC == "Social Sciences & Economics",
    COUNTRYCL == "Netherlands",
    !ROLE %in% c("Industry / Government", "Publisher")) %>%
    select(ROLE, RTOOL:DATASPECCL) %>%
    group_by(ROLE) %>%
    summarise(
        N = n(),
        rtools = num_notNA(RTOOL),        
        spss = num_notNA(SPSS),          
        matlab = num_notNA(MATLAB),        
        excel = num_notNA(EXCEL),        
        ipython = num_notNA(IPYTHON),       
        ropensci = num_notNA(ROPENSCI),      
        dhbox = num_notNA(DHBOX),         
        analyzother = num_notNA(ANALYZOTHCL),
        osf = num_notNA(OPSCIFRAM),
        myexp = num_notNA(MYEXP),         
        bench = num_notNA(BENCHLING),
        protocio = num_notNA(PROTOCIO),
        benchfly = num_notNA(BENCHFLY),
        sciprot = num_notNA(SCIPROT),       
        protoconl = num_notNA(PROTOCONL),
        noteother = num_notNA(NOTEOTHCL),     
        word = num_notNA(WORD),
        gtdrive = num_notNA(GTDRIVE),       
        authorea = num_notNA(AUTHOREA),      
        latex = num_notNA(LATEX),         
        scriven = num_notNA(SCRIVEN),       
        overleaf = num_notNA(OVERLEAF),      
        scalar = num_notNA(SCALAR),        
        writeother = num_notNA(WRITEOTHCL),
        endnote = num_notNA(ENDNOTE),       
        zotero = num_notNA(ZOTERO),        
        refworks = num_notNA(REFWORKS),      
        mendref = num_notNA(MENDREF),       
        papers = num_notNA(PAPERS),        
        refme = num_notNA(REFME),         
        citevi = num_notNA(CITAVI),        
        refother = num_notNA(REFOTHCL),      
        arxiv = num_notNA(ARXIV),         
        pmc = num_notNA(PMC),           
        inrep = num_notNA(INREP),         
        biorxiv = num_notNA(BIORXIV),       
        workpap = num_notNA(WORKPAP),       
        researchgate = num_notNA(RGATESHAREPUB), 
        ssrn = num_notNA(SSRN),          
        sharepubother = num_notNA(SHAREPUBOTHCL), 
        github = num_notNA(GITHUB),        
        figshare = num_notNA(FIGSDATA),      
        zenodo = num_notNA(ZENODATA),      
        dryad = num_notNA(DRYAD),     
        dataverse = num_notNA(DATAVERSE),     
        pangaea = num_notNA(PANGAEA),       
        bitbucket = num_notNA(BITBUCK),       
        dataother = num_notNA(DATAOTHCL)     
    )

social_science_used$ROLE <- forcats::fct_reorder()
social_science_used %>% 
    mutate(ROLE = factor(ROLE),
           rtools = rtools/N,
           spss =  spss/N, 
           matlab =  matlab/N, 
           excel =  excel/N, 
           ipython =  ipython/N,
           ropensci =  ropensci/N,
           dhbox =  dhbox/N,
           analyzother =  analyzother/N
                               ) %>% 
    filter(!ROLE %in% c("Librarian", "Other") ) %>% 
    mutate(ROLE = reorder(ROLE, new.order=c("Bachelor/Master student", 
                                            "PhD student",
                                            "Postdoc",
                                            "Professor / Associate professor / Assistant professor"))
                          ) %>% 
    ggplot(aes(x = ROLE))+
    geom_line(aes(y = rtools))+
    geom_line(aes(y = spss))

#Bachelor/Master student, PhD student, Postdoc, Profes
