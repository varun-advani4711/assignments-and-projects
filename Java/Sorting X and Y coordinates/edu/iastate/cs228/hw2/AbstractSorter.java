package edu.iastate.cs228.hw2;
/**
 *  
 * @author Varun Advani
 *
 */
import java.util.Comparator;
import java.lang.IllegalArgumentException;
/**
 * 
 * This abstract class is extended by SelectionSort, InsertionSort, MergeSort, and QuickSort.
 * It stores the input (later the sorted) sequence. 
 *
 */
public abstract class AbstractSorter {
    protected Point[] points; // array of points operated on by a sorting algorithm. 
    // stores ordered points after a call to sort(). 
    protected String algorithm = null; // "selection sort", "insertion sort", "mergesort", or
    // "quicksort". Initialized by a subclass constructor.
    protected Comparator <Point> pointComparator = null;
    // Add other protected or private instance variables you may need. 
    protected AbstractSorter() {
        // No implementation needed. Provides a default super constructor to subclasses. 
        // Removable after implementing SelectionSorter, InsertionSorter, MergeSorter, and QuickSorter.
    }
    /**
     * This constructor accepts an array of points as input. Copy the points into the array points[]. 
     * 
     * @param  pts  input array of points 
     * @throws IllegalArgumentException if pts == null or pts.length == 0.
     */
    protected AbstractSorter(Point[] pts) throws IllegalArgumentException {
        if (pts == null || pts.length == 0) {
            throw new IllegalArgumentException();
        }
        points = new Point[pts.length];
        for (int i = 0; i < pts.length; i++) {
            points[i] = new Point(pts[i]);
        }
    }
    /**
     * Generates a comparator on the fly that compares by x-coordinate if order == 0, by y-coordinate
     * if order == 1. Assign the 
     * comparator to the variable pointComparator. 
     *  
     * 
     * @param order  0   by x-coordinate 
     * 				 1   by y-coordinate
     * 			    
     * 
     * @throws IllegalArgumentException if order is less than 0 or greater than 1
     *        
     */
    public void setComparator(int order) throws IllegalArgumentException {
        if (order == 0) {
        	    Point.setXorY(true);
             // pointComparator = Comparator.comparingInt(Point::getX);
        	    pointComparator = new Comparator<Point>() {
        		@Override
        		public int compare(Point a, Point b) {
        			return a.compareTo(b);
        		}
        	};
        } else if (order == 1) {
        	    Point.setXorY(false);
             // pointComparator = Comparator.comparingInt(Point::getY);
        	    pointComparator = new Comparator<Point>(){
        		@Override
        		public int compare(Point a, Point b) {
        			return a.compareTo(b);
        		}
        	};
        } else {
            throw new IllegalArgumentException();
        }
    }
    /**
     * Use the created pointComparator to conduct sorting.  
     * 
     * Should be protected. Made public for testing. 
     */
    public abstract void sort();
    /**
     * Obtain the point in the array points[] that has median index 
     * 
     * @return	median point 
     */
    public Point getMedian() {
        return points[points.length / 2];
    }
    /**
     * Copys the array points[] onto the array pts[]. 
     * 
     * @param pts target points array
     */
    public void getPoints(Point[] pts) {
        for (int i = 0; i < pts.length; i++) {
            pts[i] = new Point(points[i]);
        }
    }
    /**
     * Swaps the two elements indexed at i and j respectively in the array points[]. 
     * 
     * @param i first index of array to swap
     * @param j second index of array to swap
     */
    protected void swap(int i, int j) {
        Point temp = points[i];
        points[i] = points[j];
        points[j] = temp;
    }
}