.class public Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;
.super Ljava/lang/Object;
.source "AttachServiceHandler.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
        "<",
        "Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.cloud.sync.AttachmentManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;->mServiceIntent:Landroid/content/Intent;

    .line 15
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;->mServiceIntent:Landroid/content/Intent;

    const-string v1, "cn.nubia.cloud"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;->mServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 20
    invoke-static {p1}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/attachment/AttachServiceHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;

    move-result-object v0

    return-object v0
.end method
