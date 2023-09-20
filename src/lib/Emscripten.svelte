<script lang="ts">
  import { onMount } from "svelte";

  export var module = undefined;

  export var filename:string;

  onMount(
    async () => {
      const res = await fetch(filename);
      const blob = await res.blob();
      const code = await blob.text();
      module = await (Function('"use strict"; ' + code.replace("var Module = ", "return"))())();
    }
  );
</script>
