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

#import "ListVCTestViewController.h"
#import "ShopListCubeViewModel.h"
#import "ShopListItemView.h"
#import "HeaderView.h"
#import "FooterView.h"

@interface ListVCTestViewController ()

@property (nonatomic, strong) ShopListCubeViewModel *shopListCubeViewModel;

@end

@implementation ListVCTestViewController

- (void)viewDidLoad {
    self.shopListCubeViewModel = [[ShopListCubeViewModel alloc] init];
}

- (void)bindView:(EZMBinder *)binder {
    [super bindView:binder];
    
    UIView *headerView = [[HeaderView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 30)];
    UIView *footerView = [[FooterView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 30)];
    self.listView.headerViewNode.value = headerView;
    self.listView.footerViewNode.value = footerView;
    
    [self.listView cellClass:[ShopListItemView class]
                         pattern:EZMCellMatchAllData binding:^(EZMBinder * _Nonnull binder, __kindof ShopListItemView * _Nonnull cell, ShopListItemViewModel * _Nonnull viewModel) {
                             [binder bindNode:cell.shopName toNode:viewModel.shopName];
                             [binder bindNode:cell.shopLogo toNode:viewModel.shopLogo];
                             [binder bindNode:cell.shopDescription toNode:viewModel.shopDescription];
                             [binder bindNode:cell.price toNode:viewModel.price];
                             [binder bindNode:cell.telephone toNode:viewModel.telephone];
                             CGRect bounds = cell.bounds;
                             bounds.size.height = 120;
                             cell.bounds = bounds;
                         }];
    self.listView.data.value = self.shopListCubeViewModel.items.value;
}

@end