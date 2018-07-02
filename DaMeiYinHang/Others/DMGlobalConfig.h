//
//  DMGlobalConfig.h
//  DaMeiYinHang
//
//  Created by chenlong on 2018/5/18.
//  Copyright © 2018年 陈龙. All rights reserved.
//

#ifndef DMGlobalConfig_h
#define DMGlobalConfig_h
#ifdef DEBUG
	#define MODEL_DEBUG
//	#define MODEL_RELEASE
#else
	#define MODEL_RELEASE
#endif

#if defined (MODEL_DEBUG)//233
	//#define SERVER_HOST @"138.138.2.123:7001" //服务器 145
	#define SERVER_HOST @"138.138.2.138:7001" //服务器 145
#elif defined (MODEL_RELEASE)
	#define SERVER_HOST @"www.dameidirectbank.com" //青海直销银行外网地址 注意证书切换
#endif

#define SERVER_PATH @"pacctweb" // 青海银行直销银行修改

#define SERVER_HEADER   @{                                              \
@"Accept-Language":@"zh-CN,zh;q=0.8",                                   \
@"Connection":@"Keep-Alive",                                                                            \
@"Accept":@"text/xml,application/json"\
}


#endif /* DMGlobalConfig_h */
