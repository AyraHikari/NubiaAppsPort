.class Lcom/android/calculator2/ZteStatisticsUtils$1;
.super Ljava/lang/Object;
.source "ZteStatisticsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/ZteStatisticsUtils;->initStatistics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/ZteStatisticsUtils;


# direct methods
.method constructor <init>(Lcom/android/calculator2/ZteStatisticsUtils;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/calculator2/ZteStatisticsUtils$1;->this$0:Lcom/android/calculator2/ZteStatisticsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/android/calculator2/ZteStatisticsUtils$1;->this$0:Lcom/android/calculator2/ZteStatisticsUtils;

    invoke-static {v0}, Lcom/android/calculator2/ZteStatisticsUtils;->access$100(Lcom/android/calculator2/ZteStatisticsUtils;)Lcom/zte/statistics/sdk/ZTEStatistics;

    move-result-object v0

    iget-object p0, p0, Lcom/android/calculator2/ZteStatisticsUtils$1;->this$0:Lcom/android/calculator2/ZteStatisticsUtils;

    invoke-static {p0}, Lcom/android/calculator2/ZteStatisticsUtils;->access$000(Lcom/android/calculator2/ZteStatisticsUtils;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "3394188"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
