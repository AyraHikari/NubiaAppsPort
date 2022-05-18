.class Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;
.super Ljava/lang/Object;
.source "ReverseControlSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->runMainThread(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;ZLcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iput-boolean p2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;->val$success:Z

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;->val$success:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;->connectSuccess()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$3;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;->connectFail()V

    goto :goto_0
.end method
