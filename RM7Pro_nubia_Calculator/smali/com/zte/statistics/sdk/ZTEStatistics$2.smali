.class Lcom/zte/statistics/sdk/ZTEStatistics$2;
.super Ljava/lang/Object;
.source "ZTEStatistics.java"

# interfaces
.implements Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/ZTEStatistics;->defaultAfterSdkSucInit(Landroid/content/Context;)Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/ZTEStatistics;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/zte/statistics/sdk/ZTEStatistics$2;->this$0:Lcom/zte/statistics/sdk/ZTEStatistics;

    iput-object p2, p0, Lcom/zte/statistics/sdk/ZTEStatistics$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 3

    .line 297
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/statistics/sdk/ZTEStatistics$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/zte/statistics/sdk/offline/PayloadManager;->ensureRunning(Lcom/zte/statistics/sdk/CollectionSendResult;Landroid/content/Context;Z)V

    return-void
.end method
