var ReactNative = require('react-native')
var disabled =
	ReactNative.Platform.OS === 'ios'
		? 'true' === 'true'
		: ReactNative.Platform.OS === 'android'
		? 'false' === 'true'
		: true

if (disabled) {
	module.exports = { disabled: true }
} else {
	var bridge = ReactNative.NativeModules['RNAnalyticsIntegration_Quantcast']

	if (!bridge) {
		throw new Error('Failed to load Quantcast integration native module')
	}

	module.exports = bridge.setup
}
