```bash
$ rvm use 2.1.5@grammatizer (2.2.2 is borken for birch0.0.8)
$ gem install treat 
```


```ruby
2.1.5 :002 > require 'treat'
2.1.5 :003 > include Treat::Core::DSL
2.1.5 :004 > d = document '/Users/ia/sandbox/grammatizer/documents/albee.md'

2.1.5 :012 > d.methods
 => [:topics, :keywords, :read, :chunk, :type, :type=, :<<, :method_missing, :invalid_call, :language, :similarity, :distance, :unserialize, :serialize, :visualize, :classify, :language_proxied, :export, :each_entity, :entities_with_feature, :entities_with_types, :entities_with_type, :entities_with_category, :ancestor_with_type, :each_ancestor, :ancestors_with_type, :ancestor_with_feature, :num_children_with_feature, :check_has, :check_hasnt_children, :to_string, :to_a, :to_ary, :to_s, :to_str, :short_value, :print_tree, :inspect, :implode, :magic, :first_but_warn, :position, :position_from_end, :frequency_in, :frequency, :count, :frequency_of, :apply, :do, :do_task, :get_group, :register, :registry, :id, :id=, :value, :value=, :parent, :parent=, :features, :features=, :children, :edges, :root, :add, :[], :get, :[]=, :set, :unset, :size, :each, :find, :is_leaf?, :is_root?, :has_parent?, :has_children?, :has_edges?, :has_feature?, :has_features?, :has?, :link, :set_as_root!, :remove, :remove_all!, :entries, :to_h, :sort, :sort_by, :grep, :detect, :find_index, :find_all, :select, :reject, :collect, :map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :first, :all?, :any?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :member?, :include?, :each_with_index, :reverse_each, :each_entry, :each_slice, :each_cons, :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :slice_before, :lazy, :to_json, :silence_warnings, :silence_stdout, :caller_method, :nil?, :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]  

2.1.5 :013 > d.language
 => :english 

2.1.5 :014 > d.print_tree
+ Document (70179661229160)  --- "20140501 Albee Naked [...] It's beautiful.\""  ---  {:file=>"/Users/ia/sandbox/grammatizer/documents/albee.md", :format=>"txt", :keywords=>[]}   --- [] 
|
+--+ Section (70179660452140)  --- "20140501 Albee Naked [...] invisible God."  ---  {}   --- [] 
  |
  +--> Title (70179660452820)  --- "20140501 Albee"  ---  {}   --- [] 
  +--> Paragraph (70179660449400)  --- "Naked again, or, [...] Gone fishing."  ---  {}   --- [] 
  +--> Paragraph (70179660439100)  --- "The case of [...] invisible God."  ---  {}   --- [] 
+--+ Section (70179660435720)  --- "CALM AND LOW [...] it is."  ---  {}   --- [] 
  |
  +--> Title (70179660436580)  --- "CALM AND LOW TIDE"  ---  {}   --- [] 
  +--> Paragraph (70179660433280)  --- "Mr Albee was [...] next thing."  ---  {}   --- [] 
  +--> Paragraph (70179660414620)  --- "All simple men [...] ready men."  ---  {}   --- [] 
  +--> Paragraph (70179660412740)  --- "His wife was [...] feminine empathy."  ---  {}   --- [] 
  +--> Paragraph (70179660410740)  --- "Her husband valued [...] fine partner."  ---  {}   --- [] 
  +--> Paragraph (70179660408740)  --- "They were happy. [...] of way."  ---  {}   --- [] 
  +--> Paragraph (70179660406800)  --- "On one point [...] they did."  ---  {}   --- [] 
  +--> Paragraph (70179660388400)  --- "Although they never [...] it is."  ---  {}   --- [] 
+--+ Section (70179660385940)  --- "THE BOAT Their [...] that was?\""  ---  {}   --- [] 
  |
  +--> Title (70179660386580)  --- "THE BOAT"  ---  {}   --- [] 
  +--> Paragraph (70179660383780)  --- "Their boat had [...] Yacht Club."  ---  {}   --- [] 
  +--> Paragraph (70179660373640)  --- "Money being an [...] would happen."  ---  {}   --- [] 
  +--> Paragraph (70179660371680)  --- "The Duchess was [...] proud of."  ---  {}   --- [] 
  +--> Paragraph (70179660369700)  --- "\"It was originally [...] that was?\""  ---  {}   --- [] 
+--+ Section (70179660343500)  --- "\"Who?\" \"Ted Greeley's [...] her work."  ---  {}   --- [] 
  |
  +--> Title (70179660344040)  --- "\"Who?\""  ---  {}   --- [] 
  +--> Paragraph (70179660332880)  --- "\"Ted Greeley's son. [...] Harvard guy.\""  ---  {}   --- [] 
  +--> Paragraph (70179660330780)  --- "\"It's good to [...] can trust.\""  ---  {}   --- [] 
  +--> Paragraph (70179660328580)  --- "And they wink [...] it, too."  ---  {}   --- [] 
  +--> Paragraph (70179660326420)  --- "Mr Albee was [...] at Duke."  ---  {}   --- [] 
  +--> Paragraph (70179660307840)  --- "The work suited [...] regional dominance)."  ---  {}   --- [] 
  +--> Paragraph (70179660305620)  --- "Reason versus reason, [...] Not bad."  ---  {}   --- [] 
  +--> Paragraph (70179660303500)  --- "Mrs Albee was [...] her work."  ---  {}   --- [] 
+--+ Section (70179660300660)  --- "\"Excellence in motion\" [...] motion\" (Reebok),"  ---  {}   --- [] 
  |
  +--> Title (70179660301340)  --- "\"Excellence in motion\" [...] motion\" (Reebok),"  ---  {}   --- [] 
+--+ Section (70179660281280)  --- "\"Perpetual revolution\" (Mazda), [...] right way."  ---  {}   --- [] 
  |
  +--> Title (70179660281960)  --- "\"Perpetual revolution\" (Mazda), [...] revolution\" (Mazda),"  ---  {}   --- [] 
  +--> Paragraph (70179660279000)  --- "\"For life\" (GE), and so on."  ---  {}   --- [] 
  +--> Paragraph (70179660276720)  --- "It was nice [...] have you."  ---  {}   --- [] 
  +--> Paragraph (70179660265360)  --- "Happiness. Whatever it [...] right way."  ---  {}   --- [] 
+--+ Section (70179660262460)  --- "THE WIND It [...] finally. Cheers."  ---  {}   --- [] 
  |
  +--> Title (70179660263120)  --- "THE WIND"  ---  {}   --- [] 
  +--> Paragraph (70179660260160)  --- "It was just [...] drinking season."  ---  {}   --- [] 
  +--> Paragraph (70179660241480)  --- "As a function [...] burning black."  ---  {}   --- [] 
  +--> Paragraph (70179660239300)  --- "But the outside [...] nobody's bitch."  ---  {}   --- [] 
  +--> Paragraph (70179660237100)  --- "I digress. Drinking. [...] a few."  ---  {}   --- [] 
  +--> Paragraph (70179660234880)  --- "There were only [...] material circumstances."  ---  {}   --- [] 
  +--> Paragraph (70179660216180)  --- "This is what [...] also taught."  ---  {}   --- [] 
  +--> Paragraph (70179660213920)  --- "THE WAVES - [...] of allegiance."  ---  {}   --- [] 
  +--> Paragraph (70179660211580)  --- "Their plan that [...] you know."  ---  {}   --- [] 
  +--> Paragraph (70179660193080)  --- "He spent midday [...] they weren't."  ---  {}   --- [] 
  +--> Paragraph (70179660191080)  --- "Not unusually Mr [...] was enough."  ---  {}   --- [] 
  +--> Paragraph (70179660188900)  --- "She drank half [...] an hour."  ---  {}   --- [] 
  +--> Paragraph (70179660186600)  --- "Mrs Albee had [...] reminiscent tradition."  ---  {}   --- [] 
  +--> Paragraph (70179660176200)  --- "The charts read [...] finally. Cheers."  ---  {}   --- [] 
+--+ Section (70179660173260)  --- "THE INVISIBLE They [...] went thirsty."  ---  {}   --- [] 
  |
  +--> Title (70179660173960)  --- "THE INVISIBLE"  ---  {}   --- [] 
  +--> Paragraph (70179660170900)  --- "They finished their [...] the hull."  ---  {}   --- [] 
  +--> Paragraph (70179660151960)  --- "\"What else is [...] quiet rhythm."  ---  {}   --- [] 
  +--> Paragraph (70179660149660)  --- "He meant it [...] his skull."  ---  {}   --- [] 
  +--> Paragraph (70179660147400)  --- "\"Yes, well, there [...] the cabin."  ---  {}   --- [] 
  +--> Paragraph (70179660145100)  --- "She returned, holding [...] a half-smile."  ---  {}   --- [] 
  +--> Paragraph (70179660126420)  --- "\"Ta da, we're [...] she said."  ---  {}   --- [] 
  +--> Paragraph (70179660124120)  --- "\"Oh, how… sparkly!,” [...] somehow christened."  ---  {}   --- [] 
  +--> Paragraph (70179660121900)  --- "\"We don't have [...] been opened.\""  ---  {}   --- [] 
  +--> Paragraph (70179660111200)  --- "Glasses were arranged [...] they toasted."  ---  {}   --- [] 
  +--> Paragraph (70179660108960)  --- "\"To us,\" Edward [...] will be.\""  ---  {}   --- [] 
  +--> Paragraph (70179660106780)  --- "It was delicious [...] satiated man."  ---  {}   --- [] 
  +--> Paragraph (70179660104500)  --- "The fish went thirsty."  ---  {}   --- [] 
+--+ Section (70179660093440)  --- "GOD \"You know, [...] It's beautiful.\""  ---  {}   --- [] 
  |
  +--> Title (70179660094120)  --- "GOD"  ---  {}   --- [] 
  +--> Paragraph (70179660091060)  --- "\"You know, its [...] the liquor."  ---  {}   --- [] 
  +--> Paragraph (70179660088800)  --- "\"It's majestic out [...] same time.\""  ---  {}   --- [] 
  +--> Paragraph (70179660062020)  --- "\"But I mean [...] big number.\""  ---  {}   --- [] 
  +--> Paragraph (70179660059680)  --- "\"Did you think [...] courteous irony."  ---  {}   --- [] 
  +--> Paragraph (70179660057600)  --- "\"No honey, of [...] he thought."  ---  {}   --- [] 
  +--> Paragraph (70179660055360)  --- "In the seas [...] water temperature."  ---  {}   --- [] 
  +--> Paragraph (70179660044640)  --- "She looked at [...] the ocean."  ---  {}   --- [] 
  +--> Paragraph (70179660042240)  --- "\"Edward,\" she said, [...] leave you.\""  ---  {}   --- [] 
  +--> Paragraph (70179660040020)  --- "\"Sarah, shut up [...] It's beautiful.\""  ---  {}   --- [] 
=> nil 

2.1.5 :021 > d.entries
 => [Section (70179660452140), Section (70179660435720), Section (70179660385940), Section (70179660343500), Section (70179660300660), Section (70179660281280), Section (70179660262460), Section (70179660173260), Section (70179660093440)] 

2.1.5 :025 > d.count(:paragraph)
=> 8 

2.1.5 :053 > d.each_entity do |e|
2.1.5 :054 >     puts "ENTITY => #{e}"
2.1.5 :055?>   end
ENTITY => 20140501 Albee 

Naked again, or, Gone fishing. 

The case of a Mr Albee, his wife, and his relationship with invisible God. 



CALM AND LOW TIDE 

Mr Albee was not particularly concerned with appearances, either personal or effectual. It was his position, taken quietly and fundamentally as a kind of vague moralistic attitude, that the important things were the invisible things, and that, excusing the cliché (as he sometimes repeated in earnest collegiate conversations) - one does not judge a book by its cover. "Perhaps just the title," he would quip, raising an eyebrow and lightening the mood, gently urging the subtle jealous abstraction to disappear into the next thing. 

All simple men believe in the invisible, whether the priggish realms of abstraction or the tangible instincts of debauchery, and certainly Mr Albee was among these simple, ready men. 

His wife was different. She considered herself a realist, which really meant materialist, and she placed great value in her empirical capacities. As a result she was quick to judge, but life experience had also taught her a willingness to revise her intuitions with reason. She was open and engaging and exceptionally eloquent with company and companions, and won the admiration of many and at least the respect of all. Early practice in handling the world around her with immediacy had taught her tact at an early age, and even her peers in primary school had noticed her social grace, rooted in a very natural feminine empathy. 

Her husband valued this grace most of all, which he recognized himself slightly lacking and didn't fully understand, and respected her intellect, though very secretly considering himself her superior in the genre. She, on the other hand, found him radiant in an academic kind of way, subtly absent, but indeed a fine partner. 

They were happy. Not flamboyantly so, but steadily, patiently, and decently. Edward Albee, the philosopher, and Laura Albee, the conversationalist. That was how they saw themselves, in a general kind of way. 

On one point especially the two did in fact agree as completely as two individuals can be claimed to, and that was the matter of their perpetual boat, now The Duchess. Having both been raised in Providence, and both of bourgeois families, the two had grown up by the ocean (though they didn't meet in person until their university times, where they had recognized each others' names and privately neither thought it a pity they hadn't met sooner) and it had been both of their wishes to remain forever on the coast, which they did. 

Although they never saw it this way, the coast was a fitting place for them, metaphorically speaking. An abrupt boundary between two vast, nearly infinite and unlivably hospitable  environments. The ocean: the mystic, invisible, dynamic homogeny. The land: the obvious, tangible, populous, and practical. What a thin boundary it is. 



THE BOAT 

Their boat had been moored now for 12 years at the PYC, as it was euphemistically known among the aristocrats, which stood for Providence Yacht Club. 

Money being an ultimate watery abstraction, and man never so deeply keen to lose sight of land, the club and its physical accessories were a constant reassurance to yachters in both social and ethical ways. Men who work sitting down crave things like the smell of marine fuel and slimy, weathered ropes and the occasional blisters they get from them and seeing the rubber bumpers bulge with the pressure of a 15-ton sailboat siding to the dock. Mr Albee uniquely savored a window seat in the marina restaurant on windy days and watching the square docks with their buoyant luggage bob in the circumsized waves, and how the dock boys, he noticed, would be slightly on edge, grouped more closely than usual by the fuel pumps, waiting to see if rain would come or something would happen. 

The Duchess was a 35-foot wooden sailboat and their acquiring it had been a transaction of which Mr Albee was openly proud of. 

"It was originally based in Boston about a decade," he would say, "and belonged to a man who, apparently, made quite a go of green lumber in the 90s, and when he upgraded he sold it to the man I bought it from, based out of Baltimore. Know who that was?" 



"Who?" 

"Ted Greeley's son. The mayor of Baltimore's son. He's an M&A guy and bought it for his wife for a wedding present back in,  '93 I think. Harvard guy." 

"It's good to get a boat from a man you can trust." 

And they wink non-winks and smirk non-smirks and nod at the double-folded irony that works like a secret handshake among the elite. Plus he got a good deal on it, too. 

Mr Albee was a lawyer himself, doing mostly anti-trust work in the commodities industry, and was made partner at his firm Tanney & Fitz & Co. eight years after he joined right out of law school at Duke. 

The work suited him. It was mainly intellectual, he thought, and he liked reading the obligatory quarterly subscription journals. He had even been published in Anti/Trust with a recording of his experience in Bolivian rubber in the Fall of 2004, when Engelman tried to buy MME, which would have leveraged their position to 93% yield and 95% distribution of North-Eastern South American rubber (they, however, lost the case and MME grew 6%, presumably riding publicity, and now enjoys an unpredicted, though potentially short-lived regional dominance). 

Reason versus reason, he thought. The opportunity to define justice was what it essentially was, and he was lucky to have a hand in shaping fair markets on an international scale. Not bad. 

Mrs Albee was herself a retired ad-woman, having worked for Dunby & Dunby for a grand total of nine years, four before the kids and five after they left the house. She was a copy writer and a damn good one. As I've said, words were a specialty of hers, and she too had enjoyed her work. 



"Excellence in motion" (Reebok), 



"Perpetual revolution" (Mazda), 

"For life" (GE), and so on. 

It was nice to be a part of a small, diverse, energetic group outside the house and she liked seeing the words she had been responsible for "come alive" in public, on billboards or in magazines or what have you. 

Happiness. Whatever it was, is, they had it. Smooth sailing. They even wore cut-off jean shorts to a friend's second wedding once and it was hilarious in just the right way. 



THE WIND 

It was just beginning to be summer, and summer is drinking season. 

As a function of his personage's continuity, there arose in Mr Albee a repulsion from violence. You see, simplicity, while harboring certain connotations of limitations and absences, by no means implies dumbness or narrowness or smallness, but rather an iteration of conscious choices which serve order before precision. It is a homogenization, a unification, and when the mind is secured by a notion of the invisible, the world does not change so much with each blink, and the man may become more the man. Indeed, simple eyelids may not shut the world out, but keep it in, cloaked in the burning black. 

But the outside world is a violent place, and the jostlings of its carriages inevitably grind pieces away and room for the next generation opens up. That's just how it works, and any nitwit physicist will tell you that indeed, Madame Entropy is nobody's bitch. 

I digress. Drinking. The ocean. Alcohol is any self-respecting captain's constant stowaway and mate, and the liquid analogy has, I'm sure, not gone unnoticed by more than a few. 

There were only a few times in Mr Albee's adult life when he really let loose, given that a significant, though now decreasing, portion of his life was dedicated to the jurisdictional reverie, and the summertime was one of the rare select. The indulgences the elite enjoy with regard to alcohol can be understood on the order of their attraction to yachts; as a sort of spotless noblesse obligé, granted in and by those lofty pitches and sinking throws, where the ugly, thrilling brutish charisma can be glimpsed and the primacy of fingers and hands, skulls and teeth can be felt and thus understood, legitimated by what are essentially petty material circumstances. 

This is what they teach you in college, and Mr Albee had always been an eager, interdisciplinary student, aiming and usually succeeding at fitting in with a desirable level of excellence. Too much and you become an animal, too little and you became a monster. He was happy with medium personage and its afforded comforts, intent to focus his sober productive efforts on somehow forging a meaningful and potentially enduring intellectual impression, which is also taught. 

THE WAVES - The anniversary of Mr and Mrs and Albee, marking the taking of name and swearing of allegiance. 

Their plan that year was to take The Duchess out for her annual inauguration, drink a bottle or two of wine, get mischievious, drink a cup of coffee or two in the morning and head south towards North Carolina, where Laura had cousins in Myrtle Beach. The whole trip would take three weeks, and he had scheduled the time off work in December. They had done something like this before, oh, ten or twelve years ago. And with his seniority now three weeks was no problem and he could have gotten longer if he wanted it, but she had felt obliged to get back to accompany a former colleague and friend of hers to a Saturday-night Dixie Chicks concert in Atlantic City. Like old times, you know. 

He spent midday double-checking the boat's equipment and assuring himself that everything on the list had made it aboard and she did a final sweep of the house to make sure there was nothing they had forgotten and confirmed plans to have the plants watered and the mail held. She remembered her books, some trashy, some canonical, which had been almost lost under that day's copy of the newspaper on the foyer table and was glad they weren't. 

Not unusually Mr Albee greeted her at the boat, ready with two tumblers of Wild Turkey over one rock, his favorite and her second - her first being Jack, neat. Those drinks had been the topic of their first conversation; she had teased him about the ice and, while caught somewhat off guard, he had caught on not too late and recovered with a decent rejoinder about her then- smoking habit being fire. It was corny but due to the very fashionable horny-rimmed glasses shielding his watery eyes it was enough. 

She drank half hers and he twice his as they escaped the harbor and glided in the ocean, pulsing with the waves and their dilated vessels from again-virgin exposure to the reflected sun and the fiery drink. On the boat they made a good team, having had copious sailing experience between them, both alone and together, though usually together. The wheel was his and the sails were hers and they got about 12 knots an hour. 

Mrs Albee had brought along a club sandwich for herself and a reuben for him and secretly, too, a bottle of brut champagne as a surprise; a new article in their reminiscent tradition. 

The charts read eight miles from shore where they let the sails luff and allowed the boat to drift, and by the time they kicked their feet over the port and western side of the boat, settling in comfortably to their sandwiches and glasses of Argentinian Malbec, the sun was less bright, visible only as a thin horizontal tangent over the far-away US. Soon it disappeared, leaving soft technicolor reflections in the sky, and they were alone, finally. Cheers. 



THE INVISIBLE 

They finished their dinner in satiated silence, listening to the tireless pulsing of the waves on the hull. 

"What else is there," said Mr Albee, melting into and maybe from the quiet rhythm. 

He meant it as a half-rhetorical question but left off the question-mark, a symptom of a not insignificant inebriation and its meditative workings on his mind; the external, material inhibitions faded and he was folding more into himself. In private he often seemed to see from far away, an habitual perspective he had never spoken of directly with his wife, though reflective discussions of that type were not for them unknown. Perhaps he had taken it for granted himself, its abstraction laying as-yet uncovered or unformed, as the case may be, in the few unreasoned parts of his skull. 

"Yes, well, there is this… Give me a moment," she said, and rose to procure the brut from its hiding place in the cabin. 

She returned, holding it near her heart, playing the maitre'de with a half-smile. 

"Ta da, we're like real people now," she said. 

"Oh, how… sparkly!,” he said teasingly, and kissed his wife as she sat down beside him, the champagne still between them, as if the bottle were being somehow christened. 

"We don't have to finish it," she said, smiling, "and anything we don't want will go to the fish; champagne is never as good once it's been opened." 

Glasses were arranged and they toasted. 

"To us," Edward declared, "as we were and as we will be." 

It was delicious and Mr Albee felt more comfortable than, maybe, he thought, any time in his whole life. He felt a powerful, satiated man. 

The fish went thirsty. 



GOD 

"You know, its times like this make me want to believe in God," said Mr Albee, his voice syrupy from the liquor. 

"It's majestic out here, darling, I know. You can feel so small and so big at the same time." 

"But I mean us, out here, too. I mean how could we ever have expected... this. I mean look at us, look at the boat. To get everything we wanted, and now more. Twenty-seven's a big number." 

"Did you think we wouldn't make it?" she asked with half-playful courteous irony. 

"No honey, of course we'd make it. Couldn't a been any other way. I just mean - look at this," he said shrugging his shoulders and leaning back with his elbows on the deck. Ta da, he thought. 

In the seas of the mind anything is possible; the structures of abstraction are shifty and by no means does reason occupy or determine a solid foundation. The furthest bounds of those reaches of reason are as ornery as the crumbling edge of an ice raft, and they forfeit a dark secret about the whole; namely, dependence on the water temperature. 

She looked at him looking at the scene. His eyes were focused somewhere just below the horizon, a long ways away. She was bothered by Mr Albee's passive sentimentalism. She felt bored by it and it made her ferocious. He was becoming removed, a transcendent man, and she could think of nothing less... sexy, at the moment. She knew that he was watching them, their story, together on the boat, framed in a black calendar box - JUNE 1, #27 - sailing into the sunset. He was looking at her, staring into the ocean. 

"Edward," she said, placing her hand in his, "I am here. This is me, my hand, not our hand. We are not only us, we are me, and you. If you ever forget that again, I'll leave you." 

"Sarah, shut up and look at the god damn sunset. It's beautiful."
ENTITY => 20140501 Albee 

Naked again, or, Gone fishing. 

The case of a Mr Albee, his wife, and his relationship with invisible God.
ENTITY => 20140501 Albee
ENTITY => Naked again, or, Gone fishing.
ENTITY => The case of a Mr Albee, his wife, and his relationship with invisible God.
ENTITY => CALM AND LOW TIDE 

Mr Albee was not particularly concerned with appearances, either personal or effectual. It was his position, taken quietly and fundamentally as a kind of vague moralistic attitude, that the important things were the invisible things, and that, excusing the cliché (as he sometimes repeated in earnest collegiate conversations) - one does not judge a book by its cover. "Perhaps just the title," he would quip, raising an eyebrow and lightening the mood, gently urging the subtle jealous abstraction to disappear into the next thing. 

All simple men believe in the invisible, whether the priggish realms of abstraction or the tangible instincts of debauchery, and certainly Mr Albee was among these simple, ready men. 

His wife was different. She considered herself a realist, which really meant materialist, and she placed great value in her empirical capacities. As a result she was quick to judge, but life experience had also taught her a willingness to revise her intuitions with reason. She was open and engaging and exceptionally eloquent with company and companions, and won the admiration of many and at least the respect of all. Early practice in handling the world around her with immediacy had taught her tact at an early age, and even her peers in primary school had noticed her social grace, rooted in a very natural feminine empathy. 

Her husband valued this grace most of all, which he recognized himself slightly lacking and didn't fully understand, and respected her intellect, though very secretly considering himself her superior in the genre. She, on the other hand, found him radiant in an academic kind of way, subtly absent, but indeed a fine partner. 

They were happy. Not flamboyantly so, but steadily, patiently, and decently. Edward Albee, the philosopher, and Laura Albee, the conversationalist. That was how they saw themselves, in a general kind of way. 

On one point especially the two did in fact agree as completely as two individuals can be claimed to, and that was the matter of their perpetual boat, now The Duchess. Having both been raised in Providence, and both of bourgeois families, the two had grown up by the ocean (though they didn't meet in person until their university times, where they had recognized each others' names and privately neither thought it a pity they hadn't met sooner) and it had been both of their wishes to remain forever on the coast, which they did. 

Although they never saw it this way, the coast was a fitting place for them, metaphorically speaking. An abrupt boundary between two vast, nearly infinite and unlivably hospitable  environments. The ocean: the mystic, invisible, dynamic homogeny. The land: the obvious, tangible, populous, and practical. What a thin boundary it is.
ENTITY => CALM AND LOW TIDE
ENTITY => Mr Albee was not particularly concerned with appearances, either personal or effectual. It was his position, taken quietly and fundamentally as a kind of vague moralistic attitude, that the important things were the invisible things, and that, excusing the cliché (as he sometimes repeated in earnest collegiate conversations) - one does not judge a book by its cover. "Perhaps just the title," he would quip, raising an eyebrow and lightening the mood, gently urging the subtle jealous abstraction to disappear into the next thing.
ENTITY => All simple men believe in the invisible, whether the priggish realms of abstraction or the tangible instincts of debauchery, and certainly Mr Albee was among these simple, ready men.
ENTITY => His wife was different. She considered herself a realist, which really meant materialist, and she placed great value in her empirical capacities. As a result she was quick to judge, but life experience had also taught her a willingness to revise her intuitions with reason. She was open and engaging and exceptionally eloquent with company and companions, and won the admiration of many and at least the respect of all. Early practice in handling the world around her with immediacy had taught her tact at an early age, and even her peers in primary school had noticed her social grace, rooted in a very natural feminine empathy.
ENTITY => Her husband valued this grace most of all, which he recognized himself slightly lacking and didn't fully understand, and respected her intellect, though very secretly considering himself her superior in the genre. She, on the other hand, found him radiant in an academic kind of way, subtly absent, but indeed a fine partner.
ENTITY => They were happy. Not flamboyantly so, but steadily, patiently, and decently. Edward Albee, the philosopher, and Laura Albee, the conversationalist. That was how they saw themselves, in a general kind of way.
ENTITY => On one point especially the two did in fact agree as completely as two individuals can be claimed to, and that was the matter of their perpetual boat, now The Duchess. Having both been raised in Providence, and both of bourgeois families, the two had grown up by the ocean (though they didn't meet in person until their university times, where they had recognized each others' names and privately neither thought it a pity they hadn't met sooner) and it had been both of their wishes to remain forever on the coast, which they did.
ENTITY => Although they never saw it this way, the coast was a fitting place for them, metaphorically speaking. An abrupt boundary between two vast, nearly infinite and unlivably hospitable  environments. The ocean: the mystic, invisible, dynamic homogeny. The land: the obvious, tangible, populous, and practical. What a thin boundary it is.
ENTITY => THE BOAT 

Their boat had been moored now for 12 years at the PYC, as it was euphemistically known among the aristocrats, which stood for Providence Yacht Club. 

Money being an ultimate watery abstraction, and man never so deeply keen to lose sight of land, the club and its physical accessories were a constant reassurance to yachters in both social and ethical ways. Men who work sitting down crave things like the smell of marine fuel and slimy, weathered ropes and the occasional blisters they get from them and seeing the rubber bumpers bulge with the pressure of a 15-ton sailboat siding to the dock. Mr Albee uniquely savored a window seat in the marina restaurant on windy days and watching the square docks with their buoyant luggage bob in the circumsized waves, and how the dock boys, he noticed, would be slightly on edge, grouped more closely than usual by the fuel pumps, waiting to see if rain would come or something would happen. 

The Duchess was a 35-foot wooden sailboat and their acquiring it had been a transaction of which Mr Albee was openly proud of. 

"It was originally based in Boston about a decade," he would say, "and belonged to a man who, apparently, made quite a go of green lumber in the 90s, and when he upgraded he sold it to the man I bought it from, based out of Baltimore. Know who that was?"
ENTITY => THE BOAT
ENTITY => Their boat had been moored now for 12 years at the PYC, as it was euphemistically known among the aristocrats, which stood for Providence Yacht Club.
ENTITY => Money being an ultimate watery abstraction, and man never so deeply keen to lose sight of land, the club and its physical accessories were a constant reassurance to yachters in both social and ethical ways. Men who work sitting down crave things like the smell of marine fuel and slimy, weathered ropes and the occasional blisters they get from them and seeing the rubber bumpers bulge with the pressure of a 15-ton sailboat siding to the dock. Mr Albee uniquely savored a window seat in the marina restaurant on windy days and watching the square docks with their buoyant luggage bob in the circumsized waves, and how the dock boys, he noticed, would be slightly on edge, grouped more closely than usual by the fuel pumps, waiting to see if rain would come or something would happen.
ENTITY => The Duchess was a 35-foot wooden sailboat and their acquiring it had been a transaction of which Mr Albee was openly proud of.
ENTITY => "It was originally based in Boston about a decade," he would say, "and belonged to a man who, apparently, made quite a go of green lumber in the 90s, and when he upgraded he sold it to the man I bought it from, based out of Baltimore. Know who that was?"
ENTITY => "Who?" 

"Ted Greeley's son. The mayor of Baltimore's son. He's an M&A guy and bought it for his wife for a wedding present back in,  '93 I think. Harvard guy." 

"It's good to get a boat from a man you can trust." 

And they wink non-winks and smirk non-smirks and nod at the double-folded irony that works like a secret handshake among the elite. Plus he got a good deal on it, too. 

Mr Albee was a lawyer himself, doing mostly anti-trust work in the commodities industry, and was made partner at his firm Tanney & Fitz & Co. eight years after he joined right out of law school at Duke. 

The work suited him. It was mainly intellectual, he thought, and he liked reading the obligatory quarterly subscription journals. He had even been published in Anti/Trust with a recording of his experience in Bolivian rubber in the Fall of 2004, when Engelman tried to buy MME, which would have leveraged their position to 93% yield and 95% distribution of North-Eastern South American rubber (they, however, lost the case and MME grew 6%, presumably riding publicity, and now enjoys an unpredicted, though potentially short-lived regional dominance). 

Reason versus reason, he thought. The opportunity to define justice was what it essentially was, and he was lucky to have a hand in shaping fair markets on an international scale. Not bad. 

Mrs Albee was herself a retired ad-woman, having worked for Dunby & Dunby for a grand total of nine years, four before the kids and five after they left the house. She was a copy writer and a damn good one. As I've said, words were a specialty of hers, and she too had enjoyed her work.
ENTITY => "Who?"
ENTITY => "Ted Greeley's son. The mayor of Baltimore's son. He's an M&A guy and bought it for his wife for a wedding present back in,  '93 I think. Harvard guy."
ENTITY => "It's good to get a boat from a man you can trust."
ENTITY => And they wink non-winks and smirk non-smirks and nod at the double-folded irony that works like a secret handshake among the elite. Plus he got a good deal on it, too.
ENTITY => Mr Albee was a lawyer himself, doing mostly anti-trust work in the commodities industry, and was made partner at his firm Tanney & Fitz & Co. eight years after he joined right out of law school at Duke.
ENTITY => The work suited him. It was mainly intellectual, he thought, and he liked reading the obligatory quarterly subscription journals. He had even been published in Anti/Trust with a recording of his experience in Bolivian rubber in the Fall of 2004, when Engelman tried to buy MME, which would have leveraged their position to 93% yield and 95% distribution of North-Eastern South American rubber (they, however, lost the case and MME grew 6%, presumably riding publicity, and now enjoys an unpredicted, though potentially short-lived regional dominance).
ENTITY => Reason versus reason, he thought. The opportunity to define justice was what it essentially was, and he was lucky to have a hand in shaping fair markets on an international scale. Not bad.
ENTITY => Mrs Albee was herself a retired ad-woman, having worked for Dunby & Dunby for a grand total of nine years, four before the kids and five after they left the house. She was a copy writer and a damn good one. As I've said, words were a specialty of hers, and she too had enjoyed her work.
ENTITY => "Excellence in motion" (Reebok),
ENTITY => "Excellence in motion" (Reebok),
ENTITY => "Perpetual revolution" (Mazda), 

"For life" (GE), and so on. 

It was nice to be a part of a small, diverse, energetic group outside the house and she liked seeing the words she had been responsible for "come alive" in public, on billboards or in magazines or what have you. 

Happiness. Whatever it was, is, they had it. Smooth sailing. They even wore cut-off jean shorts to a friend's second wedding once and it was hilarious in just the right way.
ENTITY => "Perpetual revolution" (Mazda),
ENTITY => "For life" (GE), and so on.
ENTITY => It was nice to be a part of a small, diverse, energetic group outside the house and she liked seeing the words she had been responsible for "come alive" in public, on billboards or in magazines or what have you.
ENTITY => Happiness. Whatever it was, is, they had it. Smooth sailing. They even wore cut-off jean shorts to a friend's second wedding once and it was hilarious in just the right way.
ENTITY => THE WIND 

It was just beginning to be summer, and summer is drinking season. 

As a function of his personage's continuity, there arose in Mr Albee a repulsion from violence. You see, simplicity, while harboring certain connotations of limitations and absences, by no means implies dumbness or narrowness or smallness, but rather an iteration of conscious choices which serve order before precision. It is a homogenization, a unification, and when the mind is secured by a notion of the invisible, the world does not change so much with each blink, and the man may become more the man. Indeed, simple eyelids may not shut the world out, but keep it in, cloaked in the burning black. 

But the outside world is a violent place, and the jostlings of its carriages inevitably grind pieces away and room for the next generation opens up. That's just how it works, and any nitwit physicist will tell you that indeed, Madame Entropy is nobody's bitch. 

I digress. Drinking. The ocean. Alcohol is any self-respecting captain's constant stowaway and mate, and the liquid analogy has, I'm sure, not gone unnoticed by more than a few. 

There were only a few times in Mr Albee's adult life when he really let loose, given that a significant, though now decreasing, portion of his life was dedicated to the jurisdictional reverie, and the summertime was one of the rare select. The indulgences the elite enjoy with regard to alcohol can be understood on the order of their attraction to yachts; as a sort of spotless noblesse obligé, granted in and by those lofty pitches and sinking throws, where the ugly, thrilling brutish charisma can be glimpsed and the primacy of fingers and hands, skulls and teeth can be felt and thus understood, legitimated by what are essentially petty material circumstances. 

This is what they teach you in college, and Mr Albee had always been an eager, interdisciplinary student, aiming and usually succeeding at fitting in with a desirable level of excellence. Too much and you become an animal, too little and you became a monster. He was happy with medium personage and its afforded comforts, intent to focus his sober productive efforts on somehow forging a meaningful and potentially enduring intellectual impression, which is also taught. 

THE WAVES - The anniversary of Mr and Mrs and Albee, marking the taking of name and swearing of allegiance. 

Their plan that year was to take The Duchess out for her annual inauguration, drink a bottle or two of wine, get mischievious, drink a cup of coffee or two in the morning and head south towards North Carolina, where Laura had cousins in Myrtle Beach. The whole trip would take three weeks, and he had scheduled the time off work in December. They had done something like this before, oh, ten or twelve years ago. And with his seniority now three weeks was no problem and he could have gotten longer if he wanted it, but she had felt obliged to get back to accompany a former colleague and friend of hers to a Saturday-night Dixie Chicks concert in Atlantic City. Like old times, you know. 

He spent midday double-checking the boat's equipment and assuring himself that everything on the list had made it aboard and she did a final sweep of the house to make sure there was nothing they had forgotten and confirmed plans to have the plants watered and the mail held. She remembered her books, some trashy, some canonical, which had been almost lost under that day's copy of the newspaper on the foyer table and was glad they weren't. 

Not unusually Mr Albee greeted her at the boat, ready with two tumblers of Wild Turkey over one rock, his favorite and her second - her first being Jack, neat. Those drinks had been the topic of their first conversation; she had teased him about the ice and, while caught somewhat off guard, he had caught on not too late and recovered with a decent rejoinder about her then- smoking habit being fire. It was corny but due to the very fashionable horny-rimmed glasses shielding his watery eyes it was enough. 

She drank half hers and he twice his as they escaped the harbor and glided in the ocean, pulsing with the waves and their dilated vessels from again-virgin exposure to the reflected sun and the fiery drink. On the boat they made a good team, having had copious sailing experience between them, both alone and together, though usually together. The wheel was his and the sails were hers and they got about 12 knots an hour. 

Mrs Albee had brought along a club sandwich for herself and a reuben for him and secretly, too, a bottle of brut champagne as a surprise; a new article in their reminiscent tradition. 

The charts read eight miles from shore where they let the sails luff and allowed the boat to drift, and by the time they kicked their feet over the port and western side of the boat, settling in comfortably to their sandwiches and glasses of Argentinian Malbec, the sun was less bright, visible only as a thin horizontal tangent over the far-away US. Soon it disappeared, leaving soft technicolor reflections in the sky, and they were alone, finally. Cheers.
ENTITY => THE WIND
ENTITY => It was just beginning to be summer, and summer is drinking season.
ENTITY => As a function of his personage's continuity, there arose in Mr Albee a repulsion from violence. You see, simplicity, while harboring certain connotations of limitations and absences, by no means implies dumbness or narrowness or smallness, but rather an iteration of conscious choices which serve order before precision. It is a homogenization, a unification, and when the mind is secured by a notion of the invisible, the world does not change so much with each blink, and the man may become more the man. Indeed, simple eyelids may not shut the world out, but keep it in, cloaked in the burning black.
ENTITY => But the outside world is a violent place, and the jostlings of its carriages inevitably grind pieces away and room for the next generation opens up. That's just how it works, and any nitwit physicist will tell you that indeed, Madame Entropy is nobody's bitch.
ENTITY => I digress. Drinking. The ocean. Alcohol is any self-respecting captain's constant stowaway and mate, and the liquid analogy has, I'm sure, not gone unnoticed by more than a few.
ENTITY => There were only a few times in Mr Albee's adult life when he really let loose, given that a significant, though now decreasing, portion of his life was dedicated to the jurisdictional reverie, and the summertime was one of the rare select. The indulgences the elite enjoy with regard to alcohol can be understood on the order of their attraction to yachts; as a sort of spotless noblesse obligé, granted in and by those lofty pitches and sinking throws, where the ugly, thrilling brutish charisma can be glimpsed and the primacy of fingers and hands, skulls and teeth can be felt and thus understood, legitimated by what are essentially petty material circumstances.
ENTITY => This is what they teach you in college, and Mr Albee had always been an eager, interdisciplinary student, aiming and usually succeeding at fitting in with a desirable level of excellence. Too much and you become an animal, too little and you became a monster. He was happy with medium personage and its afforded comforts, intent to focus his sober productive efforts on somehow forging a meaningful and potentially enduring intellectual impression, which is also taught.
ENTITY => THE WAVES - The anniversary of Mr and Mrs and Albee, marking the taking of name and swearing of allegiance.
ENTITY => Their plan that year was to take The Duchess out for her annual inauguration, drink a bottle or two of wine, get mischievious, drink a cup of coffee or two in the morning and head south towards North Carolina, where Laura had cousins in Myrtle Beach. The whole trip would take three weeks, and he had scheduled the time off work in December. They had done something like this before, oh, ten or twelve years ago. And with his seniority now three weeks was no problem and he could have gotten longer if he wanted it, but she had felt obliged to get back to accompany a former colleague and friend of hers to a Saturday-night Dixie Chicks concert in Atlantic City. Like old times, you know.
ENTITY => He spent midday double-checking the boat's equipment and assuring himself that everything on the list had made it aboard and she did a final sweep of the house to make sure there was nothing they had forgotten and confirmed plans to have the plants watered and the mail held. She remembered her books, some trashy, some canonical, which had been almost lost under that day's copy of the newspaper on the foyer table and was glad they weren't.
ENTITY => Not unusually Mr Albee greeted her at the boat, ready with two tumblers of Wild Turkey over one rock, his favorite and her second - her first being Jack, neat. Those drinks had been the topic of their first conversation; she had teased him about the ice and, while caught somewhat off guard, he had caught on not too late and recovered with a decent rejoinder about her then- smoking habit being fire. It was corny but due to the very fashionable horny-rimmed glasses shielding his watery eyes it was enough.
ENTITY => She drank half hers and he twice his as they escaped the harbor and glided in the ocean, pulsing with the waves and their dilated vessels from again-virgin exposure to the reflected sun and the fiery drink. On the boat they made a good team, having had copious sailing experience between them, both alone and together, though usually together. The wheel was his and the sails were hers and they got about 12 knots an hour.
ENTITY => Mrs Albee had brought along a club sandwich for herself and a reuben for him and secretly, too, a bottle of brut champagne as a surprise; a new article in their reminiscent tradition.
ENTITY => The charts read eight miles from shore where they let the sails luff and allowed the boat to drift, and by the time they kicked their feet over the port and western side of the boat, settling in comfortably to their sandwiches and glasses of Argentinian Malbec, the sun was less bright, visible only as a thin horizontal tangent over the far-away US. Soon it disappeared, leaving soft technicolor reflections in the sky, and they were alone, finally. Cheers.
ENTITY => THE INVISIBLE 

They finished their dinner in satiated silence, listening to the tireless pulsing of the waves on the hull. 

"What else is there," said Mr Albee, melting into and maybe from the quiet rhythm. 

He meant it as a half-rhetorical question but left off the question-mark, a symptom of a not insignificant inebriation and its meditative workings on his mind; the external, material inhibitions faded and he was folding more into himself. In private he often seemed to see from far away, an habitual perspective he had never spoken of directly with his wife, though reflective discussions of that type were not for them unknown. Perhaps he had taken it for granted himself, its abstraction laying as-yet uncovered or unformed, as the case may be, in the few unreasoned parts of his skull. 

"Yes, well, there is this… Give me a moment," she said, and rose to procure the brut from its hiding place in the cabin. 

She returned, holding it near her heart, playing the maitre'de with a half-smile. 

"Ta da, we're like real people now," she said. 

"Oh, how… sparkly!,” he said teasingly, and kissed his wife as she sat down beside him, the champagne still between them, as if the bottle were being somehow christened. 

"We don't have to finish it," she said, smiling, "and anything we don't want will go to the fish; champagne is never as good once it's been opened." 

Glasses were arranged and they toasted. 

"To us," Edward declared, "as we were and as we will be." 

It was delicious and Mr Albee felt more comfortable than, maybe, he thought, any time in his whole life. He felt a powerful, satiated man. 

The fish went thirsty.
ENTITY => THE INVISIBLE
ENTITY => They finished their dinner in satiated silence, listening to the tireless pulsing of the waves on the hull.
ENTITY => "What else is there," said Mr Albee, melting into and maybe from the quiet rhythm.
ENTITY => He meant it as a half-rhetorical question but left off the question-mark, a symptom of a not insignificant inebriation and its meditative workings on his mind; the external, material inhibitions faded and he was folding more into himself. In private he often seemed to see from far away, an habitual perspective he had never spoken of directly with his wife, though reflective discussions of that type were not for them unknown. Perhaps he had taken it for granted himself, its abstraction laying as-yet uncovered or unformed, as the case may be, in the few unreasoned parts of his skull.
ENTITY => "Yes, well, there is this… Give me a moment," she said, and rose to procure the brut from its hiding place in the cabin.
ENTITY => She returned, holding it near her heart, playing the maitre'de with a half-smile.
ENTITY => "Ta da, we're like real people now," she said.
ENTITY => "Oh, how… sparkly!,” he said teasingly, and kissed his wife as she sat down beside him, the champagne still between them, as if the bottle were being somehow christened.
ENTITY => "We don't have to finish it," she said, smiling, "and anything we don't want will go to the fish; champagne is never as good once it's been opened."
ENTITY => Glasses were arranged and they toasted.
ENTITY => "To us," Edward declared, "as we were and as we will be."
ENTITY => It was delicious and Mr Albee felt more comfortable than, maybe, he thought, any time in his whole life. He felt a powerful, satiated man.
ENTITY => The fish went thirsty.
ENTITY => GOD 

"You know, its times like this make me want to believe in God," said Mr Albee, his voice syrupy from the liquor. 

"It's majestic out here, darling, I know. You can feel so small and so big at the same time." 

"But I mean us, out here, too. I mean how could we ever have expected... this. I mean look at us, look at the boat. To get everything we wanted, and now more. Twenty-seven's a big number." 

"Did you think we wouldn't make it?" she asked with half-playful courteous irony. 

"No honey, of course we'd make it. Couldn't a been any other way. I just mean - look at this," he said shrugging his shoulders and leaning back with his elbows on the deck. Ta da, he thought. 

In the seas of the mind anything is possible; the structures of abstraction are shifty and by no means does reason occupy or determine a solid foundation. The furthest bounds of those reaches of reason are as ornery as the crumbling edge of an ice raft, and they forfeit a dark secret about the whole; namely, dependence on the water temperature. 

She looked at him looking at the scene. His eyes were focused somewhere just below the horizon, a long ways away. She was bothered by Mr Albee's passive sentimentalism. She felt bored by it and it made her ferocious. He was becoming removed, a transcendent man, and she could think of nothing less... sexy, at the moment. She knew that he was watching them, their story, together on the boat, framed in a black calendar box - JUNE 1, #27 - sailing into the sunset. He was looking at her, staring into the ocean. 

"Edward," she said, placing her hand in his, "I am here. This is me, my hand, not our hand. We are not only us, we are me, and you. If you ever forget that again, I'll leave you." 

"Sarah, shut up and look at the god damn sunset. It's beautiful."
ENTITY => GOD
ENTITY => "You know, its times like this make me want to believe in God," said Mr Albee, his voice syrupy from the liquor.
ENTITY => "It's majestic out here, darling, I know. You can feel so small and so big at the same time."
ENTITY => "But I mean us, out here, too. I mean how could we ever have expected... this. I mean look at us, look at the boat. To get everything we wanted, and now more. Twenty-seven's a big number."
ENTITY => "Did you think we wouldn't make it?" she asked with half-playful courteous irony.
ENTITY => "No honey, of course we'd make it. Couldn't a been any other way. I just mean - look at this," he said shrugging his shoulders and leaning back with his elbows on the deck. Ta da, he thought.
ENTITY => In the seas of the mind anything is possible; the structures of abstraction are shifty and by no means does reason occupy or determine a solid foundation. The furthest bounds of those reaches of reason are as ornery as the crumbling edge of an ice raft, and they forfeit a dark secret about the whole; namely, dependence on the water temperature.
ENTITY => She looked at him looking at the scene. His eyes were focused somewhere just below the horizon, a long ways away. She was bothered by Mr Albee's passive sentimentalism. She felt bored by it and it made her ferocious. He was becoming removed, a transcendent man, and she could think of nothing less... sexy, at the moment. She knew that he was watching them, their story, together on the boat, framed in a black calendar box - JUNE 1, #27 - sailing into the sunset. He was looking at her, staring into the ocean.
ENTITY => "Edward," she said, placing her hand in his, "I am here. This is me, my hand, not our hand. We are not only us, we are me, and you. If you ever forget that again, I'll leave you."
ENTITY => "Sarah, shut up and look at the god damn sunset. It's beautiful."
 => [Section (70179660452140), Section (70179660435720), Section (70179660385940), Section (70179660343500), Section (70179660300660), Section (70179660281280), Section (70179660262460), Section (70179660173260), Section (70179660093440)] 
 ```