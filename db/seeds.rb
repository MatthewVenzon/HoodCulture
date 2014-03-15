
Favorite.destroy_all

User.destroy_all

user_list = [ { :first_name => "Matthew",
                :last_name => "Venzon",
                :email_address => "matthew.venzon@gmail.com",
                :password => "HoodCulture",
                :hometown => "Chicago"
              }
            ]

user_list.each do |user|
  u = User.new
  u.first_name = user[:first_name]
  u.last_name = user[:last_name]
  u.email_address = user[:email_address]
  u.password = user[:password]
  u.hometown = user[:hometown]

  u.save
end


##CITIES MODEL

City.destroy_all

city_list = [ { :name => "Manhattan",
                :small_image_url => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZsxrmwKVMypGTzk3iaQaf9AwEMhtA8HXGd0xBkWTGHjH72wrt",
                :large_image_url => "http://hdwallpapercollection.com/wp-content/uploads/2013/06/new-york-city-wallpapers.jpg"
              },
              { :name => "Brooklyn",
                :small_image_url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTn8G0XWfXpH5zsQhH5MzjgHxEsoMoy9vrMoc3SMxJPZ7FuJQcn",
                :large_image_url => "http://24.media.tumblr.com/tumblr_m6kdui5A0P1qcvsq1o1_1280.jpg"
              },
              { :name => "San Francisco",
                :small_image_url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQPDF2I3fFjSIbbD5oazPBWBihVBnOSvWcl1dr3Y49T8I07Yzf3",
                :large_image_url => "http://images.fineartamerica.com/images-medium-large/twin-peaks-in-san-francisco-black-and-white-wingsdomain-art-and-photography.jpg"
              },
              { :name => "Chicago",
                :small_image_url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbs9bAhPIJKJBCJc20b9BXw26Te_t6XGs9MVq9hPOcP5HvJPLV",
                :large_image_url => "http://www.planckstudios.com/media/photos/huge/Feb_2nd_Storm_Randolph_EL_Stop_Brown-Line_1000_BW.jpg"
              },
              { :name => "Los Angeles",
                :small_image_url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT1mJzdmtiSYw-t3Tnrw_fYntq5abDZeQPKxMWK4gsB2lbX0qtBxg",
                :large_image_url => "http://enoughpixalready.files.wordpress.com/2012/08/14440003.jpg"
              },
              { :name => "Boston",
                :small_image_url => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4AMwJOBWsPsZa663zvY2-rMT5DOGo8ngCfABMCptHHC18SUXExw",
                :large_image_url => "http://wrongsideofthecamera.files.wordpress.com/2011/01/boston-boston-common-park-street-snow.jpg"
              }
            ]

city_list.each do |city_stuff|
  c = City.new
  c.name = city_stuff[:name]
  c.small_image_url = city_stuff[:small_image_url]
  c.large_image_url = city_stuff[:large_image_url]
  c.save
end


##NEIGHBORHOOD MODEL

Neighborhood.destroy_all

neighborhood_list = [ { :name => "Greenwich Village",
                        :city_name => "Manhattan",
                        :description => "<p> An important landmark on the map of American bohemian culture, Greenwich Village is known for its colorful, artistic residents and the alternative culture they propagate. Due in part to the progressive attitudes of many of its residents, the Village has traditionally been a focal point of new movements and ideas, whether political, artistic, or cultural. This tradition as an enclave of avant-garde and alternative culture was established during the 19th century and into the 20th century, when small presses, art galleries, and experimental theater thrived.</p>
                                        <p>The Village again became important to the bohemian scene during the 1950s, when the Beat Generation focused their energies there. Fleeing from what they saw as oppressive social conformity, a loose collection of writers, poets, artists, and students (later known as the Beats) and the Beatniks, moved to Greenwich Village, and to North Beach in San Francisco, in many ways creating the east coast-west coast predecessor to the Haight-Ashbury-East Village hippie scene of the next decade.</p>
                                        <p>Currently, many artists and local historians mourn the fact that the bohemian days of Greenwich Village are long gone, because of the extraordinarily high housing costs in the neighborhood. The artists fled first to SoHo then to TriBeCa and finally Williamsburg and Bushwick in Brooklyn, Long Island City, and DUMBO. Nevertheless, residents of Greenwich Village still possess a strong community identity and are proud of their neighborhood's unique history and fame, and its well-known liberal live-and-let-live attitudes.</p>",
                      },
                      { :name => "East Village and Lower East Side",
                        :city_name => "Manhattan",
                        :description => "<p> Traditionally an immigrant, working-class neighborhood, the Lower East Side underwent rapid gentrification in the mid-2000s, prompting The National Trust for Historic Preservation to place the neighborhood on their list of America's Most Endangered Places. It has become a home to upscale boutiques and trendy dining establishments along Clinton Street's restaurant row.</p>
                                        <p> The East Village was once generally considered to be part of the Lower East Side, but began to develop its own identity and culture in the late 1960s, when many artists, musicians, students and hippies began to move into the area, attracted by cheap rents and the base of Beatniks who had lived there since the 1950s. The neighborhood has become a center of the counterculture in New York, and is known as the birthplace and historical home of many artistic movements, including punk rock and the Nuyorican literary movement. It has also been the site of protests and riots. Today, the neighborhood is still known for its diverse community, vibrant nightlife and artistic sensibility, although in recent decades it has been argued that gentrification has changed the character of the neighborhood. </p>",
                      },
                      { :name => "Harlem",
                        :city_name => "Manhattan",
                        :description => "<p>Since the 1920s, Harlem has been known as a major African-American residential, cultural and business center. Black residents began to arrive en masse in 1905, with numbers fed by the Great Migration. In the 1920s and 1930s, Central and West Harlem were the focus of the 'Harlem Renaissance', an outpouring of artistic work without precedent in the American black community. In the 1920s and 1930s, between Lenox and Seventh Avenues in central Harlem, over 125 entertainment places operated, including speakeasies, cellars, lounges, cafes, taverns, supper clubs, rib joints, theaters, dance halls, and bars and grills. 133rd Street, known as 'Swing Street', became known for its cabarets, speakeasies and jazz scene during the Prohibition era, and was dubbed 'Jungle Alley' because of inter-racial mingling on the street.  More recently, Manhattan's contributions to hip-hop stems largely from artists with Harlem roots. </p>",
                      },
                      { :name => "Upper West Side and Morningside Heights",
                        :city_name => "Manhattan",
                        :description => "The Upper West Side is home to some of the city’s most venerable cultural and educational institutions like Lincoln Center, the Juilliard School and Columbia Universityalong with some of the most desirable apartment buildings like the Dakota, Apthorp, Ansonia and the Beresford.  As a result, the neighborhood is populated with families, yuppies, intellectuals and artists and has long been known as the bastion of New York City’s liberal thinking.  The large apartments and formerly cheap rents attracted families, college graduates and a large Jewish population, both well-to-do German Jews who moved in at the turn of the century, and Jewish refugees escaping Hitler's Europe in the 1930's.  Also, the influx of southern blacks, Russians, Dominicans, Puerto Ricans, Haitians, and Ukranians in the forties and fifties, and Cubans, Dominicans, and Puerto Ricans in the fifties and sixties has kept the area diverse and demographically unpredictable.  All these elements have rendered the UWS solidly middle class with a diverse liberal constituency and a bohemian attitude.</p>
                                        <p>From the early thirties through the early eighties, and the Upper West Side's popularity and social attractiveness waned, making it an undesirable address but still maintained a sense of community, attracting artists, writers, and young families with its relatively low rents and neighborhood feel.  In the ‘70s and early 80’s an influx of recent college graduates drawn to the low rents and the wealth of the late 80s renewed the area, raising rents and drawing yuppies and their accompanying incomes; this influx prompted renovation of the grand old buildings of the earlier era.  Today, gentrification has wiped out many of the small businesses that once made the Upper West Side distinctive, but holdouts remain, and you can still find everything from good bagel shops to great bookstores.  </p>
                                        <p>Morningside Heights is a neighborhood of the Borough of Manhattan in New York City and is chiefly known as the home of institutions such as Columbia University, Teachers College, Barnard College, the Manhattan School of Music, Bank Street College of Education, 'Grant's Tomb', the Cathedral of Saint John the Divine, the Riverside Church, the Broadway Presbyterian Church, Union Theological Seminary in the City of New York, Jewish Theological Seminary of America, Interchurch Center and St. Luke's Hospital. Because of the number of educational institutions in the neighborhood, its nickname is the Academic Acropolis. </p>",
                      },
                      { :name => "Brooklyn Heights and Dumbo",
                        :city_name => "Brooklyn",
                        :description => "<p>Brooklyn Heights is one of the borough’s most historic and picturesque neighborhoods, largely composed of block after block of  rowhouses and a few mansions. It was the first neighborhood protected by the 1965 Landmarks Preservation Law of New York City and its Promenade is one of New York’s most popular attractions for tourists and residents alike.</p>
                        <p>Formerly an industrial district, Dumbo became popular among artists for its loft spaces in the 1970s.  The acronym Dumbo arose in 1978, when new residents coined it in the belief such an unattractive name would help deter developers.  Near the end of the 20th century, as property became more and more expensive in Manhattan, Dumbo became increasingly gentrified.  The area has emerged as one of New York City's premier arts districts, with a cluster of for-profit art galleries. Dumbo also has the city’s highest concentration of technology firms by neighborhood.  Dumbo is home to 25 percent of New York City-based tech firms. Within a 10-block radius are 500 tech and creative firms that employ over 10,000 people.</p>"
                      },
                      { :name => "Bedford Stuyvesant",
                        :city_name => "Brooklyn",
                        :description => "<p>For decades, Bed-Stuy has been a cultural center for Brooklyn's black population. Following the construction of the subway line between Harlem and Bedford. in 1936, African Americans left an overcrowded Harlem for more housing availability in Bedford–Stuyvesant.</p>
                                        <p> Beginning in the 2000s, the neighborhood began to experience gentrification. The two significant reasons for this were the affordable housing stock consisting of brownstone rowhouses located on quiet tree-lined streets and the marked decrease of crime in the neighborhood. The latter is at least partly attributable to the decline of the national crack epidemic as well as heightened policing.  As a result, Bedford-Stuyvesant became increasingly racially, economically and ethnically diverse, with an increase of foreign-born Afro-Caribbean and African residents as well as other assorted ethnic backgrounds. As is expected with gentrification, the influx of new residents has contributed to the displacement of poorer residents. In many other cases, newcomers have simply rehabilitated and occupied formerly vacant and abandoned properties. A diverse mix of students, hipsters, artists, creative professionals, architects and attorneys of all races continue to move to the neighborhood. </p>",
                      },
                      { :name => "Williamsburg",
                        :city_name => "Brooklyn",
                        :description => "<p>Williamsburg is an influential hub for indie rock, hipster culture, and the local art community. Many ethnic groups also have enclaves within Williamsburg, including Italians, Jews, Puerto Ricans, and Dominicans. The neighborhood isbeing redefined by a growing population and the rapid development of housing and retail space particularly catered to a wealthy population that has been historically foreign to the neighborhood.  The first artists moved to Williamsburg in the 1970s, drawn by the low rents, large spaces available and convenient transportation, one subway stop from Manhattan. This continued through the 1980s and increased significantly in the 1990s as earlier destinations such as SoHo and the East Village became gentrified. The community was small at first, but by 1996 Williamsburg had accumulated an artist population of about 3,000.  Williamsburg has become a notable home for live music and an incubator for new bands. Beginning in the late 1980s and through the late 1990s a number of unlicensed performance, theater and music venues operated in abandoned industrial buildings and other spaces in the streets surrounding the Bedford Avenue subway stop.</p>
                                        <p>In recent years, the price of land in Willamsburg has skyrocketed.  The North Side (above Grand Street, which separates the North Side from the South Side) is somewhat more expensive due to its proximity to the L and G subway trains. More recent gentrification and the newly revised route of the M train, however, have prompted increases in rent prices south of Grand Street as well. Higher rents have driven many priced-out bohemians and hipsters to find new creative communities further afield in areas like Bushwick, Bedford-Stuyvesant, Fort Greene, Clinton Hill and Red Hook. </p>",
                      },
                      { :name => "Nob Hill",
                        :city_name => "San Francisco",
                        :description => "<p>Nob Hill was settled in the rapid urbanization happening in the city in the late 19th century. Because of the views and its central position, it became an exclusive enclave of the rich and famous on the west coast who built large mansions in the neighborhood. This included prominent tycoons such as Leland Stanford, founder of Stanford University and other members of The Big Four.</p>
                                        <p>The neighborhood was destroyed in the 1906 earthquake and fire, except for the granite walls surrounding the Stanford, Crocker, Huntington and Hopkins mansions. Those walls remain and you can see black scars caused by smoke from the intense fires that burned after the quake.  While the neighborhood was able to maintain its affluence following the quake, every mansion owner moved or rebuilt elsewhere. Some rebuilt mansions further west in San Francisco, for example, in Pacific Heights and Cow Hollow. </p>
                                        <p>Today, Nob Hill is an affluent district, home to many of the city's upper-class families as well as a large young urban professional population, and a growing Chinese immigrant population from Chinatown to the east. Nob is disparaging British slang for newly rich, from the original Mughal Indian/Bengali word Nawab that refers to an upper-class individual. The location is also derisively referred to as Snob Hill. The intersection of California and Powell streets is the location of its four well-known and most expensive hotels: the Fairmont Hotel, the Mark Hopkins Hotel, the Stanford Court, and the Huntington Hotel. </p>",
                      },
                      { :name => "Haight-Ashbury",
                        :city_name => "San Francisco",
                        :description => "<p>The Haight-Ashbury district is noted for its role as a center of the 1960s hippie movement. The earlier bohemians of the beat movement had congregated around San Francisco's North Beach neighborhood from the late 1950s. Many who could not find accommodation there turned to the quaint, relatively cheap and underpopulated Haight-Ashbury. The Summer of Love (1967), the 1960s era as a whole, and much of modern American counterculture have been synonymous with San Francisco and the Haight-Ashbury neighborhood ever since. </p>
                                        <p>The mainstream media's coverage of hippie life in the Haight-Ashbury drew the attention of youth from all over America. Hunter S. Thompson labeled the district 'Hashbury' in The New York Times Magazine, and the activities in the area were reported almost daily.  The neighborhood's fame reached its peak as it became the haven for a number of the top psychedelic rock performers and groups of the time. The Summer of Love attracted a wide range of people of various ages: teenagers and college students drawn by their peers and the allure of joining a cultural utopia; middle-class vacationers; and even partying military personnel from bases within driving distance. The Haight-Ashbury could not accommodate this rapid influx of people, and the neighborhood scene quickly deteriorated. Overcrowding, homelessness, hunger, drug problems, and crime afflicted the neighborhood. Many people simply left in the fall to resume their college studies. On October 6, 1967, those remaining in the Haight staged a mock funeral, 'The Death of the Hippie' ceremony, to signal the end of the played-out scene.  </p>
                                        <p>After 1968, the area went into decline due to an influx of hard drugs and a lack of police presence, but was improved and renewed in the late 1970s.   Today, The area still maintains its bohemian ambiance, though the effects of gentrification are also apparent and continually changing. The neighborhood remains a thriving center of independent local businesses. It is home to a number of independent restaurants and bars, as well as clothing boutiques, booksellers, head shops and record stores including Amoeba Music. The cohabitation between throw-backs to the Fifties lounge scene, organic and spiritual New Age ambiance of the Sixties, punk-rock politics and computer culture is one of the neighborhood's most interesting and endearing aspects socially and artistically. </p>",
                      },
                      { :name => "South Side",
                        :city_name => "Chicago",
                        :description => "<p>The South Side of Chicago was originally defined as all of the city south of the main branch of the Chicago River, but it now excludes the Loop. The South Side has a varied ethnic composition. It has great disparity in income and other demographic measures. Although it has a reputation for being poor or crime-infested, the reality is more varied. The South Side ranges from affluent to middle class to working class to impoverished.  The South Side boasts a broad array of cultural and social offerings, such as professional sports teams, landmark buildings, museums, educational institutions, medical institutions and major parts of Chicago's parks system. </p>
                                        <p>After the Civil War freed the millions of slaves, during Reconstruction black southerners migrated to Chicago and caused the African American population to nearly quadruple from 4,000 to 15,000 between 1870 and 1890. In the 20th century, the numbers expanded with the Great Migration, as African Americans left the agrarian South seeking a better future in the industrial North, including the South Side. The South Side was racially segregated for many decades, and in the early 1960s, during the tenure of then Mayor Richard J. Daley, the construction of the Dan Ryan Expressway created controversy. Many perceived the highway's location as an intentional physical barrier between white and black neighborhoods, particularly as the Dan Ryan divided Daley's own neighborhood, the traditionally Irish Bridgeport, from Bronzeville.</p>
                                        <p>The economic conditions that led to migration into the South Side were not sustained. Mid-century industrial restructuring in meatpacking and the steel industry cost many jobs. African Americans who became educated and achieved middle-class jobs also left after the Civil Rights Movement opened more neighborhoods to them. The South Side lost population, leaving a concentration of poor families. Many of its businesses and cultural amenities departed.</p>",
                      },
                      { :name => "Evanston",
                        :city_name => "Chicago",
                        :description => "<p>Northwestern University, a major landmark of Evanston, was actually founded before the City itself. In 1851, the plans for Northwestern began and in 1855, Northwestern University opened its doors for the first time to 10 students. The founders of Northwestern, one being John Evans, submitted to the county judge their plans for a city and their wishes to rename the town Evanston in 1854. In 1857, the town of Evanston was named. </p>
                                        <p>During the Civil War, the town of Evanston fought on the side of the abolitionists. After the war, Evanston saw a huge economic and population boom. Between 1860 and 1870, the population quadrupled.  Also during this time, an amendment was passed that prohibited the sale of alcohol within four miles of the Northwestern campus. Evanston became a town that supported the prohibition movement and the Women’s Christian Temperance Union was founded in Evanston in 1874. Evanston continued to grow and remain independent of Chicago. The city became known for its architecture and beautiful homes on the lake. Between 1920 and 1930, there was a 70 percent population increase.</p>
                                        <p>Today, Evanston is sill thriving as an independent city. There are many cultural outlets in Evanston, there is a thriving business economy and public lakefront recreation activities. Evanston continues to prosper and refuses to be overshadowed by Chicago.</p>",
                      },
                      { :name => "Hollywood",
                        :city_name => "Los Angeles",
                        :description => "<p>Hollywood is a district in the central region of Los Angeles, and is notable for its place as the home of the entertainment industry, including several of its historic studios. Its name has come to represent the motion picture industry of the United States. Hollywood is also a highly ethnically diverse, densely populated, economically diverse neighborhood and retail business district.  The nicknames Tinseltown and Movie Biz City for Hollywood refer to the glittering nature of the movie industry.</p>
                                        <p>The first studio in Hollywood, the Nestor Company, was established by the New Jersey–based Centaur Company in a roadhouse at 6121 Sunset Boulevard at the corner of Gower, in October 1911.  Four major film companies – Paramount, Warner Bros., RKO and Columbia – had studios in Hollywood, as did several minor companies and rental studios. A new commercial and retail sector opened up. </p>
                                        <p>During the early 1950s the Hollywood Freeway was constructed through the northeast corner of The Capitol Records Building on Vine Street, just north of Hollywood Boulevard, was built in 1956, and the Hollywood Walk of Fame was created in 1958 as a tribute to artists and other significant contributors to the entertainment industry. </p>
                                        <p>After years of serious decline in the 1980s, many Hollywood landmarks were threatened with demolition.   Since 2000, Hollywood has increased in gentrification and revitalization planned by private enterprise and public planners with the goal of recreating the district in line with the principles of urban density in mind and increased commercialization.</p> ",
                      },
                      { :name => "Pasadena",
                        :city_name => "Los Angeles",
                        :description => "<p>Pasadena is the ninth-largest city in Los Angeles County, and on June 19, 1886, became the fifth to be incorporated in Los Angeles County, after Los Angeles (April 4, 1850), Anaheim (February 10, 1870) and Santa Ana (June 1, 1886); the latter two moved to Orange County after its separation from Los Angeles County in 1889. It is one of the primary cultural centers of the San Gabriel Valley.</p>
                                        <p>The city is known for hosting the annual Rose Bowl football game and Tournament of Roses Parade. In addition, Pasadena is also home to many scientific and cultural institutions, including the California Institute of Technology (Caltech), the Jet Propulsion Laboratory, Fuller Theological Seminary, Art Center College of Design, the Pasadena Playhouse, the Norton Simon Museum of Art and the Pacific Asia Museum. <p>",
                      },
                      { :name => "Venice",
                        :city_name => "Los Angeles",
                        :description => "<p>Venice was the creation and dream of one man, Abbott Kinney. Kinney was an investor who built a sort of recreation of Venice, Italy including a massive system of canals and a huge entertainment complex that opened in 1905 and became very popular. The overly ambitious canals were mostly filled and made into streets in 1929. A few of the canals survive and are lined with funky, expensive, and architecturally diverse urban homes. A stroll along a couple of the remaining streets is a lesson in architectural ecclecticism. Kinney's huge Pacific Ocean Park entertainment complex survived until the mid-1960s, eventually succumbing to competition from Disneyland and others. The spirit of his seaside entertainment complex however, still pulses in Venice's captivating Boardwalk.</p>
                                        <p>In the 1950s and early '60s, Venice became a center for the Beat generation. By the late '60s, Venice became a center for radical activism, including a Black Panther chapter, a Free Venice (from Los Angeles) movement and many other activities opposing various urban renewal plans. Venice, today, is a community in the throes of gentrification but maintains a strong identity and progressive political posture.</p>",
                      },
                      { :name => "Cambridge",
                        :city_name => "Boston",
                        :description => "<p>Cambridge is a city in Middlesex County, Massachusetts, United States, situated directly north of Boston, across the Charles River. It was named in honor of the University of Cambridge in England, an important center of the Puritantheology embraced by the town's founders.[2] Cambridge is home to two of the world's most prominent universities, Harvard University and the Massachusetts Institute of Technology. Cambridge has also been home to Radcliffe College, once one of the leading colleges for women in the United States before it merged with Harvard.</p>
                                        <p>The result today is a highly diverse population augmented and further diversified by brilliant men and women drawn to Cambridge over the years by Harvard, Radcliffe, M.I.T., and more recently by the local high technology companies. ‘Cantabrigians’ (from the city's Latin name, Cantabrigia) are regarded as progressive and tolerant. As industrial activity moved south in the early 1900s, the Cambridge steamed forward on the power of its educators and innovators. Universities are the major employers, but cutting edge companies in information technology and biotechnology such as Akamai Technologies, Google, Microsoft, Genzyme, Biogen Idec, and Novartis are located adjacent to the MIT campus in the Kendall Square area.  The liberal city sometimes referred to as the ‘People's Republic of Cambridge’ now advertises itself as ‘a city where counter-culture still lives, classic culture thrives, and multicultural is a way of life.’ ‘Boston's Left Bank: A little funkier, a little spunkier and definitely spicier than Boston.’</p>",
                      },
                      { :name => "Back Bay and Beacon Hill",
                        :city_name => "Boston",
                        :description => "<p>Beacon Hill is one of Boston's most historic and beautiful neighborhoods, geographically demarcated by Cambridge Street to the North, Beacon Street to the South, Storrow Drive to the West, and Bowdoin Street to the East. The neighborhood is mostly residential, comprised of numerous red brick townhouses and close proximity to three of Boston's largest public spaces--the Public Gardens, the Boston Commons, and the park space that runs along the Charles river. Because the Massachusetts State House is located here, ‘Beacon Hill’ is often used as a metonym to refer to the state government or the legislature.</p>
                                        <p>Once a stagnant pool of water behind the Public Garden, Back Bay now holds some of the most exclusive real estate in Boston. The streets between Commonwealth Avenue and the Charles River are almost entirely residential. Newbury St was once all stables to support these homes, it is now a shopping district that has been compared to Rodeo Drive in LA and 5th Avenue in New York. On the other side of Newbury is Boylston St, which on one side contains numerous bars and restaurants, and on the other several city landmarks, most notably Copley Square and the Prudential Center.</p>",
                      },
                      { :name => "North Beach",
                        :city_name => "San Francisco",
                        :description => "<p>The area largely known today as North Beach was once an actual beach, filled in with landfill around the late 19th century.  Warehouses, fishing wharves, and docks were then built on the newly formed shoreline.  Due to the proximity of the docks, the southern half of the neighborhood south of Broadway was home of the infamous Barbary Coast.</p>
                                        <p>Following its reconstruction after the 1906 Earthquake, the proximity of the nearby docks and fishing wharves attracted a large number of Italian immigrants who would create the Italian character of the neighborhood that exists even now. Prominent during the 1950s, many of the neighborhood's cafes and bars became the home and epicenter of the Beat Generation and gave rise to the San Francisco Renaissance. The term ‘beatnik’ originated from the scene here and was coined in a derogatory fashion by local and famed San Francisco Chronicle columnist Herb Caen. Many of that generation's most famous writers and personalities lived in the neighborhood. Another poet from this generation, Lawrence Ferlinghetti, founded the City Lights Bookstore that still exists today on the corner of Broadway and Columbus as an official historic landmark and serves as one of the main focal points of this generation. </p>
                                        <p>During the 1960s, The Broadway area also created innovations for the strip club industry. The Condor Club, on the corner of Columbus and Broadway, was opened in 1964 as America's first topless bar, which it is again today.  Since the 1980s, and much like Manhattan's Little Italy, due to a decrease in emigration from Italy and gentrification, the neighborhood has seen its native Italian American population rapidly shrink, while neighboring Chinatown has been rapidly expanding north into the neighborhood east of Broadway and along Stockton Street causing a major demographic shift to a mix of mostly Chinese and young professional population, although some, albeit very few, Italian Americans remain.</p>",
                      },
                      { :name => "Concord",
                        :city_name => "Boston",
                        :description => "<p>Concord is a town in Middlesex County but is consider part of Greater Boston.  It is notable for playing a significant role in American history and literature.Concord has a remarkably rich literary history centered in the mid-nineteenth century around Ralph Waldo Emerson (1803–1882), who moved to the town in 1835 and quickly became its most prominent citizen. Emerson, a successful lecturer and philosopher, had deep roots in the town: his father Rev. William Emerson (1769–1811) grew up in Concord before becoming an eminent Boston minister, and his grandfather, William Emerson Sr., witnessed the battle at the North Bridge from his house, and later became a chaplain in the Continental Army. Emerson was at the center of a group of like-minded Transcendentalists living in Concord. Among them were the author Nathaniel Hawthorne (1804–1864) and the philosopher Bronson Alcott (1799–1888), the father of Louisa May Alcott (1832–1888). A native Concordian, Henry David Thoreau (1817–1862), was another notable member of Emerson's circle. This substantial collection of literary talent in one small town led Henry James to dub Concord 'the biggest little place in America.'</p>
                                        <p>Concord maintains a lively literary culture to this day; notable authors who have called the town home in recent years include Doris Kearns Goodwin, Alan Lightman, Robert B. Parker, and Gregory Maguire.</p>",
                      },
                      { :name => "Wicker Park and Bucktown",
                        :city_name => "Chicago",
                        :description => "<p>Wicker Park is best known for its numerous commercial and entertainment establishments and being a convenient place to live for downtown workers due to its proximity to public transportation and the Loop. Gentrification has made the area much more attractive to college-educated white-collar workers, although it faced considerable resistance from the working-class Puerto Rican community it displaced. Crime has decreased and many new homes have been built as well as older homes being restored. This has led to increased business activity, with many new bars, restaurants, and stores opening to serve these individuals. The neighborhood is known for hosting local art stores and independent businesses.  In a September 2012 Forbes article, Wicker Park was named the #4 hippest hipster neighborhood in the country.  Property values have gone up, increasing the wealth of property owners and making the neighborhood attractive to real estate investors. </p>
                                        <p>With borders that are often confused with Wicker Park's, Bucktown is a neighborhood filled with character and art. It lies just to the north of Wicker Park, between North and Fullerton avenues, and from the Kennedy Expressway west to Western. Once a neighborhood of predominately Polish immigrants, Bucktown gets its name from the goats (called bucks) kept in the backyards of its early, poorer residents. The area's rejuvenation was started by local artists, once attracted by cheap rents and accessibility to the Loop (10 minutes away) and expressways. Today, artists are reluctantly giving way to a trendier crowd, but their creative force left a lasting impression.  Small neighborhood bars can be found on just about every corner. North and Damen avenues boast smoky late-night music clubs and cosmopolitan clubs, boutiques, and restaurants. Bucktown also contains several remarkable churches, the legacy of early Polish immigrants. </p>",
                      },

                    ]

neighborhood_list.each do |neighborhood_info|
  n = Neighborhood.new
  n.name = neighborhood_info[:name]
  n.description = neighborhood_info[:description]

  city = City.find_by(:name => neighborhood_info[:city_name])
  n.city_id = city.id
  n.save

end

##MEDIUM MODEL
Medium.destroy_all
["Literature", "Music", "Movies", "Articles", "Websites", "Television"].each do |medium_format|
  m = Medium.new
  m.format = medium_format
  m.save
end

##LISTINGS MODEL

Listing.destroy_all

listing_list =  [ { :entry => "The White Horse Tavern",
                    :street_address => "567 Hudson Street",
                    :zip_code => "10014",
                    :medium => "Literature",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_pZC2x3dzaMlvBWTJsp-qT_e2Kr5Wk8z3ev0zqgfJsJpLSwnWnw",
                    :image_url_2 => "TBD",
                    :short_description => "Watering hole popular with artists, writers and bohemians in the 50s and 60s.",
                    :long_description => "<p>Though it retains little of its historic charm and character, the White Horse Tavern is known for its 1950s and 1960s Bohemian culture. It is one of the few major gathering-places for writers and artists from this period in Greenwich Village (although the surrounding neighborhood is, more properly, the West Village) that remains open. The bar opened in 1880 but was known more as a longshoremen's bar than a literary center until Dylan Thomas and other writers began frequenting it in the early 1950s. Due to its literary fame, in the past few decades the White Horse has become a popular destination among tourists.</p>
                                          <p>The White Horse is perhaps most famous as the place where Dylan Thomas drank heavily, returned to the Chelsea Hotel, became ill, and died a few days later of unrelated causes. Other famous patrons include James Baldwin, The Clancy Brothers (who also performed at the establishment), Bob Dylan, Richard Farina, Michael Harrington, Jane Jacobs, Seymour Krim, Norman Mailer, Jim Morrison, Delmore Schwartz, Hunter S. Thompson, and Mary Travers.</p>
                                          <p>Another of the White Horse's famous patrons is Jack Kerouac, who was bounced from the establishment more than once. Because of this someone scrawled on the bathroom wall: ‘JACK GO HOME!’ At that time, Kerouac was staying in an apartment in the building located on the NW corner of West 11th St.  About the same time, the White Horse was a gathering-place for labor members and organizers and socialists, as well. The Catholic Workers hung out here and the idea for the Village Voice was discussed here. The Village Voice original offices were within blocks of the White Horse. Much of the content was discussed here by the editors.</p>
                                          <p>When in Mad Men season 4, episode 2, Don Draper returns to his Waverly Place apartment stumbling drunk and his neighbor Phoebe (who helps him in) asks where he's coming from, Don replies, ‘Work.’ She responds, ‘Where do you work? The White Horse Tavern?’</p>",
                  },
                  { :entry => "Chumley's",
                    :street_address => "86 Bedford Street",
                    :zip_code => "10014",
                    :medium => "Literature",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://images.nymag.com/images/2/daily/2009/09/20090930_chumleys_190x190.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Former speakeasy that rose to popularity among members of the post-WWI Lost Generation",
                    :long_description => "<p>Chumley's is a historic pub and former speakeasy that was established in 1922 by the socialist activist Leland Stanford Chumley, who converted a former blacksmith's shop near the corner of Bedford and Barrow Streets into a Prohibition-era drinking establishment. The speakeasy became a favorite spot for influential writers, poets, playwrights, journalists, and activists, including members of the Lost Generation and the Beat Generation movements.</p>
                                          <p>Some features remain from Chumley's Prohibition-era history. Notably, the Barrow Street entrance has no exterior sign, being located at the end of a nondescript courtyard (The Garden Door), while the Bedford Street entrance, which opens to the sidewalk, is also unmarked. Inside, Chumley's is still equipped with the trap doors and secret stairs that composed part of its elaborate subterfuge.</p>
                                          <p>It is also rumored that the term ‘86’ originated when an unruly guest was escorted out the Bedford St. door, which held the address 86 Bedford St. A different version referencing Chumley's is offered in the book The History and Stories of the Best Bars of New York: ‘When the cops would very kindly call ahead before a [prohibition-era] raid, they'd tell the bartender to '86' his customers, meaning they should scram out the 86 Bedford door, while the police would come to the Pamela Court entrance.’</p>
                                          <p>A plaque at the tavern, dated September 22, 2000, and placed by Friends of Libraries USA, stated that Chumley's has been placed on a Literary Landmarks Register and goes on to describe Chumley's as: ‘A celebrated haven frequented by poets, novelists and playwrights, who helped define twentieth century American literature. These writers include Willa Cather, E.E. Cummings, Theodore Dreiser, William Faulkner, Ring Lardner, Edna St. Vincent Millay, Eugene O'Neill, John Dos Passos, and John Steinbeck.’</p>
                                          <p>Posted on the walls of Chumley's were the covers of books supposedly worked on there. Because of its historical significance, Chumley's is a stopping-place for various literary tours.</p>
                                          <p>Chumley's has been closed since the chimney in its dining room collapsed on April 5, 2007. Promises to reopen have been made repeatedly, but progress in its reconstruction has been sporadic, and as of July 2012, work remained unfinished.</p>
                                          <p>Chumley's was mentioned in Mad Men (episode 7) as a place where the creative staff were going for after-work drinks.</p>
                                          <p>A New York Times article on December 31, 2012 details the rebuilding process. The building that houses Chumley's is linked to four others, all damaged since the wall collapse in 2007. Several buildings are completed and available now as condominiums. The space that housed Chumley's needs to obtain a new permit before it can re-open as a bar. </p>
                                          ",
                  },
                  { :entry => "Edgar Allen Poe House",
                    :street_address => "85 West Third Street",
                    :zip_code => "10012",
                    :medium => "Literature",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "https://pbs.twimg.com/profile_images/378800000536542717/d84b93a7ec966deaf4aa8ca5afc642a2.png",
                    :image_url_2 => "TBD",
                    :short_description => "Though the house is no longer standing, Poe published The Raven while living at this address.",
                    :long_description => "<p>Edgar Allan Poe lived at 85 West Third Street in Greenwich Village from 1844 to the early months of 18461 before moving to a cottage in Fordham with his wife and mother-in-law when his wife's health began to deteriorate. Poe wrote ‘The Cask of Amontillado,’ and revised and published ‘The Raven’ during his time on Third Street. According to a petition signed by over 70 scholars to save the house, he also ‘achieved his lifelong dream of acquiring his own literary magazine and worked on at least three important short stories’ while living there.</p>
                                          <p>NYU’s construction of Furman Hall required the demolition of Poe's former residence, but a compromise was struck in which NYU agreed to preserve the façade of the house. However, the façade was moved half a block away from the original location and now stands surrounded by nine-stories of 170,000-square-foot modernist architecture. None of the original salmon-colored bricks were used in the new structure. ‘Walking by, you would never know this was supposed to be the actual remnant of a 19th-century house,’ said Executive Director of the Greenwich Village Society for Historic Preservation Andrew Berman. ‘It looks tacked on. It's a facade, literally and figuratively’. However, the new bricks were set in a running bond pattern, using the size, pointing and the thin mortar joints of an 1899 design. According to the settlement reached between the two sides, NYU promised to make ‘a good faith effort to match the color, dimension, character and texture of the 1899 bricks’ while conserving and reusing as many other elements in the new facade as were present in the old one. The NYU Law School permits access to the building's interior space for programs, local schools, and community organizations and to the public on a regular, scheduled basis.</p>",
                  },
                  { :entry => "The Village Vanguard",
                    :street_address => "178 7th Avenue South",
                    :zip_code => "10012",
                    :medium => "Music",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://eil.com/images/main/John+Coltrane+%2D+Live+At+The+Village+Vanguard+Again%21+%2D+LP+RECORD-541219.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "One of New York's most storied clubs since the 1950s, when it switched to an all jazz format.",
                    :long_description => "<p>The Village Vanguard is a jazz club that was opened on February 22, 1935, by Max Gordon. At first, it featured many forms of music, such as folk music and beat poetry, but it switched to an all-jazz format in 1957. Artists who have appeared there include Miles Davis, Horace Silver, Thelonious Monk, Gerry Mulligan, the Modern Jazz Quartet, Jimmy Giuffre, Anita O’Day, Charlie Mingus, Bill Evans (a regular), Stan Getz, and Carmen McRae. The booking of Thelonious Monk was a particularly interesting story that demonstrated the Vanguard’s ability to take a relatively unknown musician and help launch his career. The story of Monk’s introduction to the Vanguard began with the first ever encounter between Max and Lorraine. Max and Lorraine first met each other in the Bluebell Bakery, a ‘homey little Fire Island joint.’ After she walked in and spotted Max (who she knew to be the owner of the Village Vanguard), Lorraine proposed to him that he showcase Thelonious Monk at the Club for a week. He agreed and on September 14, 1948, Monk opened for the Vanguard. The reception was not ideal. ‘Nobody came. None of the so-called jazz critics. None of the so-called cognoscenti. Zilch.’ But Lorraine continued to sponsor Monk as a genius and through her persistence helped him grow into the pillar of jazz he is today. From the 1950s on, the Vanguard was the leading small venue for jazz, launching many celebrated careers and sustaining others that were already aloft. The Thad Jones–Mel Lewis Orchestra that eventually became the Vanguard Jazz Orchestra played from 1966 to 1990 on Monday nights.</p>
                                          <p>In 1989, Max Gordon died. The day after, Lorraine Gordon closed the Vanguard. The following the day she reopened it and has continued to run the place ever since. She has not made any alterations of any kind, and kept it how it was, how people liked it.</p>
                                          <p>The Vanguard has helped launched many careers and has hosted many recordings that are regarded as masterpieces in its basement, making it now a club of international renown. On 3 November 1957, during some of the first recording sessions at the club, Sonny Rollins, a tenor sax player, recorded three LPs. These recordings were at the forefront of the hard-bop movement. The LPs documented two different saxophone-bass-drums trios. Rollins had shown an interest in smaller ensembles as early as 1955; in Paradox, he exchanged four-measure phrases with drummer Max Roach, with no other instrument taking part. In the Vanguard recordings we hear similar styles in arrangements. In the song Old Devil Moon, Rollins is accompanied only by a bassist and a drummer. Musically, this song set the standard for the piano-less trio. Following Rollins, recordings continued; there was John Coltrane's and Bill Evans's famed Vanguard titles, both from '61 (Evans was extensively recorded at the Village Vanguard just 3 months before his death in 1980). Coltrane’s album was five titles taken from twenty-two recorded songs over four nights at the Vanguard. There was Art Pepper's ‘Thursday Night at the Village Vanguard’ in '77, Tommy Flanagan's ‘Nights at the Vanguard’ in '86 and Wynton Marsalis's voluminous seven-disc ‘Live at the Vanguard’ in '99. ‘The words 'Live at the Village Vanguard' do have a direct and positive influence on an album's sales,’ claims Bruce Lundvall, head of Blue Note Records, a principal jazz label with over a dozen ‘Live at the Vanguard’ titles in its catalog. </p>",
                  },
                  { :entry => "The Freewheelin' Bob Dylan",
                    :street_address => "Jones Street",
                    :zip_code => "10014",
                    :medium => "Music",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://johannasvisions.com/wp-content/uploads/2013/12/bob-dylan-freewheelin.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Dylan appears with then girlfriend Suzy Rotolo on the cover of his 1963 breakout album.",
                    :long_description => "<p>The Freewheelin' Bob Dylan album cover features a photograph of a 21 year old Bob Dylan and his girlfriend at the time, Suze Rotolo (an artist who teaches at the Parsons School of Design). History will tell you Rotolo inspired the songs Don't Think Twice, It's Alright and Boots of Spanish Leather. It will also tell you that Dylan wanted to (add a girl and) recreate this shot of James Dean.</p>
                                          <p>The photograph was taken in February 1963 by Don Hunstein. Dylan lived a short ways away at 161 West 4th Street at the time. The cover of this album is often thought to be shot on West 4th Street between 6th and 7th, outside of his apartment. This is not true. The actual street is a one block side street connecting West 4th and Bleecker, called Jones Street. If you see outtakes from this photo shoot you'll see more of the area, in which a building with the number 9 and a decorative diamond shape is visible (and still there today). The fire escapes have since been replaced, but other than that you'll be able to recreate this album cover rather well, on a snowy day.</p>
                                          <p>Released on May 27, 1963 by Columbia Records, it is Dylan’s second album. Whereas his debut album Bob Dylan had contained only two original songs, Freewheelin' represented the beginning of Dylan's writing contemporary words to traditional melodies. Eleven of the thirteen songs on the album are Dylan's original compositions. The album opens with Blowin' in the Wind, which became an anthem of the 1960s, and an international hit for folk trio Peter, Paul & Mary soon after the release of Freewheelin'. The album featured several other songs which came to be regarded as amongst Dylan's best compositions and classics of the 1960s folk scene: Girl from the North Country, Masters of War, A Hard Rain's a-Gonna Fall and Don't Think Twice, It's All Right.</p>
                                          <p>Dylan's lyrics embraced stories taken from the headlines about civil rights and he articulated anxieties about the fear of nuclear warfare. Balancing this political material were love songs, sometimes bitter and accusatory, and material that features surreal humor. Freewheelin' showcased Dylan's songwriting talent for the first time, propelling him to national and international fame. The success of the album and Dylan's subsequent recognition led to his being named as Spokesman of a Generation, a label Dylan came to resent.</p>
                                          <p>The Freewheelin' Bob Dylan reached number 22 in the United States (eventually going platinum), and later became a number one hit in the United Kingdom in 1964. In 2003, the album was ranked number 97 on Rolling Stone magazine's list of the 500 greatest albums of all time. In 2002, Freewheelin' was one of the first 50 recordings chosen by the Library of Congress to be added to the National Recording Registry.</p>",
                  },
                  { :entry => "Electric Lady Studios",
                    :street_address => "52 West 8th Street",
                    :zip_code => "10011",
                    :medium => "Music",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://www.geetarz.org/reviews/misc/hendrix-electric-lady-studio-front.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Jimi Hendrix spent only four weeks recording in the studio he built before his death.",
                    :long_description => "<p>Electric Lady Studios is a recording studio originally built by Jimi Hendrix and designed by John Storyk in 1970. Hendrix spent only four weeks recording in Electric Lady before his death, but it has remained a popular recording studio for top acts since its inception.</p>
                                          <p>In 1968, Jimi Hendrix and his manager Michael Jeffery had invested jointly in the purchase of the Generation Club in Greenwich Village. Their initial plans to re-open the club were scrapped when the pair decided that the investment would serve them much better as a recording studio. The studio fees for the lengthy Electric Ladyland sessions were astronomical, and Jimi was constantly in search of a recording environment that suited him.</p>
                                          <p>Construction of the studio took nearly double the amount of time and money as planned: permits were delayed numerous times, the site flooded due to heavy rains during demolition, and sump pumps had to be installed (then soundproofed) after it was determined that the building sat on the tributary of an underground river, Minetta Creek.  A six-figure loan from Warner Brothers was required to save the project.</p>
                                          <p>Designed by architect and acoustician John Storyk, the studio was made specifically for Hendrix, with round windows and a machine capable of generating ambient lighting in myriad colors. It was designed to have a relaxing feel to encourage Jimi's creativity, but at the same time provide a professional recording atmosphere. Engineer Eddie Kramer upheld this by refusing to allow any drug use during session work. Artist Lance Jost painted the studio in a psychedelic space theme. Jimi Hendrix hired Jim Marron to manage the construction project and run the studio.</p>
                                          <p>Hendrix spent only four weeks recording in Electric Lady, most of which took place while the final phases of construction were still ongoing. An opening party was held on August 26, 1970. The following day Hendrix created his last ever studio recording: a cool and tranquil instrumental known only as ‘Slow Blues’. He then boarded an Air India flight for London to perform at the Isle of Wight Festival, and died less than three weeks later.</p>",
                  },
                  { :entry => "The Pope of Greenwich Village",
                    :street_address => "156 Sullivan Street",
                    :zip_code => "10012",
                    :medium => "Movies",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://s3-media1.ak.yelpcdn.com/bphoto/jjfyRFuPpl1dbxafkUa_CA/348s.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "The now-closed Joe's Dairy was featured prominently in this 1984 film about New York's Italian-American community.",
                    :long_description => "<p>The Pope of Greenwich Village is a 1984 American film starring Mickey Rourke, Eric Roberts, Daryl Hannah, Geraldine Page, Kenneth McMillan and Burt Young. Page earned an Academy Award nomination for Best Supporting Actress for her two-scene role. The film was adapted by screenwriter Vincent Patrick from his novel of the same name. Stuart Rosenberg directed.</p>
                                        <p>Set on the streets of New York's Little Italy, this dramatic series of character studies chronicles the lives and relationships between a disparate pair of Italian American cousins. Both of them want to leave the poverty of ghetto life, but each takes a dramatically different route when one of them joins the mob and the other accidentally impregnates his girlfriend. When the young gangster gets into deep trouble, the other must reevaluate his goals and his true feelings about his family.</p>
                                        <p>This film was originally planned as the first on-screen pairing of legendary actors Robert De Niro and Al Pacino, with De Niro playing Charlie and Pacino playing Paulie. Michael Cimino was initially slated to direct Pope. After Rourke and Roberts signed on as the leads, Cimino wanted to finesse the screenplay with some rewriting and restructuring. However, the rewriting would have taken Cimino beyond the mandated start date for shooting, so Cimino and MGM parted ways.<p>
                                        <p>Roger Ebert of the Chicago Sun-Times gave the film three stars, saying, ‘It's worth seeing for the acting, and it's got some good laughs in it, and New York is colorfully observed, but don't tell me this movie is about human nature, because it's not; it's about acting.’ Leonard Maltin gave the film three stars, describing it as a ‘Richly textured, sharply observant film... Page stands out in great supporting cast.’</p>",
                  },
                  { :entry => "Rear Window",
                    :street_address => "120 West 10th Street",
                    :zip_code => "10012",
                    :medium => "Movies",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://2.bp.blogspot.com/-yWlDsO1zdeU/UlV4ZUEjkWI/AAAAAAAAEQ8/ebXMDjhzUYs/s1600/Annex+-+Kelly,+Grace+(Rear+Window)_01.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Though shot in LA, this 1954 Alfred Hitchcock classic models its setting on an apartment complex between Hudson and Bleecker.",
                    :long_description => "<p>Released in 1954, Rear Window is among Alfred Hitchcock’s most celebrated films.  Though filmed in LA, the film is set entirely in a Greenwich Village apartment complex and its courtyard.</p>
                                        <p>Laid up with a broken leg, photojournalist L.B. Jeffries (James Stewart) is confined to his tiny, sweltering courtyard apartment. To pass the time between visits from his nurse (Thelma Ritter) and his fashion model girlfriend Lisa (Grace Kelly), the binocular-wielding Jeffries stares through the rear window of his apartment at the goings-on in the other apartments around his courtyard. As he watches his neighbors, he assigns them such roles and character names as Miss Torso (Georgine Darcy), a professional dancer with a healthy social life or Miss Lonelyhearts (Judith Evelyn), a middle-aged woman who entertains nonexistent gentlemen callers. Of particular interest is seemingly mild-mannered travelling salesman Lars Thorwald (Raymond Burr), who is saddled with a nagging, invalid wife. One afternoon, Thorwald pulls down his window shade, and his wife's incessant bray comes to a sudden halt. Out of boredom, Jeffries casually concocts a scenario in which Thorwald has murdered his wife and disposed of the body in gruesome fashion. Trouble is, Jeffries' musings just might happen to be the truth. One of Alfred Hitchcock's very best efforts, Rear Window is a crackling suspense film that also ranks with Michael Powell's Peeping Tom (1960) as one of the movies' most trenchant dissections of voyeurism. As in most Hitchcock films, the protagonist is a seemingly ordinary man who gets himself in trouble for his secret desires.</p>
                                        <p>The film received four Academy Award nominations: Best Director for Alfred Hitchcock, Best Screenplay for John Michael Hayes, Best Cinematography, Color for Robert Burks, Best Sound Recording for Loren L. Ryder, Paramount Pictures. John Michael Hayes won a 1955 Edgar Award for Best Motion Picture.</p>",
                  },
                  { :entry => "Inside Llewyn Davis",
                    :street_address => "118 MacDougal Street",
                    :zip_code => "10003",
                    :medium => "Movies",
                    :neighborhood => "Greenwich Village",
                    :city => "Manhattan",
                    :image_url => "http://media.npr.org/assets/img/2013/10/31/insidellewyndavis_byalisonrosa_sq-d93ff4e08c4c8e6feea425cc354c8177b4da7342.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Much of this Cohen brothers film is set in The Gaslight Cafe, one of the most popular 1960s folk clubs.",
                    :long_description => "<p>Inside Llewyn Davis is a 2013 American comedy-drama film written, directed and edited by Joel and Ethan Coen. The film stars Oscar Isaac, Carey Mulligan, andJohn Goodman, and was produced by Scott Rudin, Ethan and Joel Coen. T Bone Burnett was the executive music producer. The film is about one week in the life of a singer who is active in New York's folk music scene in 1961. Although Llewyn Davis is a fictional character, the story was partly inspired by the autobiography of folk singer Dave Van Ronk. Most of the folk songs performed in the film are sung in full and recorded live.</p>
                                        <p>Set in 1961, Inside Llewyn Davis was inspired by the cultural disconnection within a New York–based music scene where the songs seemed to come from all parts of the United States except New York, but whose performers included Brooklyn-born Dave Van Ronk and Ramblin' Jack Elliott. Well before writing the script, the Coens began with a single premise: suppose Van Ronk got beat up outside of Gerde's Folk City in the Village. The filmmakers employed that idea in the opening scenes, then periodically returned to the project over the next couple of years to expand the story around a fictional character.  One source for the film was Van Ronk's posthumously published (2005) memoir, The Mayor of MacDougal Street. According to the book's co-author, Elijah Wald, the Coens mined the work ‘for local color and a few scenes.’ The character is a composite of Van Ronk, Elliot, and other performers from the New York boroughs who performed in the Village at that time. Joel Coen remarked that ‘the film doesn't really have a plot. That concerned us at one point; that's why we threw the cat in.’</p>
                                        <p>Shooting was complicated by an early New York spring, which interfered with the bleak winter atmosphere that prevails throughout the film, and by the difficulty of filming several cats, who, unlike dogs, ignore the desires of filmmakers. On the advice of an animal trainer, the Coens put out a casting call for an orange tabby cat, which is sufficiently common that several cats would be available to play one part. Individual cats were then selected for each scene based on what they were predisposed to do on their own.</p>
                                        <p>The film won the Grand Prix at the 2013 Cannes Film Festival, where it screened on May 19, 2013. It received a limited release in the United States on December 6, 2013, and was given a wide release on January 10, 2014. It received critical acclaim and was nominated for two Academy Awards, Best Cinematography and Best Sound Mixing, the Golden Globe Award for Best Motion Picture - Comedy or Musical, and two other nominations.</p>",
                  },
                  { :entry => "The Filmore East",
                    :street_address => "105 Second Avenue",
                    :zip_code => "10003",
                    :medium => "Music",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://www.mediacombo.net/blog/wp-content/uploads/2010/03/The-Fillmore-East-297x300.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "East Coast run by legendary promoter Bill Graham, open from 1968 to 1971",
                    :long_description => "<p>The theatre at 105 Second Avenue that became the Fillmore East was originally built as a Yiddish theater in 1925-26 – designed by Harrison Wiseman in the Medieval Revival style – at a time when the section of Second Avenue was known as the 'Yiddish Theater District' and the 'Jewish Rialto' because of the numerous theatres that catered to a Yiddish-speaking audience. Called the Commodore Theater, and independently operated, it eventually was taken over by Loews Inc. and became a movie theatre, the Loews Commodore. It later became the Village Theatre. When legendary concert promoter Bill Graham took over the theatre in 1967, it had fallen into disrepair. Despite the deceptively small marquee and façade, the theater had a capacity of almost 2,700. </p>
                                          <p>The venue provided Graham with an East Coast counterpart to his existing Fillmore in San Francisco, California. Opening on March 8, 1968, the Fillmore East quickly became known as The Church of Rock and Roll, with two-show, triple-bill concerts several nights a week. Graham would regularly alternate acts between the East and West Coast venues. Until early 1971, bands were booked to play two shows per night, at 8 pm and 11 pm, on both Friday and Saturday nights.</p>
                                          <p>Among the notable acts to play the Fillmore East was Jimi Hendrix. His album Band of Gypsys was recorded live on New Year's Day 1970. John Lennon performed there with Frank Zappa and the Mothers of Invention on June 6, 1971. The Allman Brothers Band played so many shows at Fillmore East that they were sometimes called Bill Graham's House Band. Jefferson Airplane performed six shows and Taj Mahal played eight shows at the venue, while Crosby, Stills, Nash and Young did four shows in September 1969.  Led Zeppelin made four appearances in early 1969, opening for Iron Butterfly. Amateur film footage of their January 31 performance can be viewed at the Led Zeppelin website.  Grateful Dead were among the regulars at the Filmore East, playing a total of 43 concerts from 1968 through 1971.</p>",
                  },
                  { :entry => "Physical Graffiti",
                    :street_address => "96 - 98 St. Marks Place",
                    :zip_code => "10003",
                    :medium => "Music",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://cps-static.rovicorp.com/3/JPG_400/MI0002/073/MI0002073148.jpg?partner=allrovi.com",
                    :image_url_2 => "TBD",
                    :short_description => "Building featured on the cover of Led Zeppelin's Physical Graffiti",
                    :long_description => "<p>On February 24th, 1975, Led Zeppelin’s double studio album Physical Graffiti was unleashed upon the world.  The band’s second most commercially successful album, it went sixteen times platinum in the United States, and spawned such classics as Trampled Under Foot, Boogie With Stu, and the east-meets-west magnum opus, Kashmir.</p>
                                          <p>Led Zeppelin immortalized the twin tenements at 96 and 98 St. Mark’s Place between First Avenue and Avenue A on the Physical Graffiti album cover.  The award-winning design featured the two buildings (with the fourth floors removed to make them fit the square shape of the album cover) with the windows cut out to reveal the letters of the album title printed on the inner sleeve, or, if the sleeve was reversed, a series of images of different characters seeming to occupy the building, including lead-singer Robert Plant in drag.</p>
                                          <p>96 and 98 St. Mark’s Place’s place in popular cultural history has been noted over the years by the presence of a used clothing store in the basement of the buildings called Physical Graffiti (full disclosure: I bought a few Adidas track jackets there over the years) and a tea shop called ‘Physical Graffitea.'' According to GVSHP’s East Village research, these old-law or ‘dumbbell’ tenements were constructed in 1890.</p>
                                          <p> The buildings  earn double renown in rock and roll history as the place where Keith Richards meets Mick Jagger in the video for ‘Waiting on a Friend’ — the two end up meeting the rest of the band and playing in the bar just a few doors down at 132 First Avenue and St. Mark’s Place.</p>",
                  },
                  { :entry => "Madonna's Apartment",
                    :street_address => "234 East 4th Street",
                    :zip_code => "10009",
                    :medium => "Music",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://www.style.com/wp-content/uploads/2013/11/Richard_Corman_Madonna_11.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Madonna lived here in 1982, just prior to being signed by Sire.",
                    :long_description => "<p>Madonna Louise Ciccone was just 19 years old when she moved to New York City from her native Michigan in 1977. ‘It was the first time I'd ever taken a plane, the first time I'd ever gotten a taxicab,’ she says. ‘I came here with $35 in my pocket. It was the bravest thing I'd ever done.’ She moved into a spare bedroom in apartment 3-B at 270 Riverside Dr.—the home of Saul Braun, whose musician son, Josh Braun, co-wrote with Madonna a few of her early songs, and another 3-B tenant, Janice Galloway. About a year later, Madonna moved into a fifth-floor walk-up at 232 E. 4th St. in the East Village. Her brother, Christopher Ciccone, describes the apartment as 'two small rooms, no furniture except a big white futon, and a perpetually hissing radiator.'' Madonna lived here while she rehearsed and gigged with bands like the Breakfast Club. By the time she signed with Sire/Warner Bros. Records and released her debut single, ‘Everybody,’ Madonna had moved to a loft on Broome Street. She turned over the East 4th Street apartment to Christopher, who struggled to afford the rent and soon gave it up.</p>",
                  },
                  { :entry => "Birthplace of the Velvet Underground",
                    :street_address => "56 Ludlow Steet",
                    :zip_code => "10002",
                    :medium => "Music",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://bettylivin.files.wordpress.com/2012/06/velvetandnico.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "John Cale's apartment where the band wrote their debut album",
                    :long_description => "<p>When Lou Reed met John Cale, a fellow founding member of The Velvet Underground, Cale was living in this apartment on Ludlow Street in New York's Lower East Side. Victor Bockris, who wrote a biography of Reed, described the space as a ‘bohemian slum dwelling’.  This dwelling is where Reed, Cale and Sterling Morrison rehearsed and recorded six songs in 1965, creating the foundation of their first album The Velvet Underground and Nico. </p>
                                          <p>In 2013, John Cale discussed the apartment in <a href=http://online.wsj.com/news/articles/SB10001424127887323596204578241620759540276> and interview with the Wall Street Journal.</a></p>",
                  },
                  { :entry => "Lush Life",
                    :street_address => "131 Rivington Street",
                    :zip_code => "10002",
                    :medium => "Literature",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://disastercouch.files.wordpress.com/2010/06/lushlife1.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "2009 novel from celebrated novelist Richard Price set in the contemporary Lower East Side",
                    :long_description => "<p>Lush Life is a contemporary social novel by Richard Price. It is Price's eighth novel, and was published in 2008.  Much of the novel is set in a restaurant based on Schiller’s Liquor Bar in the Lower East Side, while the majority of the action takes place in the surrounding blocks.</p>
                                          <p>The novel begins with a crime that at first seems straightforward, but quickly expands into a thicket of complications. On the way home from a night of drinking, three men—cafe manager Eric Cash, bartender Ike Marcus, and a friend of Marcus'—are accosted by two muggers. Marcus is shot and killed, in a manner echoing the real-life murder of Nicole duFresne. NYPD Detective Matty Clark winds up investigating the crime, and keeping an eye on Ike's distraught father Billy, whose behavior becomes increasingly erratic. Cash is initially arrested for the crime, but later released when the accounts of other witnesses back up his own; his own behavior is affected as he has difficulty coping with the memory of the incident and the stresses of the police interrogation. Interwoven with the main plot are vignettes of the Lower East Side and the waves of immigrants that have come through there and lived in its tenements over the years.</p>
                                          <p>The novel received mostly rave reviews from a wide variety of media sources. Michiko Kakutani of the New York Times wrote thatLush Life was ‘a visceral, heart-thumping portrait of New York City’ and ‘no one writes better dialogue than Richard Price—not Elmore Leonard, not David Mamet, not even David Chase.’</p>",
                  },
                  { :entry => "Once Upon a Time in America",
                    :street_address => "Delancey Street",
                    :zip_code => "10002",
                    :medium => "Movies",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://img708.imageshack.us/img708/9911/onceuponatimeinamericas.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Robert Deniro plays a prohibition era gangster who returns to the Lower East Side to confront his past",
                    :long_description => "<p>Though some viewers might be put off by its length, graphic violence, and absence of likable characters, Sergio Leone's final film is also a cinematic masterpiece. Spanning four decades, the film tells the story of David 'Noodles' Aaronson (Robert De Niro) and his Jewish pals, chronicling their childhoods on New York's Lower East Side in the 1920s, through their gangster careers in the 1930s, and culminating in Noodles' 1968 return to New York from self-imposed exile, at which time he learns the truth about the fate of his friends and again confronts the nightmare of his past. The acting, the re-creation of the time period, the cinematography, and the music are all superb. However, even more important is Leone's ability to make the film work on so many different levels: it's both a criticism of gangster-film mythology and a continuation of the director's exploration of the issues of time and history. Strange as it may seem, the violence and gore in the first half of the film turn into a sad elegy about wasted lives and lost love.</p>",
                  },
                  { :entry => "When Harry Met Sally",
                    :street_address => "205 East Houston Street",
                    :zip_code => "10002",
                    :medium => "Movies",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://www.joblo.com/newsimages1/cv-thumb-11-14.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "The film's most famous scene was shot in Katz's deli",
                    :long_description => "<p>When Harry Met Sally… is a 1989 American romantic comedy film written by Nora Ephron and directed by Rob Reiner. It stars Billy Crystal as Harry and Meg Ryan as Sally. The story follows the title characters from the time they meet just before sharing a cross-country drive, through twelve years or so of chance encounters in New York City. The film raises the question ‘Can men and women ever just be friends?’ and advances many ideas about relationships that became household concepts, such as those of the ‘high-maintenance’ girlfriend and the 'transitional person'.</p>
                                          <p>In the film’s most famous scene, Meg Ryan fakes an orgasm while eating at Katz’s deli.  Katz’s, among New York’s most iconic Jewish delis, has a plaque commemorating the scene.  </p>",
                  },
                  { :entry => "Nuyorican Poets Cafe",
                    :street_address => "236 East Third Street",
                    :zip_code => "10009",
                    :medium => "Literature",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNnme6Qakx1LVO9-tQ-iK_BHXp91N8foOwvFn0ZksZEjnheZDtkg",
                    :image_url_2 => "TBD",
                    :short_description => "Birthplace of the Nuyorican Poetry Movement",
                    :long_description => "<p>Founded circa 1973, the Nuyorican Poets Café began operating in the East Village apartment of writer, poet, and Rutgers University professor Miguel Algarín with assistance from co-founders Miguel Piñero, Bimbo Rivas, and Lucky Cienfuegos.</p>
                                          <p>By 1975, the number of poets involved with the venture outgrew that space, so Algarín rented an Irish pub, the Sunshine Café on East 6th Street, and they christened it ‘The Nuyorican Poets Café’.  By 1980, the overflow of audiences led them to purchase their current building at 236 East 3rd Street so as to expand their activities and programs.</p>
                                          <p>In the 1990s a new group of Nuyorican poets and performing artists emerged to read at the café. Some of these artists include Willie Perdomo, Maggie Estep, Tracie Morris, Dana Bryant, Reg. E. Gaines, Paul Beatty, Edwin Torres, Raul Maldonado, Emanuel Xavier,Caridad de la Luz aka La Bruja, Mariposa (María Teresa Fernández), and Shaggy Flores. </p>
                                          <p>Some Nuyorican poets who continue to read and perform at the café include Sandra María Esteves, Tato Laviera, Jesús Papoleto Melendez, Nancy Mercado, Edwin Torres, Lemon Andersen, Bonafide Rojas, Caridad de la Luz aka La Bruja, Mariposa, Jack Castillo and Diana Gitesha Hernandez . In June 2002, Nuevo Flamenco guitarists Val Ramos opened for three-time Puerto Rican Grammy nominee Danny Rivera at the Nuyorican Poets Café.  Algarín, now retired from Rutgers, remains (as of 2007) a board member of the Nuyorican Poets Café.</p>",
                  },
                  { :entry => "KGB",
                    :street_address => "85 East 4th Street",
                    :zip_code => "10003",
                    :medium => "Literature",
                    :neighborhood => "East Village and Lower East Side",
                    :city => "Manhattan",
                    :image_url => "http://yeahnewyork.com/wp-content/uploads/2011/04/5233750_92-300x400.jpg",
                    :image_url_2 => "TBD",
                    :short_description => "Home to one of New York's most popular reading series",
                    :long_description => "<p><p>KGB is a Soviet-era themed bar located known for one of the most popular reading series in the city. Before its present incarnation, the second-floor venue was a speakeasy for Ukrainian Socialists who met behind its double-locked doors to hide their political affiliations from the rampant McCarthyism of the era.  Since opening in 1993, the KGB Bar has become something of a New York literary institution. Popular authors read here pro bono on Sunday evenings (fiction), Monday evenings (poetry), and most Tuesdays, Wednesdays and Thursdays. KGB has been named best literary venue in New York City by New York Magazine, the Village Voice, and others.</p>",
                    },
                ]




listing_list.each do |listing|
  l = Listing.new
  l.entry = listing[:entry]
  l.street_address = listing[:street_address]
  l.zip_code = listing[:zip_code]
  l.image_url = listing[:image_url]
  l.image_url_2 = listing[:image_url_2]
  l.short_description = listing[:short_description]
  l.long_description = listing[:long_description]

  medium = Medium.find_by(:format => listing[:medium])
  l.medium_id = medium.id

  neighborhood = Neighborhood.find_by(:name => listing[:neighborhood])
  l.neighborhood_id = neighborhood.id

  city = City.find_by(:name => listing[:city])
  l.city_id = city.id
  l.save



end
