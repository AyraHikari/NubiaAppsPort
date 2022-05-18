.class Lcn/nubia/camera/elefnovideo/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/a;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->a(Lcn/nubia/camera/elefnovideo/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->b(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->c(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/elefnovideo/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->c(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/elefnovideo/a$c;

    move-result-object v0

    iget-wide v0, v0, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->b(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->b(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->g()I

    move-result v5

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->b(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/v/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->h()I

    move-result v6

    .line 111
    array-length v0, v4

    mul-int v1, v5, v6

    const/4 v7, 0x3

    mul-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_4

    return-void

    .line 123
    :cond_4
    new-instance v0, Lcn/nubia/camera/elefnovideo/a$c;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/elefnovideo/a$c;-><init>(J[BII)V

    const-string v1, "Match"

    .line 124
    invoke-static {v1, v7}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a$c;->a(Lcn/nubia/camera/elefnovideo/a$c;)V

    .line 127
    :cond_5
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/a;->d(Lcn/nubia/camera/elefnovideo/a;)Landroid/os/Handler;

    move-result-object v1

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/a;->c(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/elefnovideo/a$c;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 129
    new-instance v2, Lcn/nubia/camera/elefnovideo/a$b;

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v3}, Lcn/nubia/camera/elefnovideo/a;->c(Lcn/nubia/camera/elefnovideo/a;)Lcn/nubia/camera/elefnovideo/a$c;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcn/nubia/camera/elefnovideo/a$b;-><init>(Lcn/nubia/camera/elefnovideo/a;Lcn/nubia/camera/elefnovideo/a$c;Lcn/nubia/camera/elefnovideo/a$c;)V

    .line 130
    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v3}, Lcn/nubia/camera/elefnovideo/a;->d(Lcn/nubia/camera/elefnovideo/a;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/a;->e(Lcn/nubia/camera/elefnovideo/a;)I

    .line 133
    :cond_6
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/a$1;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v2, v0}, Lcn/nubia/camera/elefnovideo/a;->a(Lcn/nubia/camera/elefnovideo/a;Lcn/nubia/camera/elefnovideo/a$c;)Lcn/nubia/camera/elefnovideo/a$c;

    .line 134
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
