import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initWaveChannel } from "../channels/wave_channel";

initWaveChannel();

import { initSwal } from "../plugins/sweet_alert";
initSwal();
