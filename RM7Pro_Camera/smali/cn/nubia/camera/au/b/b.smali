.class public Lcn/nubia/camera/au/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Lcom/android/common/b/l;

.field f:Lcom/android/common/b/m;

.field g:[F

.field h:Lcom/nubia/cosmos/a;

.field i:Lcn/nubia/camera/au/b/a;

.field j:Lcn/nubia/camera/zoom/c;

.field k:Lcn/nubia/camera/ad/a;

.field l:Z

.field m:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/au/b/a;Lcn/nubia/camera/zoom/c;Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->a:Z

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->b:Z

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->c:Z

    .line 31
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->d:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 34
    iput-object v1, p0, Lcn/nubia/camera/au/b/b;->g:[F

    .line 42
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->l:Z

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/au/b/b;->i:Lcn/nubia/camera/au/b/a;

    .line 51
    iput-object p2, p0, Lcn/nubia/camera/au/b/b;->j:Lcn/nubia/camera/zoom/c;

    .line 52
    iput-object p3, p0, Lcn/nubia/camera/au/b/b;->k:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 9

    .line 136
    iget-boolean v0, p0, Lcn/nubia/camera/au/b/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->b:Z

    const-string v1, "StarTrackEstimationRender"

    const-string v2, "init"

    .line 140
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit16 v1, v1, 0x12c

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v1, v2

    .line 143
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x12c

    add-int/lit8 v2, v2, -0xa

    .line 144
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0xa

    .line 145
    new-instance p1, Landroid/graphics/Rect;

    add-int/lit16 v4, v2, 0x12c

    add-int/2addr v1, v3

    invoke-direct {p1, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    .line 146
    new-instance p1, Lcom/android/common/b/l;

    iget-object v1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p1, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object p1, p0, Lcn/nubia/camera/au/b/b;->e:Lcom/android/common/b/l;

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 149
    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->k:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0f012d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    const v3, -0x4c000001

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 149
    invoke-static/range {v1 .. v8}, Lcom/android/common/b/f;->a(Ljava/lang/String;FIIILandroid/graphics/Bitmap;II)Lcom/android/common/b/f;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/au/b/b;->f:Lcom/android/common/b/m;

    .line 152
    new-instance p1, Lcom/nubia/cosmos/a;

    invoke-direct {p1}, Lcom/nubia/cosmos/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    .line 153
    invoke-virtual {p1}, Lcom/nubia/cosmos/a;->a()V

    .line 154
    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    invoke-virtual {p1}, Lcom/nubia/cosmos/a;->b()V

    .line 156
    iget-boolean p1, p0, Lcn/nubia/camera/au/b/b;->l:Z

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    iget-object p2, p0, Lcn/nubia/camera/au/b/b;->e:Lcom/android/common/b/l;

    invoke-virtual {p2}, Lcom/android/common/b/l;->b()I

    move-result p2

    iget-object v1, p0, Lcn/nubia/camera/au/b/b;->e:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->c()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/au/b/b;->e:Lcom/android/common/b/l;

    invoke-virtual {v2}, Lcom/android/common/b/l;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/nubia/cosmos/a;->a(IIIZ)V

    .line 158
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->l:Z

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 167
    iget-boolean v0, p0, Lcn/nubia/camera/au/b/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->b:Z

    const-string v1, "StarTrackEstimationRender"

    const-string v2, "releaseImpl"

    .line 171
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-boolean v1, p0, Lcn/nubia/camera/au/b/b;->l:Z

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    invoke-virtual {v1}, Lcom/nubia/cosmos/a;->d()V

    .line 175
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->l:Z

    .line 177
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    invoke-virtual {v0}, Lcom/nubia/cosmos/a;->c()V

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/au/b/b;->e:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/au/b/b;->f:Lcom/android/common/b/m;

    invoke-virtual {v0}, Lcom/android/common/b/m;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->a:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 13

    .line 63
    iget-boolean v0, p0, Lcn/nubia/camera/au/b/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/au/b/b;->f()V

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0, p2}, Lcn/nubia/camera/au/b/b;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 71
    iget-boolean v2, p0, Lcn/nubia/camera/au/b/b;->c:Z

    if-eqz v2, :cond_1

    return v1

    .line 74
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/camera/au/b/b;->d:Z

    if-eqz v2, :cond_2

    .line 75
    iput-boolean v1, p0, Lcn/nubia/camera/au/b/b;->d:Z

    return v1

    :cond_2
    const/16 v1, 0xe

    new-array v1, v1, [I

    const/16 v2, 0xa

    new-array v12, v2, [F

    .line 82
    iget-object v2, p0, Lcn/nubia/camera/au/b/b;->k:Lcn/nubia/camera/ad/a;

    .line 83
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/au/b/b;->j:Lcn/nubia/camera/zoom/c;

    .line 84
    invoke-virtual {v3}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v3

    .line 82
    invoke-static {v2, v3}, Lcn/nubia/camera/au/i;->a(FF)F

    move-result v10

    .line 85
    iget-object v2, p0, Lcn/nubia/camera/au/b/b;->k:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/al/c;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v7, v2, 0x168

    .line 87
    iget-object v2, p0, Lcn/nubia/camera/au/b/b;->i:Lcn/nubia/camera/au/b/a;

    invoke-virtual {v2}, Lcn/nubia/camera/au/b/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v11, p0, Lcn/nubia/camera/au/b/b;->i:Lcn/nubia/camera/au/b/a;

    move-object v2, v1

    move-object v3, v12

    .line 88
    invoke-static/range {v2 .. v11}, Lcn/nubia/camera/au/i;->a([I[FIIIIIIFLcn/nubia/camera/au/b/a;)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    invoke-virtual {v0, v1, v12}, Lcom/nubia/cosmos/a;->a([I[F)I

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/au/b/b;->h:Lcom/nubia/cosmos/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nubia/cosmos/a;->a(I)V

    .line 97
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    const v0, 0x3f333333    # 0.7f

    .line 98
    invoke-virtual {p2, v0}, Lcom/android/common/b/g;->a(F)V

    const/16 v0, 0xbe2

    .line 100
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 101
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 103
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/au/b/b;->g:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 104
    iget-object v3, p0, Lcn/nubia/camera/au/b/b;->e:Lcom/android/common/b/l;

    iget-object v4, p0, Lcn/nubia/camera/au/b/b;->g:[F

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 105
    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x5

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(IIIIII)V

    .line 107
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 108
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->i:Lcn/nubia/camera/au/b/a;

    invoke-virtual {p1}, Lcn/nubia/camera/au/b/a;->c()Z

    move-result p1

    if-nez p1, :cond_4

    .line 112
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 113
    iget-object p1, p0, Lcn/nubia/camera/au/b/b;->f:Lcom/android/common/b/m;

    iget-object v0, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcn/nubia/camera/au/b/b;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/common/b/m;->a(Lcom/android/common/b/g;II)V

    .line 114
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->d:Z

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcn/nubia/camera/au/b/b;->f()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->c:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcn/nubia/camera/au/b/b;->c:Z

    return-void
.end method
