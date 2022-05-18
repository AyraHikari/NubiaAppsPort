.class Lcn/nubia/touping/Utils/DialogManager$12;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->dialogList(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 356
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$12;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 359
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    move-object v2, v4

    check-cast v2, Lcn/nubia/touping/Adapter/DialogListViewAdapter;

    .line 360
    .local v2, "mAdapter":Lcn/nubia/touping/Adapter/DialogListViewAdapter;
    invoke-virtual {v2, p3}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "itemObject":Ljava/lang/Object;
    instance-of v4, v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 362
    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 363
    .local v0, "deviceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    sput-object v0, Lcn/nubia/touping/AbstractActivity;->mSelectInfo:Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 364
    sput v6, Lcn/nubia/touping/AbstractActivity;->mCurrentLinkStatus:I

    .line 365
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$12;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v4, v7}, Lcn/nubia/touping/Utils/DialogManager;->setScanBtnEnable(Z)V

    .line 367
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 369
    invoke-virtual {v2}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->updateListView()V

    .line 371
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$12;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    invoke-static {v4, v0}, Lcn/nubia/touping/Utils/LeBoOprate;->startMirrorTouPing(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 373
    invoke-static {v6}, Lcn/nubia/touping/Utils/LeBoOprate;->setLinkType(I)V

    .line 376
    .end local v0    # "deviceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :cond_0
    instance-of v4, v1, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    if-eqz v4, :cond_1

    .line 377
    const-string v4, "[DialogManager]"

    const-string v5, "WifiDisplayMiracastBean setOnItemClickListener onclick begin"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 378
    check-cast v3, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    .line 379
    .local v3, "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$12;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v4, v7}, Lcn/nubia/touping/Utils/DialogManager;->setScanBtnEnable(Z)V

    .line 381
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->stopBrose()V

    .line 383
    iget-object v4, p0, Lcn/nubia/touping/Utils/DialogManager$12;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v4}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->connectWifiDisplay(Landroid/content/Context;Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;)V

    .line 385
    invoke-static {v6}, Lcn/nubia/touping/Utils/LeBoOprate;->setLinkType(I)V

    .line 386
    const-string v4, "[DialogManager]"

    const-string v5, "WifiDisplayMiracastBean setOnItemClickListener onclick end"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v3    # "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    :cond_1
    return-void
.end method
