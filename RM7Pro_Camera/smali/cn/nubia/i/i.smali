.class public Lcn/nubia/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcn/nubia/i/i;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/i/i;->c:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/i/i;->d:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/i/i;->f:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/i/i;->g:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcn/nubia/i/i;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcn/nubia/i/i;->k:I

    .line 32
    iput v0, p0, Lcn/nubia/i/i;->l:I

    .line 35
    iput p1, p0, Lcn/nubia/i/i;->a:I

    .line 36
    iput-object p3, p0, Lcn/nubia/i/i;->c:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcn/nubia/i/i;->b:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcn/nubia/i/i;->h:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcn/nubia/i/i;->k:I

    .line 41
    iput v0, p0, Lcn/nubia/i/i;->l:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcn/nubia/i/i;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/i/i;->c:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/i/i;->d:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/i/i;->f:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/i/i;->g:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcn/nubia/i/i;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcn/nubia/i/i;->k:I

    .line 32
    iput v0, p0, Lcn/nubia/i/i;->l:I

    .line 45
    iput p1, p0, Lcn/nubia/i/i;->a:I

    .line 46
    iput-object p2, p0, Lcn/nubia/i/i;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcn/nubia/i/i;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcn/nubia/i/i;->f:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcn/nubia/i/i;->g:Ljava/lang/String;

    .line 50
    iput p6, p0, Lcn/nubia/i/i;->k:I

    .line 51
    iput p7, p0, Lcn/nubia/i/i;->l:I

    .line 52
    iput-object p8, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcn/nubia/i/i;->h:Ljava/lang/String;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "iconUrl: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mIconState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/i/i;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalPhotoFillter"

    invoke-static {p2, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/i/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    .line 111
    :try_start_0
    iput p1, p0, Lcn/nubia/i/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/i/i;->d:Landroid/graphics/Bitmap;

    .line 63
    monitor-enter p0

    const/4 p1, 0x3

    .line 64
    :try_start_0
    iput p1, p0, Lcn/nubia/i/i;->k:I

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/i/i;->f:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcn/nubia/i/i;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .locals 0

    monitor-enter p0

    .line 115
    :try_start_0
    iput p1, p0, Lcn/nubia/i/i;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/i/i;->g:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcn/nubia/i/i;->i:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set iconUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalPhotoFillter"

    invoke-static {v0, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/nubia/i/i;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/i/i;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set fileUril: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/i/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalPhotoFillter"

    invoke-static {v1, v0}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/i/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/i/i;->c:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    check-cast p1, Lcn/nubia/i/i;

    .line 159
    iget v2, p0, Lcn/nubia/i/i;->a:I

    iget p1, p1, Lcn/nubia/i/i;->a:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/nubia/i/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/i/i;->b:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized g()I
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget v0, p0, Lcn/nubia/i/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcn/nubia/i/i;->j:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized h()I
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcn/nubia/i/i;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()I
    .locals 1

    .line 127
    iget v0, p0, Lcn/nubia/i/i;->a:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/i/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 147
    iget v0, p0, Lcn/nubia/i/i;->i:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/i/i;->j:Ljava/lang/String;

    return-object v0
.end method
