package mini3;
import java.awt.Color;

import coloring.api.Cell;
import coloring.api.Status;

public class FloodFiller
{
  /**
   * Performs a "flood fill" algorithm to fill a region of 
   * all reachable UNSEEN cells with the given color, eventually
   * changing the status of each one to DONE, according to
   * the algorithm described in the miniassignment 3 pdf.
   * 
   * @param grid
   *   2D array of cells
   * @param row
   *   initial cell row
   * @param col
   *   initial cell column
   * @param color
   *   color to set in the cell
   */
  public static void fillRegion(Cell[][] grid, int row, int col, Color color)
  {
	  if (row < 0 || col < 0 || row >= grid.length || col >= grid[0].length || grid[row][col].isBoundary()) 
		  return;
	    Cell curr = grid[row][col];
	    if (curr.getStatus() != Status.UNSEEN) 
	    	return;
	    else {
	    curr.setStatus(Status.SEEN);
	    curr.setStatus(Status.EXPLORE_UP);
	    fillRegion(grid, row-1, col, color);
	    curr.setStatus(Status.EXPLORE_LEFT);
	    fillRegion(grid, row, col-1, color);
	    curr.setStatus(Status.EXPLORE_DOWN);
	    fillRegion(grid, row+1, col, color);
	    curr.setStatus(Status.EXPLORE_RIGHT);
	    fillRegion(grid, row, col+1, color);
	    curr.setColor(color);
	    curr.setStatus(Status.DONE);
	    } 
}
}
