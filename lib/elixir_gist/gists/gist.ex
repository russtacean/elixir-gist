defmodule ElixirGist.Gists.Gist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "gists" do
    field :name, :string
    field :description, :string
    field :markup_text, :string
    belongs_to :user, ElixirGist.Accounts.User
    has_many :comments, ElixirGist.Comments.Comment
    has_many :saved_gists, ElixirGist.Gists.SavedGist

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(gist, attrs) do
    gist
    |> cast(attrs, [:name, :description, :markup_text, :user_id])
    |> validate_required([:name, :description, :markup_text, :user_id])
  end
end
