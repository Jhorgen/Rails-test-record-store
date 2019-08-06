require 'rails_helper'

describe Song do
  it { should belong_to(:album) }
end

describe Album do
  it { should have_many(:songs) }
  it("has many songs") do
    album = Album.create(name: "album")
    song1 = Song.create(name: "song1", album_id: album.id)
    song2 = Song.create(name: "song2", album_id: album.id)
    expect(album.songs()).to(eq([song1, song2]))
  end
  it { should validate_presence_of :name }
end
