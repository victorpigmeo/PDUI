import type { PDUIWidget } from "../../models";

export class PDUIRoute {
    id: string;
    handler: () => PDUIWidget;

    constructor({ id, handler }: { id: string; handler: () => PDUIWidget }) {
        this.id = id;
        this.handler = handler;
    }
}
