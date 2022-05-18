.class Lb/a/a/e/d$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e/d;


# direct methods
.method private constructor <init>(Lb/a/a/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/a/e/d;Lb/a/a/e/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/e/d$c;-><init>(Lb/a/a/e/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v0}, Lb/a/a/e/d;->e(Lb/a/a/e/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->g(Lb/a/a/e/d;)Lb/a/a/b/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->g(Lb/a/a/e/d;)Lb/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/b/d;->A()V

    .line 4
    :cond_0
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->j(Lb/a/a/e/d;)Lb/a/a/d/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->j(Lb/a/a/e/d;)Lb/a/a/d/b;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lb/a/a/d/c;->c(J)V

    .line 6
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->j(Lb/a/a/e/d;)Lb/a/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/d/b;->s()V

    .line 7
    :cond_1
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lb/a/a/e/d;->l(Lb/a/a/e/d;Z)Z

    .line 8
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->m(Lb/a/a/e/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    .line 9
    invoke-static {v1}, Lb/a/a/e/d;->k(Lb/a/a/e/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    .line 10
    invoke-static {v1}, Lb/a/a/e/d;->g(Lb/a/a/e/d;)Lb/a/a/b/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1, v2}, Lb/a/a/e/d;->o(Lb/a/a/e/d;Z)Z

    .line 12
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->p(Lb/a/a/e/d;)Lb/a/a/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/c/l;->a()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    .line 13
    invoke-static {v1}, Lb/a/a/e/d;->p(Lb/a/a/e/d;)Lb/a/a/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/c/l;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 14
    :cond_2
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->p(Lb/a/a/e/d;)Lb/a/a/c/l;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lb/a/a/c/l;->c(I)V

    .line 15
    iget-object v1, p0, Lb/a/a/e/d$c;->a:Lb/a/a/e/d;

    invoke-static {v1}, Lb/a/a/e/d;->q(Lb/a/a/e/d;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lb/a/a/e/c;->q(Ljava/lang/Object;III)V

    .line 16
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
