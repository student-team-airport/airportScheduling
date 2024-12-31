<template>
    <v-dialog :model-value="dialog" @update:model-value="$emit('update:dialog', $event)" width="90%" height="90%">
        <v-card>
            <v-card-title>
                <span class="headline">Add flight</span>
            </v-card-title>
            <v-card-text>
                <v-form ref="form" v-model="valid">
                    <v-text-field
                        v-model="name"
                        label="Flight number"
                        required
                        type="number"
                    ></v-text-field>
                    <v-text-field v-model="start" type="datetime-local" label="Deperture UTC"></v-text-field>
                    <v-text-field v-model="end" type="datetime-local" label="Arrival UTC"></v-text-field>
                    <v-select
                    label="Airline"
                    :items="['Delta Air Lines', 'American Airlines', 'United Airlines', 'Lufthansa Group', 'Turkish Airlines', 'Ryanair']"
                    ></v-select>
                    <v-text-field v-model="end" type="number" label="Gate"></v-text-field>
                </v-form>
            </v-card-text>
            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="blue darken-1" text @click="close">Close</v-btn>
                <v-btn color="blue darken-1" text>Submit</v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script>
export default {
    props: {
        dialog: {
            type: Boolean,
            required: true
        }
    },
    data() {
        return {
            valid: false,
            name: '',
            surname: '',
        };
    },
    methods: {
        close() {
            this.$emit('close');
        }
    },
};
</script>

<style scoped>
.v-dialog__content {
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>