<script lang="ts">
	import { count } from '$stores/counterStore';
	import { track } from '$src/actions/jitsu';
	import authStore from '$src/stores/authStore';

	function decrement() {
		count.update((n) => n - 1);
		track($authStore.user?.email, 'MinusCounter')

	}
</script>

<button on:click={decrement} disabled={$count <= 0} class="btn btn-square btn-secondary"
	><svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
		<path
			fill-rule="evenodd"
			d="M10 18a8 8 0 100-16 8 8 0 000 16zM7 9a1 1 0 000 2h6a1 1 0 100-2H7z"
			clip-rule="evenodd"
		/>
	</svg></button
>
