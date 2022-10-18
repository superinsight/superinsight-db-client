<script lang="ts">
  import { activeTab, currentDatabase } from '../stores';
  import getElectron from './getElectron';
  import _ from 'lodash';

  $: title = _.compact([$activeTab?.title, $currentDatabase?.name, 'Superinsight SQL Editor']).join(' - ');

  $: {
    const electron = getElectron();
    if (electron) {
      electron.send('set-title', title);
    }
  }
</script>

<svelte:head>
  <title>{title}</title>
</svelte:head>
