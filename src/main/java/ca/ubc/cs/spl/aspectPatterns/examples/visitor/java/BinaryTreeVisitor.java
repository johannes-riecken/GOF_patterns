package ca.ubc.cs.spl.aspectPatterns.examples.visitor.java;

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

/**
 * Defines the interface for <i>Visitor</i>s that operate on binary trees
 * consisting of leaves and nodes.
 *
 * @author  Jan Hannemann
 * @author  Gregor Kiczales
 * @version 1.1, 02/17/04
 */

public interface BinaryTreeVisitor {

    /**
     * Visits a non-terminal binary tree node.
     *
     * @param node the node to visit
     */

    void visitNode(Visitable node);

    /**
     * Visits a leaf, which is a terminal tree node.
     *
     * @param node the leaf
     */

    void visitLeaf(Visitable node);

	/**
	 * Returns the result of the visitor's operation
	 *
	 * @return a string describing the result of this visitor's operation.
	 */

    String report();
}