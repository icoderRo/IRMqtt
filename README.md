# LCMqtt


[![Build Status](https://travis-ci.org/ibireme/YYKit.svg?branch=master)](https://travis-ci.org/ibireme/YYKit)

an easy way to use mqtt deal

###file:LCMosquittoMqtt 

####usage
-
```
pod 'LCMqtt', '~> 1.0.0'

```

```
#import <LCMqtt/LCMosquittoMqtt.h>

LCMosquittoMqtt *mqtt = [[LCMosquittoMqtt alloc] init];
mqtt.delegate = self;
```
```
// 连接端口
[mqtt connectToHost:(NSString *) port:(int) userName:(NSString *) 
password:(NSString *) keepAlive:(int) 
reconnect_delay:(unsigned int) 
reconnect_delay_max:(unsigned int) reconnect_exponential_backoff:(BOOL)];
```
```
// 订阅主题
[mqtt subscribeWithTopic:(NSString *) qos:(MQTTQosLevel)];
```
```
// 发布消息
[mqtt publishData:(NSData *) topic:(NSString *) qos:(MQTTQosLevel) retain:(BOOL)];
```

```
// 取消订阅主题
[mqtt unSubscribeWithTopic:(NSString *)];
```
```
// 设置遗嘱
[mqtt setWillData:(NSData *) toTopic:(NSString *) qos:(MQTTQosLevel) retain:(BOOL)];

[mqtt disconnect];
[mqtt reconnect];
[mqtt clearWill];
   ...
```

`receive: <LCMosquittoMqttDelegate>
`

```
// 连接回调
- (void)mosMqtt:(LCMosquittoMqtt *)mosMqtt didConnectedWithReturnCode:(MQTTConnectReturnCode)code{
    
}

// 接收到新的消息
- (void)mosMqtt:(LCMosquittoMqtt *)mosMqtt didReceivedMessageWithTopic:(NSString *)topic         
data:(NSData *)data qos:(MQTTQosLevel)qos retain:(BOOL)retain messageId:(NSUInteger)MessageId{
    
}

// 发布消息成功回调
- (void)mosMqtt:(LCMosquittoMqtt *)mosMqtt didPublishedWithMessageId:(int)MessageId{
    
}

// 订阅回调
- (void)mosMqtt:(LCMosquittoMqtt *)mosMqtt didSubscribeWithQosCount:(NSUInteger)qosCount 
grantedQos:(NSArray *)grantedQos subscribeId:(int)subscribeId{
    
}

// 取消订阅回调
- (void)mosMqtt:(LCMosquittoMqtt *)mosMqtt didUnsubscribeWithUnSubscribeId:(int)unSubscribeId{
    
}

// 断开连接回调
- (void)mosMqtt:(LCMosquittoMqtt *)mosMqtt didDisConnectedWithReturnCode:(MQTTDisconnectReturnCode)code{
    
}
```
LICENSE - "MIT License" 
