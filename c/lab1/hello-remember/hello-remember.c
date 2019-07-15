#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node Node;

struct Node {
    char* name;
    Node* next;
};

Node* add(Node* head, char* name) {
    Node* n;
    Node* p;

    n = (Node*) malloc(sizeof(Node));
    n->name = (char*) malloc(strlen(name) + 1);
    strcpy(n->name, name);
    n->next = NULL;

    if (head == NULL) {
        return n;
    }

    p = head;
    while (p->next != NULL) {
        p = p->next;
    }
    p -> next = n;
    return head;
}

int known(Node* head, char* name) {
    Node* p;

    p = head;
    while (p != NULL && strcmp(p->name, name) != 0) {
        p = p-> next;
    }
    return p != NULL;
}

void clear(Node* head) {
    if (head == NULL) {
        return;
    }
    clear(head->next);
    free(head->name);
    free(head);
}

int main(int argc, char** argv) {
    char name[64];
    Node* head;

    while (scanf("%s", name) != EOF) {
        if (known(head, name)) {
            printf("Still around %s, eh?\n", name);
        } else {
            head = add(head, name);
            printf("Hello %s\n", name);
        }
    }
    
    clear(head);
    return 0;
}
