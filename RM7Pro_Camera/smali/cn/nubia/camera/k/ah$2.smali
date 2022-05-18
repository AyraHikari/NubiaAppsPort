.class Lcn/nubia/camera/k/ah$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/q;

.field final synthetic b:Lcn/nubia/camera/k/u;

.field final synthetic c:[Lcn/nubia/b/m;

.field final synthetic d:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    iput-object p2, p0, Lcn/nubia/camera/k/ah$2;->a:Lcn/nubia/camera/k/q;

    iput-object p3, p0, Lcn/nubia/camera/k/ah$2;->b:Lcn/nubia/camera/k/u;

    iput-object p4, p0, Lcn/nubia/camera/k/ah$2;->c:[Lcn/nubia/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 742
    iget-object p1, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ah;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 743
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->c(Lcn/nubia/camera/k/ah;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 745
    monitor-exit p1

    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    monitor-exit p1

    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 751
    monitor-exit p1

    return-void

    .line 753
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ab;->d()I

    move-result v0

    .line 754
    iget-object v1, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v1}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ab;->c()I

    move-result v1

    const-string v2, "StreamController"

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/k/ab;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; aeState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 756
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/k/ab;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 755
    invoke-static {v2, v3}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v2, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v2}, Lcn/nubia/camera/k/ah;->k(Lcn/nubia/camera/k/ah;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    .line 760
    iget-object v2, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v2, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;I)I

    :cond_3
    if-ne v1, v3, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v4, 0x6

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-nez v0, :cond_9

    .line 762
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    .line 768
    invoke-static {v0}, Lcn/nubia/camera/k/ah;->l(Lcn/nubia/camera/k/ah;)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    .line 769
    invoke-static {v0}, Lcn/nubia/camera/k/ah;->l(Lcn/nubia/camera/k/ah;)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    .line 770
    invoke-static {v0}, Lcn/nubia/camera/k/ah;->l(Lcn/nubia/camera/k/ah;)I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    .line 771
    invoke-static {v0}, Lcn/nubia/camera/k/ah;->l(Lcn/nubia/camera/k/ah;)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 772
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/k/ah;->c(Lcn/nubia/camera/k/ah;Z)Z

    goto :goto_0

    .line 775
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v2}, Lcn/nubia/camera/k/ah;->h(Lcn/nubia/camera/k/ah;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_7

    if-ne v0, v4, :cond_6

    if-eq v0, v5, :cond_7

    :cond_6
    if-ne v1, v3, :cond_7

    .line 780
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0, v5}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ah;Z)Z

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_8

    if-ne v1, v4, :cond_9

    .line 781
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    .line 783
    invoke-static {v0}, Lcn/nubia/camera/k/ah;->g(Lcn/nubia/camera/k/ah;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->h(Lcn/nubia/camera/k/ah;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->j(Lcn/nubia/camera/k/ah;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0, v5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Z)Z

    .line 786
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/k/ah$2;->a:Lcn/nubia/camera/k/q;

    iget-object v2, p0, Lcn/nubia/camera/k/ah$2;->b:Lcn/nubia/camera/k/u;

    iget-object v3, p0, Lcn/nubia/camera/k/ah$2;->c:[Lcn/nubia/b/m;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    const-string v0, "StreamController"

    const-string v1, "trigger capture"

    .line 787
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 791
    :cond_9
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$2;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->C()V

    .line 792
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 733
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/ah$2;->b(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 738
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/ah$2;->b(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
