class Avo::Resources::HouseWithMainPanel < Avo::BaseResource
  self.model_class = House
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def index_fields
    field :id, as: :id
    field :name, as: :text
  end

  def fields
    main_panel do
      tabs do
        tab "Basics" do
          panel do
            field :id, as: :id
            field :name, as: :text
            field :address, as: :text
          end
        end
        tab "Advanced" do
          panel do
            field :doors, as: :number
            field :windows, as: :number
            field :rooms, as: :number
          end
        end
      end
    end
  end
end