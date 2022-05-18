.class public Lcom/zte/statistics/sdk/update/UpdateThread;
.super Ljava/lang/Object;
.source "UpdateThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private context:Landroid/content/Context;

.field private mVersionInfo:Lcom/zte/statistics/sdk/update/UpdateApkInfo;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zte/statistics/sdk/update/UpdateApkInfo;Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/zte/statistics/sdk/update/UpdateThread;->title:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/zte/statistics/sdk/update/UpdateThread;->mVersionInfo:Lcom/zte/statistics/sdk/update/UpdateApkInfo;

    .line 13
    iput-object p3, p0, Lcom/zte/statistics/sdk/update/UpdateThread;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/zte/statistics/sdk/update/UpdateThread;->mVersionInfo:Lcom/zte/statistics/sdk/update/UpdateApkInfo;

    iget-object v1, p0, Lcom/zte/statistics/sdk/update/UpdateThread;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/statistics/sdk/update/UpdateThread;->context:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/zte/statistics/sdk/update/ApkDownloader;->downloadBackupApk(Lcom/zte/statistics/sdk/update/UpdateApkInfo;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
