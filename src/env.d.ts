/// <reference types="astro/client" />

interface ImportMetaEnv {
	readonly TRACKER_SRC: string;
	readonly TRACKER_ID: string;
}

interface ImportMeta {
	readonly env: ImportMetaEnv;
}
