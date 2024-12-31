<template>
  <v-container class="fill-height">
    <v-responsive
      class="align-centerfill-height mx-auto"
      max-width="900"
    >
      <v-img
        class="mb-4"
        height="150"
        src="@/assets/logo.png"
      />
      
      <div class="py-4" />

      <v-row>
        <v-col cols="6">
          <v-card
            class="py-4"
            color="surface-variant"
            @click="openForm"
            prepend-icon="mdi-text-box-outline"
            rel="noopener noreferrer"
            rounded="lg"
            subtitle="Enter flight details."
            target="_blank"
            title="Add flight"
            variant="text"
          >
            <v-overlay
              opacity=".06"
              scrim="primary"
              contained
              model-value
              persistent
            />
          </v-card>
        </v-col>

        <v-col cols="6">
          <v-card
            class="py-4"
            color="surface-variant"
            href="aaa"
            prepend-icon="mdi-star-circle-outline"
            rel="noopener noreferrer"
            rounded="lg"
            subtitle="View details of your favourite flights."
            target="_blank"
            title="View Favorite Flights"
            variant="text"
          >
            <v-overlay
              opacity=".06"
              scrim="primary"
              contained
              model-value
              persistent
            />
          </v-card>
        </v-col>

        <v-col cols="6">
          <v-card
            class="py-4"
            color="surface-variant"
            href="aaa"
            prepend-icon="mdi-widgets-outline"
            rel="noopener noreferrer"
            rounded="lg"
            subtitle="View list of flights to modify flight details."
            target="_blank"
            title="Modify flights"
            variant="text"
          >
            <v-overlay
              opacity=".06"
              scrim="primary"
              contained
              model-value
              persistent
            />
          </v-card>
        </v-col>

        <v-col cols="6">
          <v-card
            class="py-4"
            color="surface-variant"
            href="aaa"
            prepend-icon="mdi-account-group-outline"
            rel="noopener noreferrer"
            rounded="lg"
            subtitle="Text other flight administrators."
            target="_blank"
            title="Open Chat"
            variant="text"
          >
            <v-overlay
              opacity=".06"
              scrim="primary"
              contained
              model-value
              persistent
            />
          </v-card>
        </v-col>
      </v-row>
    </v-responsive>
    <Form :dialog="isFormOpen" @close="closeForm" />
  </v-container>
</template>

<script setup>
import { ref } from 'vue';
import Form from './Form.vue';

const isFormOpen = ref(false);

const openForm = () => {
  isFormOpen.value = true;
};

const closeForm = () => {
  isFormOpen.value = false;
};
</script>
