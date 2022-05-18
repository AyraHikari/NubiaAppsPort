.class Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl$1;
.super Ljava/lang/Object;
.source "SyncModuleCtrl.java"

# interfaces
.implements Lcn/nubia/cloud/common/module/ModuleCtrlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/module/ModuleCtrlHandler<",
        "Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/common/module/Module;)Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;
    .locals 1

    .line 73
    new-instance v0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;

    invoke-direct {v0, p1, p2}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/module/Module;)V

    return-object v0
.end method

.method public bridge synthetic handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/common/module/Module;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl$1;->handlerModuleCtrl(Landroid/content/Context;Lcn/nubia/cloud/common/module/Module;)Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;

    move-result-object p1

    return-object p1
.end method
