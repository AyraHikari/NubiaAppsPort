.class Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1$1;
.super Ljava/lang/Object;
.source "VedioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1$1;->this$1:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    invoke-interface {v0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;->connectSuccess()V

    .line 99
    return-void
.end method
