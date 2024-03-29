package ca.ubc.cs.spl.aspectPatterns.examples.visitor.aspectj;

/* -*- Mode: Java; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*-
 *
 * This file is part of the design patterns project at UBC
 *
 * The contents of this file are subject to the Mozilla Public License
 * Version 1.1 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * either http://www.mozilla.org/MPL/ or http://aspectj.org/MPL/.
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is ca.ubc.cs.spl.aspectPatterns.
 * 
 * For more details and the latest version of this code, please see:
 * http://www.cs.ubc.ca/labs/spl/projects/aodps.html
 *
 * Contributor(s):   
 */

import ca.ubc.cs.spl.aspectPatterns.patternLibrary.VisitorProtocol;

/**
 * Implements a <i>ConcreteVisitor</i> that collects the sum of all leaf 
 * values in the tree.
 *
 * @author  Jan Hannemann
 * @author  Gregor Kiczales
 * @version 1.1, 02/17/04
 */

public class SummationVisitor implements VisitorProtocol.Visitor {

    /**
     * the colleced sum of leaf values
     */
    
	protected int sum = 0;
	 
    /**
     * Visits a non-terminal binary tree node.
     *
     * @param node the regular node
     */

	public void visitNode(VisitorProtocol.VisitableNode node) {                      
	    if (node instanceof BinaryTreeNode) {
    		BinaryTreeNode rnode = (BinaryTreeNode) node; 
    		rnode.left.accept(this);
    		rnode.right.accept(this);
    	}
	}
		
    /**
     * Visits a terminal tree node.
     *
     * @param node the leaf
     */

	public void visitLeaf(VisitorProtocol.VisitableNode node) { 
	    if (node instanceof BinaryTreeLeaf) {
    		BinaryTreeLeaf leaf = (BinaryTreeLeaf) node;
	    	sum += leaf.getValue();
	    }
	}
	
	/** 
	 * Returns the result of the visitor's operation
	 *
	 * @return a string representing the sum of elemnent in the tree's leaves
	 */
	  
	public String report() {
		return ">>> SumVisitor collected a sum of "+sum;
	}
}