.class Lcn/nubia/touping/WiredTouPingMainActivity$2;
.super Ljava/lang/Object;
.source "WiredTouPingMainActivity.java"

# interfaces
.implements Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredTouPingMainActivity;->connectNetThenTouPing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredTouPingMainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredTouPingMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredTouPingMainActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 3

    .prologue
    .line 287
    const-string v0, "WiredTouPingMainActivity"

    const-string v1, "socket fail"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Lcn/nubia/touping/WiredTouPingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    iget-object v0, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    invoke-virtual {v0}, Lcn/nubia/touping/WiredTouPingMainActivity;->finish()V

    .line 290
    return-void
.end method

.method public connectSuccess()V
    .locals 3

    .prologue
    .line 248
    const-string v0, "WiredTouPingMainActivity"

    const-string v1, "socket success"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/WiredTouPingMainActivity$2;->this$0:Lcn/nubia/touping/WiredTouPingMainActivity;

    new-instance v2, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;

    invoke-direct {v2, p0}, Lcn/nubia/touping/WiredTouPingMainActivity$2$1;-><init>(Lcn/nubia/touping/WiredTouPingMainActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V

    .line 283
    return-void
.end method
