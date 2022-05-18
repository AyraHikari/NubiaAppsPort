.class Lcom/google/zxing/activity/CaptureActivity$5;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/activity/CaptureActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/activity/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/activity/CaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/zxing/activity/CaptureActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity$5;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 194
    iget-object v4, p0, Lcom/google/zxing/activity/CaptureActivity$5;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    iget-object v5, p0, Lcom/google/zxing/activity/CaptureActivity$5;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v5}, Lcom/google/zxing/activity/CaptureActivity;->access$000(Lcom/google/zxing/activity/CaptureActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/activity/CaptureActivity;->scanningImage(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 195
    .local v2, "result":Lcom/google/zxing/Result;
    if-eqz v2, :cond_0

    .line 196
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v3, "resultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "qr_scan_result"

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    iget-object v4, p0, Lcom/google/zxing/activity/CaptureActivity$5;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/google/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 208
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/activity/CaptureActivity$5;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v4}, Lcom/google/zxing/activity/CaptureActivity;->access$100(Lcom/google/zxing/activity/CaptureActivity;)Lcom/google/zxing/decoding/CaptureActivityHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/decoding/CaptureActivityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 203
    .local v1, "m":Landroid/os/Message;
    const v4, 0x7f0e0006

    iput v4, v1, Landroid/os/Message;->what:I

    .line 204
    const-string v4, "Scan failed!"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    iget-object v4, p0, Lcom/google/zxing/activity/CaptureActivity$5;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v4}, Lcom/google/zxing/activity/CaptureActivity;->access$100(Lcom/google/zxing/activity/CaptureActivity;)Lcom/google/zxing/decoding/CaptureActivityHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/zxing/decoding/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
