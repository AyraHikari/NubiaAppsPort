.class Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;
.super Ljava/lang/Object;
.source "AudioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;ZLcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 135
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    iput-boolean p2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;->val$success:Z

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;->val$success:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;->connectSuccess()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;->connectFail()V

    goto :goto_0
.end method
