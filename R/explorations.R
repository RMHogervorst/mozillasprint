# explorations 
survey_cleaned %>% filter(
    SOCEC == "Social Sciences & Economics") %$%  
    #View() # 6465
    table(ROLE) # distinct roles

# PUBYEAR = eerste jaar van publicatie
# analyse data: 
# RTOOL : ANALYZSPECCL (57)
# share notebooks etc: 
# OPSCIFRAM (58):NOTESPECCL(66)
# What tools/sites do you use to archive/share publications
# ARXIV:DATASPECCL
survey_cleaned %>% filter(
    SOCEC == "Social Sciences & Economics") %$%
    table(COUNTRYCL) %>% sort()
# Albania                Algeria 
# 1                      4 
# Argentina                Armenia 
# 39                      2 
# Australia                Austria 
# 211                     28 
# Bahamas                Bahrain 
# 10                      1 
# Bangladesh               Barbados 
# 11                      3 
# Belarus                Belgium 
# 10                     61 
# Bolivia Bosnia and Herzegovina 
# 1                      3 
# Botswana                 Brazil 
# 3                    139 
# Brunei               Bulgaria 
# 5                      7 
# Cabo Verde               Cameroon 
# 1                      5 
# Canada                  Chile 
# 158                     31 
# China               Colombia 
# 55                     60 
# Costa Rica                Croatia 
# 7                     19 
# Cuba                 Cyprus 
# 3                     10 
# Czech Republic                Denmark 
# 20                     35 
# Ecuador                  Egypt 
# 8                      5 
# Estonia               Ethiopia 
# 8                      7 
# Finland                 France 
# 54                    187 
# Georgia                Germany 
# 1                    601 
# Ghana                 Greece 
# 22                     64 
# Guatemala               Honduras 
# 3                      2 
# Hungary                Iceland 
# 26                      3 
# India              Indonesia 
# 146                     27 
# Iran                Ireland 
# 33                     31 
# Israel                  Italy 
# 29                    174 
# Jamaica                  Japan 
# 5                     62 
# Jordan             Kazakhstan 
# 3                      1 
# Kenya                 Kuwait 
# 13                      5 
# Laos                 Latvia 
# 1                      5 
# Lebanon                Lesotho 
# 8                      1 
# Liberia                  Libya 
# 1                      1 
# Lithuania             Luxembourg 
# 7                      4 
# Macedonia                 Malawi 
# 7                      2 
# Malaysia                  Malta 
# 42                      9 
# Mauritius                 Mexico 
# 2                     72 
# Moldova                 Monaco 
# 6                      1 
# Mongolia                Morocco 
# 1                      2 
# Mozambique                  Nepal 
# 1                      3 
# Netherlands            New Zealand 
# 578                     54 
# Nicaragua                Nigeria 
# 1                     45 
# Norway                   Oman 
# 78                      2 
# Pakistan              Palestine 
# 32                      3 
# Panama                   Peru 
# 1                     15 
# Philippines                 Poland 
# 15                     45 
# Portugal                  Qatar 
# 57                      6 
# Romania                 Russia 
# 32                    119 
# Saudi Arabia                 Serbia 
# 15                      5 
# Seychelles           Sierra Leone 
# 1                      1 
# Singapore               Slovakia 
# 15                      9 
# Slovenia           South Africa 
# 13                     89 
# South Korea                  Spain 
# 13                    265 
# Sri Lanka                  Sudan 
# 9                      7 
# Suriname                 Sweden 
# 1                     71 
# Switzerland                  Syria 
# 69                      1 
# Taiwan               Tanzania 
# 31                      5 
# Thailand    Trinidad and Tobago 
# 12                      2 
# Tunisia                 Turkey 
# 9                     55 
# Uganda                Ukraine 
# 9                     61 
# United Arab Emirates         United Kingdom 
# 7                    559 
# United States                Uruguay 
# 1342                      9 
# Venezuela                Vietnam 
# 38                      3 
# Zambia               Zimbabwe 
# 5                      1 
# 
# we kunnen natuurlijk ook alleen de nederlanders nemen

survey_cleaned %>% filter(
    SOCEC == "Social Sciences & Economics",
    COUNTRYCL == "Netherlands",
    !ROLE %in% c("Industry / Government", "Publisher")) %$%
    table(ROLE) %>% sort() %>% View()
