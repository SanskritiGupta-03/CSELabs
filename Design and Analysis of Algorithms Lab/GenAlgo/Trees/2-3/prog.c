class twoThreeTree {
  public:
    twoThreeTree(void);      // Constructor
    ~twoThreeTree(void);     // Destructor

 
    void add(int item);      // Adds an item
    void search(int item);   //
    Searches for an item

  private:
    twoThreeNode *root;      // Pointer to root node

    // Private helper functions go here
};

class twoThreeNode {
  public:
    int firstData, secondData; // Two data fields

    // The three child nodes
    twoThreeNode *first, *second, *third;

    // This next one is quite useful. It aids
    // moving around the tree. It is a pointer
    // to the parent of the current node.
    twoThreeNode *parent;
};
