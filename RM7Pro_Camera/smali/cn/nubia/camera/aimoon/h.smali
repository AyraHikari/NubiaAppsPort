.class public Lcn/nubia/camera/aimoon/h;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/h$a;
    }
.end annotation


# instance fields
.field private b:Lcn/nubia/b/k;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/b/d;

.field private f:Lcn/nubia/b/a;

.field private g:Lcn/nubia/camera/k/ab;

.field private h:Lcn/nubia/camera/aimoon/i;

.field private i:Lcn/nubia/camera/k/y;

.field private j:Ljava/lang/String;

.field private k:Landroid/graphics/SurfaceTexture;

.field private l:Lcn/nubia/b/n;

.field private m:Lcn/nubia/b/k;

.field private n:Lcn/nubia/camera/k/t;

.field private o:Lcn/nubia/camera/aimoon/m;

.field private p:Lcn/nubia/camera/aimoon/j;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 44
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/h;->d:Lcn/nubia/camera/k/t;

    .line 55
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/h;->n:Lcn/nubia/camera/k/t;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcn/nubia/camera/aimoon/h;->q:I

    return-void
.end method

.method private H()V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIMoonStreamController"

    const-string v1, "Preview is paused."

    .line 70
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 77
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->f:Lcn/nubia/b/a;

    if-eqz v0, :cond_4

    .line 79
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcn/nubia/camera/aimoon/h;->q:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/b/m;

    .line 82
    iget-object v3, p0, Lcn/nubia/camera/aimoon/h;->l:Lcn/nubia/b/n;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    invoke-virtual {v1}, Lcn/nubia/camera/aimoon/m;->a()Lcn/nubia/b/k;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    new-array v0, v2, [Lcn/nubia/b/m;

    .line 80
    iget-object v3, p0, Lcn/nubia/camera/aimoon/h;->l:Lcn/nubia/b/n;

    aput-object v3, v0, v1

    .line 84
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->f:Lcn/nubia/b/a;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    .line 85
    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    invoke-virtual {v3, v4, v2, v0}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->g:Lcn/nubia/camera/k/ab;

    .line 87
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->v()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 84
    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/b/a;->b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    .line 92
    throw v0
.end method

.method private I()V
    .locals 13

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "farfocus pictureSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AIMoonStreamController"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v2, Lcn/nubia/b/k;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v4, 0x100

    const/4 v5, 0x1

    invoke-direct {v2, v3, v0, v4, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v2, p0, Lcn/nubia/camera/aimoon/h;->m:Lcn/nubia/b/k;

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->n:Lcn/nubia/camera/k/t;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->m:Lcn/nubia/b/k;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->n:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->w()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 132
    new-instance v0, Lcn/nubia/b/n;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/h;->l:Lcn/nubia/b/n;

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->m:Lcn/nubia/b/k;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->l:Lcn/nubia/b/n;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/camera/aimoon/h;->q:I

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/m;->a()Lcn/nubia/b/k;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v2, v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0xcc0

    const/16 v7, 0x990

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v3, v4, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->a()Z

    .line 143
    iget-object v6, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    const/4 v7, 0x0

    const/high16 v9, 0x10000000

    new-instance v10, Lcn/nubia/camera/aimoon/h$a;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lcn/nubia/camera/aimoon/h$a;-><init>(Lcn/nubia/camera/aimoon/h;Lcn/nubia/camera/aimoon/h$1;)V

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    .line 144
    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    invoke-virtual {v1, v2, v5, v0}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    sget-object v0, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    .line 145
    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Handler;

    .line 143
    invoke-virtual/range {v6 .. v12}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILcn/nubia/b/a$c;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return-void
.end method

.method private J()F
    .locals 2

    .line 339
    iget v0, p0, Lcn/nubia/camera/aimoon/h;->q:I

    if-nez v0, :cond_0

    .line 340
    sget v0, Lcn/nubia/camera/aimoon/l;->b:F

    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->j()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->j()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/c;->a(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/h;Lcn/nubia/b/a;)Lcn/nubia/b/a;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/camera/aimoon/h;->f:Lcn/nubia/b/a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/aimoon/i;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/aimoon/h;->h:Lcn/nubia/camera/aimoon/i;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/k/y;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/h;->H()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/aimoon/m;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/aimoon/h;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/aimoon/h;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/aimoon/h;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/b/d;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/aimoon/h;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/aimoon/h;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 65
    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->c:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aimoon/h;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/camera/aimoon/h;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->G()Lcn/nubia/camera/k/b/d;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aimoon/h$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/aimoon/h$5;-><init>(Lcn/nubia/camera/aimoon/h;F)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/d;->a(Lcn/nubia/camera/k/b/a;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 352
    iput p1, p0, Lcn/nubia/camera/aimoon/h;->q:I

    .line 353
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->h:Lcn/nubia/camera/aimoon/i;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/i;->a(I)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/aimoon/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/f;->a(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcn/nubia/camera/aimoon/h;->k:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;I)V
    .locals 1

    .line 216
    iput p6, p0, Lcn/nubia/camera/aimoon/h;->q:I

    .line 217
    move-object v0, p4

    check-cast v0, Lcn/nubia/camera/aimoon/f;

    invoke-virtual {v0, p6}, Lcn/nubia/camera/aimoon/f;->a(I)V

    .line 218
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 220
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p2

    sget p3, Lcn/nubia/camera/aimoon/l;->a:F

    invoke-virtual {p2, p3}, Lcn/nubia/camera/k/y;->a(F)V

    .line 221
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->d()[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mFarFocusCameraId: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "AIMoonStreamController"

    invoke-static {p4, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->k:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_0

    .line 224
    new-instance p2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->k:Landroid/graphics/SurfaceTexture;

    .line 226
    :cond_0
    new-instance p2, Lcn/nubia/camera/k/ab;

    invoke-direct {p2}, Lcn/nubia/camera/k/ab;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->g:Lcn/nubia/camera/k/ab;

    .line 227
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    invoke-virtual {p5, p2}, Lcn/nubia/camera/k/h;->a(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    .line 228
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->h:Lcn/nubia/camera/aimoon/i;

    if-nez p2, :cond_1

    .line 229
    new-instance p2, Lcn/nubia/camera/aimoon/i;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p4

    iget-object p5, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p6

    invoke-direct {p2, p3, p4, p5, p6}, Lcn/nubia/camera/aimoon/i;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->h:Lcn/nubia/camera/aimoon/i;

    .line 231
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->h:Lcn/nubia/camera/aimoon/i;

    iget p3, p0, Lcn/nubia/camera/aimoon/h;->q:I

    invoke-virtual {p2, p3}, Lcn/nubia/camera/aimoon/i;->a(I)V

    .line 232
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    if-nez p2, :cond_2

    .line 233
    new-instance p2, Lcn/nubia/camera/k/y;

    iget-object p3, p0, Lcn/nubia/camera/aimoon/h;->j:Ljava/lang/String;

    iget-object p4, p0, Lcn/nubia/camera/aimoon/h;->h:Lcn/nubia/camera/aimoon/i;

    iget-object p5, p0, Lcn/nubia/camera/aimoon/h;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-direct {p2, p3, p1, p4, p5}, Lcn/nubia/camera/k/y;-><init>(Ljava/lang/String;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/three_a/b/a;)V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    .line 235
    :cond_2
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-direct {p0}, Lcn/nubia/camera/aimoon/h;->J()F

    move-result p3

    invoke-virtual {p2, p3}, Lcn/nubia/camera/k/y;->a(F)V

    .line 237
    iget p2, p0, Lcn/nubia/camera/aimoon/h;->q:I

    if-nez p2, :cond_4

    .line 238
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    if-nez p2, :cond_3

    .line 239
    new-instance p2, Lcn/nubia/camera/aimoon/m;

    iget-object p3, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {p3}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcn/nubia/camera/aimoon/m;-><init>(Lcn/nubia/camera/ad/a;Landroid/util/Size;)V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    .line 240
    new-instance p3, Lcn/nubia/camera/aimoon/h$2;

    invoke-direct {p3, p0}, Lcn/nubia/camera/aimoon/h$2;-><init>(Lcn/nubia/camera/aimoon/h;)V

    invoke-virtual {p2, p3}, Lcn/nubia/camera/aimoon/m;->a(Lcn/nubia/camera/aimoon/m$a;)V

    .line 249
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->g:Lcn/nubia/camera/k/ab;

    iget-object p3, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    invoke-virtual {p2, p3}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 251
    :cond_3
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    if-nez p2, :cond_4

    .line 252
    new-instance p2, Lcn/nubia/camera/aimoon/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcn/nubia/camera/aimoon/j;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;)V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    .line 253
    new-instance p1, Lcn/nubia/camera/aimoon/h$3;

    invoke-direct {p1, p0}, Lcn/nubia/camera/aimoon/h$3;-><init>(Lcn/nubia/camera/aimoon/h;)V

    invoke-virtual {p2, p1}, Lcn/nubia/camera/aimoon/j;->a(Lcn/nubia/camera/aimoon/j$a;)V

    .line 259
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->z()Lcn/nubia/camera/k/ab;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 261
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    invoke-virtual {p1}, Lcn/nubia/camera/aimoon/j;->start()V

    :cond_4
    return-void
.end method

.method public a(Lcn/nubia/camera/g/h;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 9

    const-string v0, " "

    .line 161
    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->B()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 169
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->n:Lcn/nubia/camera/k/t;

    invoke-virtual {v1, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 170
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->b()V

    .line 172
    iget p2, p0, Lcn/nubia/camera/aimoon/h;->q:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_3

    .line 173
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    invoke-virtual {p2}, Lcn/nubia/camera/aimoon/m;->b()[I

    move-result-object p2

    if-eqz p2, :cond_3

    .line 175
    sget-boolean v4, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v4, :cond_2

    const-string v4, "[MoonDebug] AIMoonStreamController"

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "teleEv evParas: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v5, p2, v2

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v5, p2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 185
    :cond_3
    iget-object p2, p0, Lcn/nubia/camera/aimoon/h;->f:Lcn/nubia/b/a;

    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    .line 186
    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/camera/aimoon/h;->e:Lcn/nubia/b/d;

    new-array v5, v3, [Lcn/nubia/b/m;

    iget-object v6, p0, Lcn/nubia/camera/aimoon/h;->m:Lcn/nubia/b/k;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v1, v5}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aimoon/h$1;

    invoke-direct {v1, p0, p3, p1}, Lcn/nubia/camera/aimoon/h$1;-><init>(Lcn/nubia/camera/aimoon/h;Lcn/nubia/camera/k/u;Lcn/nubia/camera/g/h;)V

    .line 207
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->v()Lcom/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 185
    invoke-virtual {p2, v0, v1, p1}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->C()V

    .line 210
    throw p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p2, 0x2

    const/4 v0, 0x1

    new-array v2, v0, [Lcn/nubia/b/m;

    .line 156
    iget-object v3, p0, Lcn/nubia/camera/aimoon/h;->b:Lcn/nubia/b/k;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, p1, p3, v2}, Lcn/nubia/camera/aimoon/h;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return v0
.end method

.method protected b()V
    .locals 9

    .line 97
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 99
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pictureSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIMoonStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/h;->b:Lcn/nubia/b/k;

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->b:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 106
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/h;->c:Lcn/nubia/b/n;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->b:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->c:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, p0, Lcn/nubia/camera/aimoon/h;->c:Lcn/nubia/b/n;

    const/4 v2, 0x0

    const/high16 v5, 0x10000000

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/aimoon/h;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    .line 113
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/h;->I()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 273
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->z()Lcn/nubia/camera/k/ab;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/j;->a()V

    .line 277
    iput-object v1, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    if-eqz v0, :cond_1

    .line 280
    iget-object v2, p0, Lcn/nubia/camera/aimoon/h;->g:Lcn/nubia/camera/k/ab;

    invoke-virtual {v2, v0}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/m;->c()V

    .line 282
    iput-object v1, p0, Lcn/nubia/camera/aimoon/h;->o:Lcn/nubia/camera/aimoon/m;

    :cond_1
    return-void
.end method

.method protected d()Lcn/nubia/camera/k/ad;
    .locals 9

    .line 288
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->p:Lcn/nubia/camera/aimoon/j;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/j;->b()[I

    move-result-object v0

    .line 289
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->d()Lcn/nubia/camera/k/ad;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 290
    iget v2, p0, Lcn/nubia/camera/aimoon/h;->q:I

    if-nez v2, :cond_1

    .line 291
    sget-boolean v2, Lcn/nubia/camera/aimoon/l;->c:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mainEv evParas: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v6, v0, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "[MoonDebug] AIMoonStreamController"

    invoke-static {v6, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 296
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v5, v0, v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 297
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 298
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method public e()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h;->i:Lcn/nubia/camera/k/y;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->a()Z

    .line 364
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/h;->G()Lcn/nubia/camera/k/b/d;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aimoon/h$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/h$4;-><init>(Lcn/nubia/camera/aimoon/h;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/d;->a(Lcn/nubia/camera/k/b/a;)V

    goto :goto_0

    :cond_0
    const-string v0, "AIMoonStreamController"

    const-string v1, "mParametersSetter uninitialized.."

    .line 379
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
