.class public Lcn/nubia/camera/aj/h;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/h$a;
    }
.end annotation


# instance fields
.field private b:Lcn/nubia/b/k;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/camera/k/p;

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Lcn/nubia/camera/aj/h$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->d:Lcn/nubia/camera/k/t;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/camera/aj/h;->f:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->g:Ljava/lang/Object;

    .line 188
    new-instance v0, Lcn/nubia/camera/aj/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/aj/h$a;-><init>(Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/h$1;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->h:Lcn/nubia/camera/aj/h$a;

    return-void
.end method

.method private a(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 178
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ae()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 179
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ae()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private b(Lcn/nubia/camera/ad/a;)Z
    .locals 3

    .line 184
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const v2, 0x7f0f02bc

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "pref_back_video_quality_key"

    invoke-virtual {v1, v2, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/aj/h;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Lcn/nubia/b/m;

    const/4 v3, 0x0

    .line 153
    iget-object v4, p0, Lcn/nubia/camera/aj/h;->c:Lcn/nubia/b/n;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/h;->a(I[Lcn/nubia/b/m;)V

    .line 155
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

.method public a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->e:Lcn/nubia/camera/k/p;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 55
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_2

    .line 56
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_3

    .line 57
    :cond_2
    new-instance v0, Lcn/nubia/camera/k/ac;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->e:Lcn/nubia/camera/k/p;

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Lcn/nubia/camera/k/v;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->e:Lcn/nubia/camera/k/p;

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_4

    .line 63
    invoke-static {p2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->h:Lcn/nubia/camera/aj/h$a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 67
    :cond_4
    invoke-super/range {p0 .. p6}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/o;)V
    .locals 6

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->B()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aj/h;->g:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 119
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/aj/h;->f:Z

    .line 120
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    iget-boolean v1, p0, Lcn/nubia/camera/aj/h;->f:Z

    invoke-virtual {p1, v1}, Lcn/nubia/camera/k/x;->a(Z)V

    .line 122
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->b()V

    .line 123
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->o()Lcn/nubia/b/d;

    move-result-object v1

    new-array v2, v0, [Lcn/nubia/b/m;

    iget-object v3, p0, Lcn/nubia/camera/aj/h;->c:Lcn/nubia/b/n;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 123
    invoke-virtual {p1, v1, v0, v2}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->o()Lcn/nubia/b/d;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/b/m;

    iget-object v5, p0, Lcn/nubia/camera/aj/h;->b:Lcn/nubia/b/k;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcn/nubia/camera/aj/h;->c:Lcn/nubia/b/n;

    aput-object v4, v3, v0

    .line 125
    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->i()V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->z()Lcn/nubia/camera/k/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->v()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2}, Lcn/nubia/b/a;->b(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 132
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->C()V

    return-void

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 9

    .line 104
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 108
    iget-object v2, p0, Lcn/nubia/camera/aj/h;->e:Lcn/nubia/camera/k/p;

    const/4 v3, 0x2

    iget-object v7, p0, Lcn/nubia/camera/aj/h;->b:Lcn/nubia/b/k;

    new-array v8, v1, [Lcn/nubia/b/m;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v2 .. v8}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .locals 7

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 74
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 76
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v6, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->b:Lcn/nubia/b/k;

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->b:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/aj/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 80
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/aj/h;->c:Lcn/nubia/b/n;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->b:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->c:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8005

    :goto_0
    move v6, v0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->g()Landroid/util/Size;

    move-result-object v0

    .line 91
    invoke-static {v5}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x8012

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v3, v0

    if-le v1, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v0, 0x800a

    goto :goto_0

    .line 99
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/aj/h;->e:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/aj/h;->c:Lcn/nubia/b/n;

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcn/nubia/camera/aj/h;->f:Z

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->e:Lcn/nubia/camera/k/p;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->h:Lcn/nubia/camera/aj/h$a;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/h;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->h:Lcn/nubia/camera/aj/h$a;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h$a;->b()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 137
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/aj/h;->f:Z

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->p()Lcn/nubia/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/a;->i()V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->C()V

    .line 144
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/aj/h;->f:Z

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/x;->a(Z)V

    .line 145
    invoke-virtual {p0}, Lcn/nubia/camera/aj/h;->k()V

    return-void

    :catchall_0
    move-exception v1

    .line 138
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/aj/h;->h:Lcn/nubia/camera/aj/h$a;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
