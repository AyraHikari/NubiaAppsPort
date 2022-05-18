.class Lcn/nubia/upgrade/service/UpgradeWork$2;
.super Ljava/lang/Object;
.source "UpgradeWork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/service/UpgradeWork;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/service/UpgradeWork;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork$2;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork$2;->a:Lcn/nubia/upgrade/service/UpgradeWork;

    invoke-static {v0}, Lcn/nubia/upgrade/service/UpgradeWork;->q(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;->onWorkTerminated()V

    .line 667
    return-void
.end method
