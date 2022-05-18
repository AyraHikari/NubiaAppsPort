.class public Lcom/zte/statistics/sdk/update/GetUpdateInfoThread;
.super Ljava/lang/Object;
.source "GetUpdateInfoThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field uis:Lcom/zte/statistics/sdk/update/UpdateInfoStatus;


# direct methods
.method public constructor <init>(Lcom/zte/statistics/sdk/update/UpdateInfoStatus;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/zte/statistics/sdk/update/GetUpdateInfoThread;->uis:Lcom/zte/statistics/sdk/update/UpdateInfoStatus;

    .line 7
    iput-object p1, p0, Lcom/zte/statistics/sdk/update/GetUpdateInfoThread;->uis:Lcom/zte/statistics/sdk/update/UpdateInfoStatus;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 12
    new-instance v0, Lcom/zte/statistics/sdk/update/UpdaterNew;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/update/UpdaterNew;-><init>()V

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/update/UpdaterNew;->getUpdateApkInfo()Lcom/zte/statistics/sdk/update/UpdateApkInfo;

    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/zte/statistics/sdk/update/GetUpdateInfoThread;->uis:Lcom/zte/statistics/sdk/update/UpdateInfoStatus;

    invoke-interface {p0, v0}, Lcom/zte/statistics/sdk/update/UpdateInfoStatus;->result(Lcom/zte/statistics/sdk/update/UpdateApkInfo;)V

    return-void
.end method
