Yapura.service do

  namespace "blog" do 

    namespace "something" do

      structure "user" do
        (string) [1] = "name"
        (int32)  [2] = "age"
      end

    end

    structure "post" do
      (string) [1] = "title"
      (string) [2] = "body"
      (int64)  [3] = "created_at"
      (int64)  [4] = "updated_at"
    end

  end

  structure "house" do
    (string) [1] = "built"
    (string) [2] = "room"
    (bool)   [3] = "finished"
  end

end