<script lang="ts">
  import { onMount } from 'svelte';
  import create_fn from "./Hello";

  let message:string = "";
  let sum:number = 0;

  onMount(async () => {
    var mod:HelloModule = await create_fn();
    message = mod.hello();
    sum = mod.add(3,4);
  });
</script>

<h1>Simple Example of Emscripten+WASM in SvelteKit</h1>
<ul>
  <li>Message from WASM: {message}
  <li>3 + 4 = {sum}
  <li>Check the developer console for the output of main().
</ul>

