.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->scrollIdle(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1420
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 1421
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1422
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1423
    .local v0, "child":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollIdle v.getId():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollIdle child:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollIdle adInfoTemp.view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-static {v6}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$1900(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1427
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-static {v5}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$1900(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Landroid/view/View;

    move-result-object v5

    if-ne v0, v5, :cond_2

    .line 1428
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-static {v5}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$2000(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1448
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 1431
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1432
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 1433
    .local v2, "isVisible":Z
    if-eqz v2, :cond_2

    .line 1434
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v5, v5, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v5, v0, v6}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$2400(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1435
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v5, v5, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v5}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$2500(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v5

    iget-object v6, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-static {v6}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$2200(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 1436
    iget-object v5, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$8;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$2002(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Z)Z

    goto :goto_1

    .line 1421
    .end local v2    # "isVisible":Z
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
