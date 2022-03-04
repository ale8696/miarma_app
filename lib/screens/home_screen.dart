import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miarma_app/bloc/posts_bloc/posts_bloc.dart';
import 'package:miarma_app/model/posts/post_response.dart';
import 'package:miarma_app/repository/posts_repository/posts_repository.dart';
import 'package:miarma_app/repository/posts_repository/posts_repository_impl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PostsRepository repository;

  @override
  void initState() {
    repository = PostsRepositoryImpl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc(repository),
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 68,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                      _getStorie(),
                    ],
                  ),
                ),
                const Divider(
                    thickness: 1, indent: 2, endIndent: 2, color: Colors.grey),
                BlocBuilder<PostsBloc, PostsState>(
                  builder: (context, state) {
                    if (state is PostsFetched) {
                      return _buildPostList(state.posts);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildPostList(List<Post> posts) {
    return SizedBox(
        height: 1000,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return _getPost(posts.elementAt(index));
          },
        ));
  }

  Widget _getStorie() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Image.asset(
          'assets/profile_photo.png',
          height: 40,
        ),
        const Text(
          'Manolito',
          style: TextStyle(fontSize: 10),
        )
      ]),
    );
  }

  Widget _getPost(Post post) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network('post.fotoPerfil'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(post.nick),
                    ),
                  ],
                ),
                Icon(Icons.menu)
              ],
            ),
          ),
          Image.network(post.listaRecursos.elementAt(0))
        ],
      ),
    );
  }
}
