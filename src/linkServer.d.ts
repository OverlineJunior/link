export function event<T extends any[]>(): RemoteEvent<(...args: T) => void>
export function unreliableEvent<T extends any[]>(): UnreliableRemoteEvent<(...args: T) => void>
export function fn<T extends any[], R>(): RemoteFunction<(...args: T) => R>
