## CSL changes needed by APA 7

### New creator types

1. New creator variables and terms
  - `contributor` (e.g., 'Smith, Adam (with John Paul Jones)')
  - `narrator`
  - `producer`
  - `writer`
  - `executive-producer`
  - `host`
  - `principal-investigator`
  - `co-investigator`
  - APA also wants fairly specific descriptive role information--e.g., "(Guest Expert)". That should probably be accomomdated with a user-specified `role` field for name data (this could work for `host`)
    - APA 6 also had `creator` (maybe `show-creator` to be less ambiguous), but no example for that in APA 7, so lets leave something like that to a user-specified `role` field

### New terms

1. Terms
  - `album`
  - `advance-online-publication`
  - `personal-communication` (currently using `letter` forms hack)
  - `article` (for article number)
  - `review-of`
  - `preprint`
  - `working-paper`
  - `original-work-published`
  - `on` instead of `in` for audio recordings (currently using `in` forms hack)
  - Option to omit article from terms
    - English `presented-at` is "presented at the"
    - "Review of the film _Planet of the Apes_"

  - Other descriptive terms should probably be handled using user input

### New variables


1. `translated-title` or `alternate-title`
  - Items in languages other than the language of their document (e.g., non-English item in an English paper) should have translations of their titles provided in brackets
  - This is different from `title` and `original-title`, because this case is for an item that is itself not translated (if it were, `title` would be the cited title); the translated title might be user-translated
  - CSLm has a variable `alt-title` that is used for multilingual bibliographies for this purpose

1. Expanded `original-` variables
  - APA in some cases wants full references to the original version of an item (title, container-title, etc.)
  - Would need to be able format things based on `original-type` (e.g., book, article)
  - Currently, apa.csl does this using the `references` variable
  - CSLm `cs:alternative` is one approach
  - I think an initial solution would be to allow any variable to have `original-`, 
    permit testing `original-type="article-journal"`

1. Retracted articles
  - APA uses a similar structure to refer to an article's retraction as it uses for original publication
  - apa.csl also uses `references` for this
  - For this type of narrow case, I think relying on manual user entry in `references` is fine
  - Anything else would probably best be done using a hierarchical item data structure
  - Could maybe also accomplish with something like CSLm `cs:alternative`



### Other changes

1. APA-style sentence case (uppercase subtitle after :)
  - `text-case="uppercase-subtitle"`
1. Test for field equivalence
  - APA calls for `publisher`/`container-title` to be suppressed when these are the same as a group `author`
1. Ability to test for `editortranslator` as a variable
1. Separate delimiter-precedes-last for personal versus group authors
1. `-short` forms for group author names
  - Organizations should be cited with the full name and the abbreviation the first time,
1. `names` `collapse-method`
1. Omit items from bibliography (personal communications)









