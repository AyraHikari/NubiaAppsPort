.class Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;
.super Ljava/lang/Object;
.source "VedioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;ZLcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iput-boolean p2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;->val$success:Z

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;->val$success:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;->connectSuccess()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;->connectFail()V

    goto :goto_0
.end method
