package com.zelenkov.net.model;

public class Recipe {
    private int id;
    private int userId;
    private String title;
    private String text;
    private String photo;
    private String data;

    public Recipe(int id, int userId, String title, String text, String photo, String data) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.text = text;
        this.photo = photo;
        this.data = data;
    }

    public Recipe(int userId, String title, String text, String photo, String data) {
        this.userId = userId;
        this.title = title;
        this.text = text;
        this.photo = photo;
        this.data = data;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getData() {
        return data;
    }
}
