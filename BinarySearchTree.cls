/**
 * This class represents a custom implementation of a binary search tree in Apex.
 * It supports insertion, deletion, and searching of nodes, as well as traversal of the tree.
 *
 * Only a senior developer with advanced knowledge of algorithms and data structures should attempt to modify this code.
 */
public with sharing class BinarySearchTree {
    
    private Node root;
    
    private class Node {
        Object value;
        Node left;
        Node right;
        
        Node(Object value) {
            this.value = value;
        }
    }
    
    public void insert(Object value) {
        if (value == null) {
            return;
        }
        
        root = insertRecursive(root, value);
    }
    
    private Node insertRecursive(Node node, Object value) {
        if (node == null) {
            return new Node(value);
        }
        
        if (((Comparable) value).compareTo(node.value) < 0) {
            node.left = insertRecursive(node.left, value);
        } else if (((Comparable) value).compareTo(node.value) > 0) {
            node.right = insertRecursive(node.right, value);
        }
        
        return node;
    }
    
    public void delete(Object value) {
        if (value == null || root == null) {
            return;
        }
        
        root = deleteRecursive(root, value);
    }
    
    private Node deleteRecursive(Node node, Object value) {
        if (node == null) {
            return null;
        }
        
        if (((Comparable) value).compareTo(node.value) < 0) {
            node.left = deleteRecursive(node.left, value);
        } else if (((Comparable) value).compareTo(node.value) > 0) {
            node.right = deleteRecursive(node.right, value);
        } else {
            if (node.left == null) {
                return node.right;
            } else if (node.right == null) {
                return node.left;
            } else {
                node.value = findMinValue(node.right);
                node.right = deleteRecursive(node.right, node.value);
            }
        }
        
        return node;
    }
    
    private Object findMinValue(Node node) {
        Object minValue = node.value;
        while (node.left != null) {
            minValue = node.left.value;
            node = node.left;
        }
        return minValue;
    }
    
    public boolean search(Object value) {
        return searchRecursive(root, value);
    }
    
    private boolean searchRecursive(Node node, Object value) {
        if (node == null) {
            return false;
        }
        
        if (((Comparable) value).compareTo(node.value) < 0) {
            return searchRecursive(node.left, value);
        } else if (((Comparable) value).compareTo(node.value) > 0) {
            return searchRecursive(node.right, value);
        } else {
            return true;
        }
    }
    
    public void traverseInOrder() {
        traverseInOrderRecursive(root);
    }
    
    private void traverseInOrderRecursive(Node node) {
