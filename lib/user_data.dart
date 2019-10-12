import 'package:flutter/material.dart';

class User {
  final String id;
  final String imageUrl;
  final List<Story> stories;
  const User({@required this.id, this.imageUrl, this.stories});
}

class Story {
  const Story();
}

const placeholderStories = <Story>[Story()];

const itachi = User(
  id: 'itachi', 
  imageUrl: 'images/itachi.jpg',
  stories: placeholderStories);
const kakashi = User(
  id: 'kakashi',
  imageUrl: 'images/kakashi.jpg',
  stories: placeholderStories);
const naruto = User(
    id: 'naruto',
    imageUrl: 'images/naruto.jpg',
    stories: placeholderStories);
const sasuke = User(
    id: 'sasuke',
    imageUrl: 'images/sasuke.jpg',
    stories: placeholderStories);
const sakura = User(
    id: 'sakura',
    imageUrl: 'images/sakura.jpg',
    stories: placeholderStories);
const gai = User(
    id: 'gai',
    imageUrl: 'images/gai.jpg',
    stories: placeholderStories);
const hinata = User(
    id: "hinata",
    imageUrl: 'images/hinata.jpg',
    stories: placeholderStories);
const jiraiya = User(
  id: "jiraiya",
  imageUrl: 'images/jiraiya.jpg',
  stories: placeholderStories);
const kyubi = User(
  id: "kyubi",
  imageUrl: 'images/kyubi.jpg',
  stories: placeholderStories);
