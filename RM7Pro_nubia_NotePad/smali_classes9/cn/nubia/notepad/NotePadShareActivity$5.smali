.class Lcn/nubia/notepad/NotePadShareActivity$5;
.super Ljava/lang/Object;
.source "NotePadShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadShareActivity;->onSaveShareImage(Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadShareActivity;

.field final synthetic val$callback:Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 606
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity$5;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadShareActivity$5;->val$callback:Lcn/nubia/notepad/NotePadShareActivity$ISaveShareImageCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 609
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$5;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$1100(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/notepad/utils/Util;->getBitmapByView(Landroid/widget/ScrollView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$5;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/nubia/notepad/utils/Util;->saveShareBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 611
    .local v1, "ok":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 613
    const/4 v0, 0x0

    .line 615
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$5;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    new-instance v3, Lcn/nubia/notepad/NotePadShareActivity$5$1;

    invoke-direct {v3, p0, v1}, Lcn/nubia/notepad/NotePadShareActivity$5$1;-><init>(Lcn/nubia/notepad/NotePadShareActivity$5;Z)V

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/NotePadShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method
