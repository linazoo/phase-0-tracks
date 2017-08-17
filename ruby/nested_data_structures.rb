#design and build a nested data structure to represent real world construct
#"a nested data structure is a collection data type within another collection data type" - OH OKAY -_-
#ARRAY AND HASH (HASH WITHIN AN ARRAY WITHIN A HASH AN ARRAY OF AN ARRAY)

#A school bus full of kids with a bunch of dreams

#Im building a hash because i want to have the kids names and specific dreams within those names, those dreams will be arrays


school_bus = {
  'Santiago' => [
    'firefighter',
    'rich'
  ],
  'Johnny' => [
      'guru',
      'chef'
   ],
  'Felicia' => [
    'scientist',
    'model'
  ],
  'Valentina'=> [
    'mother',
    'florist'
  ],
  'Butters' => [
    'GOODBOY'
  ]
}

school_bus['Santiago']
school_bus['Felicia'][1]

#Adding a dog to the school bus with the dreams of being a GOODBOY and also food
school_bus['Butters'].push('food')

#Valentina was talking to her punk friend now she wants to be a painter
school_bus['Valentina'].push('painter')

#but before she gets home she changes her mind and thinks maybe she shuold just be an actress instead
school_bus['Valentina'][2] = 'actress'
school_bus['Valentina']

#She also decideds she wants to FIRST be an actress and then be a mother so...
school_bus['Valentina'].reverse

#Then Butters (the dog) starts thinking about how much he doesn't wanna be a real real goodboy so he lower cases it to make it seen less serious
school_bus['Butters'][0].downcase
