#include <TspSolver.h>
#include <bits/stdc++.h>
#include <limits.h>

using namespace std;

typedef struct node node;
struct node{
    node* predecessor;
    vector<node*> sucessors;
    int Id;
    int distance;
};

vector<node*> tree_nodes;

bool idcmp(node *a, node *b){
    return a->distance > b->distance || (a->distance == b->distance && a->Id > b->Id);
}

bool distcmp(pair<int, int> a, pair<int, int> b){
    bool smaller_distance, smaller_previous_id, smaller_id;
    smaller_distance = a.second > b.second;
    smaller_previous_id = (a.second == b.second) && (tree_nodes[a.first-1]->predecessor->Id > tree_nodes[b.first-1]->predecessor->Id);
    smaller_id = (a.second == b.second) && (tree_nodes[a.first-1]->predecessor->Id == tree_nodes[b.first-1]->predecessor->Id) && (a.first > b.first);
    return smaller_distance || smaller_previous_id || smaller_id;
}  


void TspSolver::solve(TspReader &tr,std::vector<int> &percourse) {
        // here it is filling the vector with  1,2,3,...n
        // you should fill it with a permutation that represents the TSP solution
        int num_cities = tr.getNumCities();
        vector<City> cities(num_cities); tr.copyCitiesVector(cities);
        vector<pair<int, int>> missing_cities;
        tree_nodes.resize(num_cities);
        node *T, *aux, *primary;
        T = new node;
        primary = new node;
        primary->Id = 1;
        primary->predecessor = T;
        primary->distance = 0;
        T->Id = 0;
        T->predecessor = T;
        T->distance = 0;
        missing_cities.push_back(make_pair(cities[0].getId(), 0));
        tree_nodes[0] = primary;
        for(int i = 1; i < num_cities; ++i){
            missing_cities.push_back(make_pair(cities[i].getId(), cities[0].disti(cities[i])));
            aux = new node;
            aux->Id = i+1;
            aux->predecessor = primary;
            aux->distance = cities[0].disti(cities[i]);
            tree_nodes[i] = aux;  
        }
        node *next;
        while(!missing_cities.empty()){
            make_heap(missing_cities.begin(), missing_cities.end(), distcmp);
            next = tree_nodes[missing_cities.front().first-1];
            next->predecessor->sucessors.push_back(next);
            pop_heap(missing_cities.begin(), missing_cities.end()); missing_cities.pop_back();
            make_heap(missing_cities.begin(), missing_cities.end(), distcmp);
            for(auto itr = missing_cities.begin(); itr != missing_cities.end(); ++itr){
                if(cities[next->Id-1].disti(cities[itr->first-1]) < itr->second){
                    itr->second = cities[next->Id-1].disti(cities[itr->first-1]);
                    tree_nodes[itr->first-1]->distance = itr->second;
                    tree_nodes[itr->first-1]->predecessor = next;
                }
                else if(cities[next->Id-1].disti(cities[itr->first-1]) == itr->second && next->Id < tree_nodes[itr->first-1]->predecessor->Id){
                    tree_nodes[itr->first-1]->predecessor = next;
                }
            }
        }
        for(auto nod:tree_nodes) sort(nod->sucessors.begin(), nod->sucessors.end(), idcmp);
        stack<node*> s; s.emplace(primary);
        while(!s.empty()){
            aux = s.top();
            s.pop();
            percourse.push_back(aux->Id);
            for(node* sucessor: aux->sucessors) s.emplace(sucessor);
        }
}//solve
