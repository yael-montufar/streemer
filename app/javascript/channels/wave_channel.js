import consumer from "./consumer";

  const channel Config = {
  // same name as the Channel class generated in rails
  channel: "WaveChannel"
};


const channelCallbacks = {
  initialized: () => {},
  received: () => {}
};

const initWaveChannel = () => {
  consumer.subscriptions.create(channelConfig, channelCallbacks);
}

export { initWaveChannel };
