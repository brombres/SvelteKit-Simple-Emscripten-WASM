<script>
  import { onMount } from "svelte";

  /** @type {string} JavaScript module file that serves as the glue code for the WebAssembly file.*/
  export var file = "Hello.js";

  /** @type {any} */
  export var module;

  /**
    * Initializes a WASM module given the File name
    * @param {string} fname WebAssembly Filename
    */
  async function initModule(fname) {
    const res = await fetch(fname);
    const blob = await res.blob();
    const code = await blob.text();
    module = await (Function('"use strict"; ' + code.replace("var Module = ", "return"))())();
  }

  onMount(
    async () => {
      await initModule(file);
    }
  );
</script>
