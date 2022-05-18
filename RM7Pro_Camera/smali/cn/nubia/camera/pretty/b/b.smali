.class public Lcn/nubia/camera/pretty/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field private a:Lcom/android/common/b/l;

.field private b:Z

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Z


# direct methods
.method public constructor <init>(IIF)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/b;->b:Z

    const/16 v1, 0x5a0

    .line 23
    iput v1, p0, Lcn/nubia/camera/pretty/b/b;->c:I

    const/16 v1, 0x438

    iput v1, p0, Lcn/nubia/camera/pretty/b/b;->d:I

    .line 24
    invoke-static {}, Lcn/nubia/camera/aq/e;->a()F

    move-result v1

    iput v1, p0, Lcn/nubia/camera/pretty/b/b;->e:F

    .line 26
    iput v0, p0, Lcn/nubia/camera/pretty/b/b;->f:I

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/b;->g:Z

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/pretty/b/b;->h:Ljava/lang/Object;

    .line 104
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/b;->i:Z

    .line 31
    iput p1, p0, Lcn/nubia/camera/pretty/b/b;->c:I

    .line 32
    iput p2, p0, Lcn/nubia/camera/pretty/b/b;->d:I

    .line 33
    iput p3, p0, Lcn/nubia/camera/pretty/b/b;->e:F

    return-void
.end method

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 2

    .line 126
    iget-object p1, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    if-nez p1, :cond_0

    .line 127
    new-instance p1, Lcom/android/common/b/l;

    iget v0, p0, Lcn/nubia/camera/pretty/b/b;->c:I

    iget v1, p0, Lcn/nubia/camera/pretty/b/b;->d:I

    invoke-direct {p1, v0, v1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    .line 128
    invoke-virtual {p1, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/b/l;->b()I

    move-result p1

    iget p2, p0, Lcn/nubia/camera/pretty/b/b;->c:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    .line 130
    invoke-virtual {p1}, Lcom/android/common/b/l;->c()I

    move-result p1

    iget p2, p0, Lcn/nubia/camera/pretty/b/b;->d:I

    if-eq p1, p2, :cond_2

    .line 131
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    iget p2, p0, Lcn/nubia/camera/pretty/b/b;->c:I

    iget v0, p0, Lcn/nubia/camera/pretty/b/b;->d:I

    invoke-virtual {p1, p2, v0}, Lcom/android/common/b/l;->c(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/b;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 93
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/b/b;->b:Z

    .line 94
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/b/b;->g:Z

    if-nez v1, :cond_0

    .line 95
    invoke-static {}, Lcn/nubia/camera/pretty/b/a;->a()Lcn/nubia/camera/pretty/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/pretty/b/a;->b()V

    .line 97
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

.method public a(F)V
    .locals 0

    .line 101
    iput p1, p0, Lcn/nubia/camera/pretty/b/b;->e:F

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/b/b;->i:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 5

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/b;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/b/b;->b:Z

    if-eqz v1, :cond_1

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/pretty/b/b;->e()V

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 44
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/b/b;->g:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcn/nubia/camera/pretty/b/a;->a()Lcn/nubia/camera/pretty/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/pretty/b/a;->b()V

    :cond_0
    const-string v1, "SingleBokehRender"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release SingleCapture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 48
    monitor-exit v0

    return p1

    .line 50
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/b/b;->i:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 51
    monitor-exit v0

    return v2

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcn/nubia/camera/pretty/b/b;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 55
    iget p2, p0, Lcn/nubia/camera/pretty/b/b;->f:I

    const/4 v1, 0x5

    if-lt p2, v1, :cond_3

    .line 56
    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result p2

    iget-object v1, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->a()I

    move-result v1

    iget v3, p0, Lcn/nubia/camera/pretty/b/b;->e:F

    invoke-static {p2, v1, v3}, Lcn/nubia/algorithm/camera/SingleBokeh;->render(IIF)V

    .line 57
    iget-object p2, p0, Lcn/nubia/camera/pretty/b/b;->a:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    .line 58
    iput-boolean v2, p0, Lcn/nubia/camera/pretty/b/b;->g:Z

    goto :goto_0

    :cond_3
    add-int/2addr p2, v2

    .line 60
    iput p2, p0, Lcn/nubia/camera/pretty/b/b;->f:I

    .line 62
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/b/b;->b:Z

    .line 77
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/b/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 110
    iget v0, p0, Lcn/nubia/camera/pretty/b/b;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
