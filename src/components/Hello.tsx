import React from 'react';

export interface HelloProps { compiler: string; framework: string; };

export const HelloWorld = (props: HelloProps) => (
    <h1>Hello World, from {props.compiler} and {props.framework}</h1>
);