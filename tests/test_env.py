import pencil as pc


def test_pencil_readers_importable():
    assert hasattr(pc.read, "ts")
    assert hasattr(pc.read, "var")
