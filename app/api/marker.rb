module Marker
  class API < Grape::API

    version 'v1', :using => :header, :vendor => 'marker', :cascade => false
    format :json

    resource :assessments do

      desc "Return a list of assessments."
      get :assessments do
        Assessments.all
      end

    end
  end
end