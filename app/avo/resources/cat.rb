class Avo::Resources::Cat < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.description = "This resource only exists to demonstrate bugs"

  def fields
    field :id, as: :id
    field :name, as: :text
    field :house, as: :belongs_to
  end
end
