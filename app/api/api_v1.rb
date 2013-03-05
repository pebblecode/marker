class API_v1 < Grape::API
  version 'v1', :using => :header, :vendor => 'marker', :cascade => false

  resource :assessments do
    desc "List assessments."
    get do
      { "assessments" => Assessment.all }
    end

    desc "Raises an exception."
    get :raise do
      raise "Unexpected error."
    end
  end
end