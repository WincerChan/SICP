(list->tree ((intersection-set (tree->list-2 tree1) (tree->list-2 tree2))))
(list->tree ((union-set (tree->list-2 tree1) (tree->list-2 tree2))))

;; tree->list-2、intersection-set、union-set三个过程都是Θ(n)，故总也是Θ(n)
