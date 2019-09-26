import _Vue, { PluginFunction } from 'vue';

declare module 'vue/types/vue' {
  interface Vue {
    $ls: WebStorage;
  }

  interface VueConstructor {
    ls: WebStorage;
  }
}

declare class WebStorage {
  public length: number;

  constructor( storage: Storage );
  get( name: string, def?: any ): any | null;
  set( name: string, value: any, expire?: number ): void;
  key( index: number ): string | null;
  remove( name: string ): void;
  clear(): void;
  on( name: string, callback: Function ): void;
  off( name: string, callback: Function ): void;
  setOptions( options?: StorageOptions ): void;
}

declare interface StorageOptions {
  namespace?: string;
  name?: string;
  storage?: StorageTypes;
}

export enum StorageTypes {
  Session = 'session',
  Local = 'local',
  Memory = 'memory',
}

declare const _default: {
  install: PluginFunction<StorageOptions>;
};

export default _default;