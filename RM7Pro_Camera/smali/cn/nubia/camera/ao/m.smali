.class public Lcn/nubia/camera/ao/m;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/k;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/camera/k/p;

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Lcn/nubia/b/k;

.field private j:Lcn/nubia/camera/k/t;

.field private k:Lcn/nubia/camera/k/af;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 47
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ao/m;->d:Lcn/nubia/camera/k/t;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ao/m;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcn/nubia/camera/ao/m;->g:Z

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ao/m;->h:Ljava/lang/Object;

    .line 54
    new-instance v1, Lcn/nubia/camera/k/t;

    invoke-direct {v1}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ao/m;->j:Lcn/nubia/camera/k/t;

    .line 80
    iput-boolean v0, p0, Lcn/nubia/camera/ao/m;->l:Z

    .line 282
    iput-boolean v0, p0, Lcn/nubia/camera/ao/m;->m:Z

    return-void
.end method

.method private I()Z
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Lcom/android/preference/c;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/ao/m;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/ao/m;->f:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic a(Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/q;Z)V
    .locals 9

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionReconfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v6, Lcn/nubia/camera/ao/m$1;

    invoke-direct {v6, p0, p1}, Lcn/nubia/camera/ao/m$1;-><init>(Lcn/nubia/camera/ao/m;Lcn/nubia/camera/k/u;)V

    if-eqz p4, :cond_0

    .line 138
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ao/l;

    const/16 p4, 0x64

    invoke-virtual {p1, p4, p4}, Lcn/nubia/camera/ao/l;->a(II)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->b()V

    .line 141
    iget-object p1, p0, Lcn/nubia/camera/ao/m;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 142
    iget-object v2, p0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    const/4 v3, 0x2

    iget-object v7, p0, Lcn/nubia/camera/ao/m;->b:Lcn/nubia/b/k;

    const/4 p1, 0x1

    new-array v8, p1, [Lcn/nubia/b/m;

    const/4 p1, 0x0

    invoke-direct {p0}, Lcn/nubia/camera/ao/m;->I()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lcn/nubia/camera/ao/m;->l:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcn/nubia/camera/ao/m;->i:Lcn/nubia/b/k;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    aput-object p4, v8, p1

    move-object v4, p3

    move-object v5, p2

    invoke-interface/range {v2 .. v8}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->c()I

    move-result v6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 248
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Session mode: 0X%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;JZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "JZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    .line 230
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->e()Z

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "Session mode: 0X%x"

    const-string v10, "ProStreamController"

    if-nez v1, :cond_0

    .line 231
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->c()I

    move-result v11

    .line 234
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    iget-object v3, v0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v11

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    new-array v1, v8, [Ljava/lang/Object;

    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    move-object v5, p3

    move-wide/from16 v3, p4

    invoke-virtual {v1, v3, v4, p3}, Lcn/nubia/camera/k/af;->a(JLandroid/util/Size;)I

    move-result v6

    new-array v1, v8, [Ljava/lang/Object;

    .line 239
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, v0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    iget-object v3, v0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    move-object v2, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ao/m;)Lcn/nubia/camera/k/af;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    return-object p0
.end method

.method public static synthetic lambda$1iyQVj9jtAbcF7wg2OMuVhxzzGM(Lcn/nubia/camera/ao/m;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/q;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/q;Z)V

    return-void
.end method


# virtual methods
.method protected E()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v0}, Lcn/nubia/camera/k/af;->e()Z

    move-result v0

    return v0
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcn/nubia/camera/ao/m;->m:Z

    return-void
.end method

.method protected a()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ao/m;->g:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    .line 188
    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->e()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Lcn/nubia/b/m;

    const/4 v3, 0x0

    .line 189
    iget-object v4, p0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/ao/m;->a(I[Lcn/nubia/b/m;)V

    .line 191
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 60
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcn/nubia/camera/k/ac;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lcn/nubia/camera/k/v;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    .line 65
    :goto_0
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 67
    iget-object p2, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    if-nez p2, :cond_2

    .line 68
    new-instance p2, Lcn/nubia/camera/k/af;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/af;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    :cond_2
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcn/nubia/camera/ao/m;->m:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/k/af$a;)V
    .locals 2

    .line 259
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->r()V

    .line 261
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ao/l;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcn/nubia/camera/ao/l;->a(II)V

    .line 262
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af$a;)V

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/o;)V
    .locals 6

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 151
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->B()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/m;->h:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 155
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/ao/m;->g:Z

    .line 156
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    iget-boolean v1, p0, Lcn/nubia/camera/ao/m;->g:Z

    invoke-virtual {p1, v1}, Lcn/nubia/camera/k/x;->a(Z)V

    .line 158
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->b()V

    .line 159
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->o()Lcn/nubia/b/d;

    move-result-object v1

    new-array v2, v0, [Lcn/nubia/b/m;

    iget-object v3, p0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 159
    invoke-virtual {p1, v1, v0, v2}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->o()Lcn/nubia/b/d;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/b/m;

    iget-object v5, p0, Lcn/nubia/camera/ao/m;->b:Lcn/nubia/b/k;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    aput-object v4, v3, v0

    .line 161
    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->i()V

    .line 167
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->z()Lcn/nubia/camera/k/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->v()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2}, Lcn/nubia/b/a;->b(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 168
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->C()V

    return-void

    :catchall_0
    move-exception v0

    .line 156
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/m;->I()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "ProStreamController"

    const-string p2, "Raw picture haven\'t config right, cannot take raw picture"

    .line 89
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 93
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v2}, Lcn/nubia/camera/k/af;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    monitor-exit v0

    return v1

    :cond_2
    const/4 v2, 0x1

    if-eqz p3, :cond_3

    move v1, v2

    .line 98
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/camera/ao/m;->l:Z

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->j:Lcn/nubia/camera/k/t;

    invoke-virtual {v1, p3}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v3

    .line 104
    iget-object p3, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    new-instance v1, Lcn/nubia/camera/ao/-$$Lambda$m$1iyQVj9jtAbcF7wg2OMuVhxzzGM;

    invoke-direct {v1, p0, p4, p2, p1}, Lcn/nubia/camera/ao/-$$Lambda$m$1iyQVj9jtAbcF7wg2OMuVhxzzGM;-><init>(Lcn/nubia/camera/ao/m;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/q;)V

    invoke-virtual {p3, v3, v4, v1, p5}, Lcn/nubia/camera/k/af;->a(JLcn/nubia/camera/k/af$b;Lcn/nubia/camera/k/af$a;)V

    .line 144
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/ao/m;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 10

    .line 196
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v3

    .line 198
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v4

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v6, 0x100

    const/4 v7, 0x1

    invoke-direct {v0, v1, v5, v6, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ao/m;->b:Lcn/nubia/b/k;

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->b:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/ao/m;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->w()Lcom/a/a/a/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    invoke-virtual {v0, v1, v5}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->b:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {p0}, Lcn/nubia/camera/ao/m;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->e(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 209
    new-instance v1, Lcn/nubia/b/k;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v8, 0x20

    invoke-direct {v1, v5, v6, v8, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/ao/m;->i:Lcn/nubia/b/k;

    .line 210
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->j:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->o()Lcn/nubia/b/d;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 211
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->i:Lcn/nubia/b/k;

    iget-object v5, p0, Lcn/nubia/camera/ao/m;->j:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->w()Lcom/a/a/a/d;

    move-result-object v6

    invoke-interface {v6}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {v1, v5, v6}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 212
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->i:Lcn/nubia/b/k;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    new-instance v1, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v1, v5, v6, v8}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v1, p0, Lcn/nubia/camera/ao/m;->c:Lcn/nubia/b/n;

    .line 217
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v1, v5, v8

    if-gez v1, :cond_1

    .line 219
    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/camera/ao/m;->a(Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;)V

    goto :goto_2

    .line 221
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/ao/m;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/ao/m;->a(Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;JZ)V

    :goto_2
    return-void
.end method

.method public c()V
    .locals 3

    .line 269
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->e:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ao/m;->m:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 275
    iput-boolean v1, p0, Lcn/nubia/camera/ao/m;->g:Z

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ao/l;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Lcn/nubia/camera/ao/l;->a(II)V

    .line 277
    iget-object v1, p0, Lcn/nubia/camera/ao/m;->k:Lcn/nubia/camera/k/af;

    invoke-virtual {v1}, Lcn/nubia/camera/k/af;->a()V

    .line 279
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

.method public e()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/ao/m;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 173
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ao/m;->g:Z

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->p()Lcn/nubia/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/a;->i()V

    .line 179
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->C()V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/ao/m;->g:Z

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/x;->a(Z)V

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/ao/m;->k()V

    return-void

    :catchall_0
    move-exception v1

    .line 174
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
