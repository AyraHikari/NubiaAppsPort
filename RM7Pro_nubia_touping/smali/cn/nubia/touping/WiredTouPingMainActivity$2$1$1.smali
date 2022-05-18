.class Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;
.super Ljava/lang/Object;
.source "WiredTouPingMainActivity.java"

# interfaces
.implements Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->connectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredTouPingMainActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    .prologue
    .line 253
    iput-object p1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    iget-object v0, v0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->this$1:Lcn/nubia/touping/WiredTouPingMainActivity$2;

    iget-object v0, v0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->this$1:Lcn/nubia/touping/WiredTouPingMainActivity$2;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Lcn/nubia/touping/WiredTouPingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    iget-object v0, v0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->this$1:Lcn/nubia/touping/WiredTouPingMainActivity$2;

    iget-object v0, v0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    .line 271
    return-void
.end method

.method public connectSuccess()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->this$1:Lcn/nubia/touping/WiredTouPingMainActivity$2;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-static {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->access$000(Lcn/nubia/touping/WiredTouPingMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "WiredTouPingMainActivity"

    const-string v2, "usb all socket success !!!"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->this$1:Lcn/nubia/touping/WiredTouPingMainActivity$2;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-static {v1}, Lcn/nubia/touping/WiredTouPingMainActivity;->access$100(Lcn/nubia/touping/WiredTouPingMainActivity;)Landroid/media/projection/MediaProjectionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2$1$1;->this$2:Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;->this$1:Lcn/nubia/touping/WiredTouPingMainActivity$2;

    iget-object v1, v1, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    const/16 v2, 0x5a

    invoke-virtual {v1, v0, v2}, Lcn/nubia/touping/WiredTouPingMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v1, "WiredTouPingMainActivity"

    const-string v2, "hasAllPermission() = false exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
