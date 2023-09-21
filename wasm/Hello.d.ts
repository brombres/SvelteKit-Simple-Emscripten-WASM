/// <reference types="emscripten" />

export interface HelloModule extends EmscriptenModule {
  add( a:number, b:number ) : number;
  hello(): string;
}

export default function instantiate_hello(mod?: any): Promise<HelloModule>;
