Yapura.service do

  namespace "blog" do 

    namespace "something" do

      structure "user" do
        (list<string) [1, "name"]
        (list<list<int32) [3, "list_of_stringy_things"]
        (int32)  [2, "age"]
      end

      structure "custom_mapper" do
        (string) [1, "key"]
        (string) [2, "value"]
      end

      structure "custom_map" do
        (list<custom_mapper) [1, "themap"]
      end

    end

    structure "post" do
      (string) [1, "title"]
      (string) [2, "body"]
      (int64)  [3, "created_at"]
      (int64)  [4, "updated_at"]
    end

  end

  structure "house" do
    (string) [1, "built"] 
    (string) [2, "room"]
    (bool)   [3, "finished"]
    (double) [4, "cost"]
    (bytes)  [5, "arbitrary"]
  end

  enum "state" do
    ACTIVE   0
    AUDIT    1
    INACTIVE 2
  end

end