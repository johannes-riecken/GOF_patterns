package ca.ubc.cs.spl.aspectPatterns.examples.decorator.aspectj;

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
 * Implements a simple class that provides a <code>print(String)</code> 
 * method. In this AspectJ implementation, there is no need for a 
 * <i>Component</i> interface; this class is autonomous and does not need 
 * to have pattern-related code.
 *
 * @author  Jan Hannemann
 * @author  Gregor Kiczales
 * @version 1.1, 02/11/04
 */                        
 
public class ConcreteOutput {

    /**
     * Prints the argument string to <code>System.out</code>.
     *
     * @param s the string to be printed.
     */

	public void print(String s) {
		System.out.print(s);
	}
}