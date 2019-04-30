/**
 * Beijing Sankuai Online Technology Co.,Ltd (Meituan)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

#import <Foundation/Foundation.h>

@class SimpleListItemViewModel;

@interface ListViewUITestViewModel : NSObject

@property (nonatomic, readonly, strong) EZRNode<EZMContainer<SimpleListItemViewModel *> *> *data;
@property (nonatomic, readonly, strong) EZRNode<NSString *> *headerTitle;
@property (nonatomic, readonly, strong) EZRNode<NSString *> *footerTitle;

@property (nonatomic, readonly, strong) EZMHandler *requestDataHandler;
@property (nonatomic, readonly, strong) EZMHandler *requestDataForAddtionHandler;
@property (nonatomic, readonly, strong) EZMHandler *requestDataForDeletionHandler;
@property (nonatomic, readonly, strong) EZMHandler *requestDataForMovingHandler;
@property (nonatomic, readonly, strong) EZMHandler *requestDataForUpdatingHandler;

@end