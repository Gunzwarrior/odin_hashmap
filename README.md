This is my take on the Project : Hashmap from TOP where I have to write my own Hashmap.

Limitations :
Use the code below each time we access a bucket through an index

raise IndexError if index.negative? || index >= @buckets.length

Steps : 


    Start by creating a HashMap class. Proceed to create the following methods:

    #hash takes a value and produces a hash code with it. We did implement a fairly good hash method in the previous lesson. You are free to use that, or if you wish, you can conduct your own research. Beware this is a deep deep rabbit hole.

    Hash maps could accommodate various data types for keys like numbers, strings, and even other hashes. But for this project, only handle keys of type strings.

    #set takes two arguments, the first is a key and the second is a value that is assigned to this key. If a key already exists, then the old value is overwritten.
        Remember to grow your buckets size when it needs to, by calculating if your bucket has reached the load factor.

    #get takes one argument as a key and returns the value that is assigned to this key. If key is not found, return nil.

    #key? takes a key as an argument and returns true or false based on whether or not the key is in the hash map.

    #remove takes a key as argument and removes it from the hash table.

    #length returns the number of stored keys in the hash map.

    #clear removes all entries in the hash map.

    #keys returns an array containing all the keys inside the hash map.

    #values returns an array containing all the values.

    #entries returns an array that contains each key, value pair. Example: [[first_key, first_value], [second_key, second_value]]

Extra Credits

Create a class HashSet that behaves the same as a HashMap but only contains keys with no values.