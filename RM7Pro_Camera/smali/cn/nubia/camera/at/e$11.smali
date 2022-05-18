.class Lcn/nubia/camera/at/e$11;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcn/nubia/camera/at/e$11;->a:Lcn/nubia/camera/at/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 569
    iget-object v0, p0, Lcn/nubia/camera/at/e$11;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->n(Lcn/nubia/camera/at/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/at/e$11;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1}, Lcn/nubia/camera/at/e;->o(Lcn/nubia/camera/at/e;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "StarrySkyFragment"

    const-string v2, "initEraseTail:"

    .line 571
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcn/nubia/camera/at/e$11;->a:Lcn/nubia/camera/at/e;

    invoke-static {}, Lcom/nubia/cosmos/Cosmos;->eraseTailInit()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/at/e;J)J

    .line 573
    iget-object v1, p0, Lcn/nubia/camera/at/e$11;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1}, Lcn/nubia/camera/at/e;->o(Lcn/nubia/camera/at/e;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "StarrySkyFragment"

    const-string v2, "initEraseTail: failed"

    .line 574
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
