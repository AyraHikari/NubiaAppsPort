.class Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "TabButtonBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TabButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/zte/mifavor/widget/TabButtonBar;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/TabButtonBar;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/TabButtonBar;Lcom/zte/mifavor/widget/TabButtonBar$1;)V
    .locals 0

    .line 1226
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;-><init>(Lcom/zte/mifavor/widget/TabButtonBar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 1317
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object p1, p1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/CollapsibleActionView;

    if-eqz p1, :cond_0

    .line 1318
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object p1, p1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1321
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 1322
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-static {v0}, Lcom/zte/mifavor/widget/TabButtonBar;->access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 1323
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    .line 1325
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TabButtonBar;->addChildrenForExpandedActionView()V

    .line 1326
    iput-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1327
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->requestLayout()V

    const/4 p0, 0x0

    .line 1328
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 1288
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TabButtonBar;->access$200(Lcom/zte/mifavor/widget/TabButtonBar;)V

    .line 1289
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-static {p1}, Lcom/zte/mifavor/widget/TabButtonBar;->access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    if-eq p1, v0, :cond_0

    .line 1290
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-static {v0}, Lcom/zte/mifavor/widget/TabButtonBar;->access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->addView(Landroid/view/View;)V

    .line 1292
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    .line 1293
    iput-object p2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1294
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object p1, p1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    if-eq p1, v0, :cond_1

    .line 1295
    new-instance p1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;-><init>(II)V

    .line 1298
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->addView(Landroid/view/View;)V

    .line 1302
    :cond_1
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TabButtonBar;->removeChildrenForExpandedActionView()V

    .line 1303
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TabButtonBar;->requestLayout()V

    const/4 p1, 0x1

    .line 1304
    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1306
    iget-object p2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object p2, p2, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    instance-of p2, p2, Landroid/view/CollapsibleActionView;

    if-eqz p2, :cond_2

    .line 1307
    iget-object p0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object p0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    check-cast p0, Landroid/view/CollapsibleActionView;

    invoke-interface {p0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_2
    return p1
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1233
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 1234
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1236
    :cond_0
    iput-object p2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1247
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    .line 1250
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1251
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1253
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1254
    iget-object v3, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1263
    iget-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    :cond_2
    return-void
.end method
