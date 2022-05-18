.class final Lcn/nubia/cloud/sync/common/SyncModuleCtrl$1;
.super Ljava/lang/Object;
.source "SyncModuleCtrl.java"

# interfaces
.implements Lcn/nubia/cloud/service/common/ModuleCtrlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/SyncModuleCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/service/common/ModuleCtrlHandler",
        "<",
        "Lcn/nubia/cloud/sync/common/SyncModuleCtrl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/service/common/Module;)Lcn/nubia/cloud/sync/common/SyncModuleCtrl;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Lcn/nubia/cloud/service/common/Module;

    .prologue
    .line 79
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;

    invoke-direct {v0, p1, p2}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;-><init>(Landroid/content/Context;Lcn/nubia/cloud/service/common/Module;)V

    return-object v0
.end method

.method public bridge synthetic handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/service/common/Module;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcn/nubia/cloud/service/common/Module;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl$1;->handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/service/common/Module;)Lcn/nubia/cloud/sync/common/SyncModuleCtrl;

    move-result-object v0

    return-object v0
.end method
