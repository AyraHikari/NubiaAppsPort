.class Lcom/zte/statistics/sdk/ZTEStatistics$1;
.super Ljava/lang/Object;
.source "ZTEStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/ZTEStatistics;->notifyDaily(Landroid/content/Context;)V
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

    .line 248
    iput-object p1, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->this$0:Lcom/zte/statistics/sdk/ZTEStatistics;

    iput-object p2, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 251
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/DailyDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->update(Landroid/content/Context;)J

    .line 253
    invoke-static {}, Lcom/zte/statistics/sdk/comm/CheckUtils;->waitInitFin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->this$0:Lcom/zte/statistics/sdk/ZTEStatistics;

    iget-object v1, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->this$0:Lcom/zte/statistics/sdk/ZTEStatistics;

    iget-object p0, p0, Lcom/zte/statistics/sdk/ZTEStatistics$1;->val$context:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->access$000(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;)Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->access$100(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V

    :cond_0
    return-void
.end method
