.class Landroidx/e/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Z

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:Z

.field final synthetic h:Landroidx/e/c;


# direct methods
.method constructor <init>(Landroidx/e/c;Z)V
    .locals 2

    .line 818
    iput-object p1, p0, Landroidx/e/c$c;->h:Landroidx/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 811
    iput-wide v0, p0, Landroidx/e/c$c;->b:J

    .line 812
    iput-wide v0, p0, Landroidx/e/c$c;->c:J

    .line 813
    iput-wide v0, p0, Landroidx/e/c$c;->d:J

    .line 814
    iput-wide v0, p0, Landroidx/e/c$c;->e:J

    .line 815
    iput-wide v0, p0, Landroidx/e/c$c;->f:J

    .line 819
    iput-boolean p2, p0, Landroidx/e/c$c;->a:Z

    return-void
.end method

.method private a()V
    .locals 6

    .line 858
    iget-boolean v0, p0, Landroidx/e/c$c;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    iget-wide v0, p0, Landroidx/e/c$c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 862
    iget-wide v0, p0, Landroidx/e/c$c;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v4, p0, Landroidx/e/c$c;->c:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    .line 863
    iget-wide v0, p0, Landroidx/e/c$c;->e:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 864
    invoke-direct {p0}, Landroidx/e/c$c;->b()V

    return-void

    .line 869
    :cond_1
    iput-wide v0, p0, Landroidx/e/c$c;->d:J

    .line 874
    :cond_2
    iget-wide v0, p0, Landroidx/e/c$c;->d:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-wide v2, p0, Landroidx/e/c$c;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 875
    invoke-direct {p0}, Landroidx/e/c$c;->b()V

    :cond_3
    return-void
.end method

.method private b()V
    .locals 2

    .line 882
    iget-object v0, p0, Landroidx/e/c$c;->h:Landroidx/e/c;

    iget-object v0, v0, Landroidx/e/c;->c:Landroid/os/Handler;

    new-instance v1, Landroidx/e/c$c$1;

    invoke-direct {v1, p0}, Landroidx/e/c$c$1;-><init>(Landroidx/e/c$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 890
    iput-boolean v0, p0, Landroidx/e/c$c;->g:Z

    return-void
.end method


# virtual methods
.method declared-synchronized a(J)V
    .locals 5

    monitor-enter p0

    .line 825
    :try_start_0
    iget-boolean v0, p0, Landroidx/e/c$c;->a:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 826
    iget-wide v3, p0, Landroidx/e/c$c;->b:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 827
    iput-wide p1, p0, Landroidx/e/c$c;->b:J

    goto :goto_0

    .line 830
    :cond_0
    iget-wide v3, p0, Landroidx/e/c$c;->d:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 831
    div-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/e/c$c;->d:J

    .line 834
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/e/c$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(JJ)Z
    .locals 4

    monitor-enter p0

    .line 841
    :try_start_0
    iget-wide v0, p0, Landroidx/e/c$c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 843
    iput-wide p3, p0, Landroidx/e/c$c;->e:J

    .line 845
    :cond_2
    iput-wide p1, p0, Landroidx/e/c$c;->c:J

    .line 846
    invoke-direct {p0}, Landroidx/e/c$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(J)V
    .locals 0

    monitor-enter p0

    .line 853
    :try_start_0
    iput-wide p1, p0, Landroidx/e/c$c;->f:J

    .line 854
    invoke-direct {p0}, Landroidx/e/c$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
