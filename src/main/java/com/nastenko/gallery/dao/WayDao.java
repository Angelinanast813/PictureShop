package com.nastenko.gallery.dao;

import com.nastenko.gallery.domain.Way;

import java.util.List;

public interface WayDao {
    void save(Way way);

    void update(Way way);

    List<Way> findAll();

    Way findByName(String wayName);

    void deleteByName(String wayName);

    Way findOne(String wayId);
}
