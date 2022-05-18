.class Lcom/android/common/ui/NubiaProgressWheel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/NubiaProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/NubiaProgressWheel;


# direct methods
.method constructor <init>(Lcom/android/common/ui/NubiaProgressWheel;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->a(Lcom/android/common/ui/NubiaProgressWheel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->e(Lcom/android/common/ui/NubiaProgressWheel;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->a(Lcom/android/common/ui/NubiaProgressWheel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v3}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/NubiaProgressWheel;->a(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 70
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->d(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v1

    const-wide v3, 0x3fd3333340000000L    # 0.30000001192092896

    add-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 71
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    cmpl-double v0, v0, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->b(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_3

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    const-wide v1, -0x402cccccc0000000L    # -0.30000001192092896

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;D)D

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0, v3, v4}, Lcom/android/common/ui/NubiaProgressWheel;->c(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 78
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->f(Lcom/android/common/ui/NubiaProgressWheel;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v1}, Lcom/android/common/ui/NubiaProgressWheel;->f(Lcom/android/common/ui/NubiaProgressWheel;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v1}, Lcom/android/common/ui/NubiaProgressWheel;->postInvalidate()V

    .line 81
    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel$2;->a:Lcom/android/common/ui/NubiaProgressWheel;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/NubiaProgressWheel;->a(Lcom/android/common/ui/NubiaProgressWheel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 83
    :cond_4
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
