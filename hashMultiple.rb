You can do as below :

For Array as value to the key of a Hash :

h = Hash.new{|hsh,key| hsh[key] = [] }
h['k1'].push 'a'
h['k1'].push 'b'
p h # >> {"k1"=>["a", "b"]}
For Hash as value to the key of a Hash :

h = Hash.new{|hsh,key| hsh[key] = {} }
h['k1'].store 'a',1
h['k1'].store 'b',1
p h # >> {"k1"=>{"a"=>1, "b"=>1}}
