/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.taglibs.standard.lang.jstl;

/**
 * <p>The implementation of the plus operator
 *
 * @author Nathan Abramson - Art Technology Group
 */

public class PlusOperator
        extends ArithmeticOperator {
    //-------------------------------------
    // Singleton
    //-------------------------------------

    public static final PlusOperator SINGLETON =
            new PlusOperator();

    //-------------------------------------

    /**
     * Constructor
     */
    public PlusOperator() {
    }

    //-------------------------------------
    // Expression methods
    //-------------------------------------

    /**
     * Returns the symbol representing the operator
     */
    public String getOperatorSymbol() {
        return "+";
    }

    //-------------------------------------

    /**
     * Applies the operator to the given double values, returning a double
     */
    public double apply(double pLeft,
                        double pRight,
                        Logger pLogger) {
        return pLeft + pRight;
    }

    //-------------------------------------

    /**
     * Applies the operator to the given double values, returning a double
     */
    public long apply(long pLeft,
                      long pRight,
                      Logger pLogger) {
        return pLeft + pRight;
    }

    //-------------------------------------
}
