.class public Lcn/nubia/camera/ag/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# static fields
.field public static final a:[F

.field public static final b:[F


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Ljava/nio/FloatBuffer;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:[I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Ljava/nio/IntBuffer;

.field private w:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 31
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/camera/ag/b;->a:[F

    new-array v0, v0, [F

    .line 32
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/ag/b;->b:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ag/b;->d:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 37
    iput-object v1, p0, Lcn/nubia/camera/ag/b;->h:[F

    new-array v0, v0, [F

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/ag/b;->i:[F

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcn/nubia/camera/ag/b;->j:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 42
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/ag/b;->l:[I

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcn/nubia/camera/ag/b;->m:Z

    .line 50
    iput-boolean v0, p0, Lcn/nubia/camera/ag/b;->t:Z

    .line 190
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/ag/b;->v:Ljava/nio/IntBuffer;

    .line 191
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ag/b;->w:Ljava/nio/IntBuffer;

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/ag/b;->c:Landroid/content/Context;

    const/16 p1, 0x14

    new-array p1, p1, [F

    .line 54
    fill-array-data p1, :array_1

    const/16 v0, 0x50

    .line 62
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ag/b;->g:Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d()Z
    .locals 5

    .line 147
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->c:Landroid/content/Context;

    const v2, 0x7f0e002d

    .line 149
    invoke-static {v0, v2}, Lcom/android/common/b/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/ag/b;->c:Landroid/content/Context;

    const v3, 0x7f0e002c

    iget v4, p0, Lcn/nubia/camera/ag/b;->f:I

    .line 150
    invoke-static {v2, v3, v4}, Lcom/android/common/b/n;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v0, v2}, Lcom/android/common/b/n;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ag/b;->l:[I

    const/4 v2, 0x0

    .line 151
    aget v3, v0, v2

    aget v0, v0, v1

    invoke-static {v3, v0}, Lcom/android/common/b/n;->a(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->k:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string v2, "aPosition"

    .line 155
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->n:I

    .line 156
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->o:I

    .line 157
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->q:I

    .line 158
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->r:I

    .line 159
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    const-string v2, "v4Color"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->s:I

    .line 160
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    const-string v2, "sTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ag/b;->p:I

    :cond_1
    return v1
.end method

.method private e()V
    .locals 2

    const/16 v0, 0xbe2

    .line 194
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/ag/b;->u:Z

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->v:Ljava/nio/IntBuffer;

    const v1, 0x80cb

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->w:Ljava/nio/IntBuffer;

    const v1, 0x80ca

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lcn/nubia/camera/ag/b;->u:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 205
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->v:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v2, p0, Lcn/nubia/camera/ag/b;->w:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 209
    iget v0, p0, Lcn/nubia/camera/ag/b;->k:I

    if-eqz v0, :cond_0

    .line 210
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->l:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->l:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/ag/b;->l:[I

    aput v1, v0, v2

    aput v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/ag/b;->k:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcn/nubia/camera/ag/b;->m:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcn/nubia/camera/ag/b;->j:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcn/nubia/camera/ag/b;->t:Z

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 9

    .line 74
    iget-boolean p2, p0, Lcn/nubia/camera/ag/b;->m:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/ag/b;->g()V

    .line 76
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/b/l;->f()I

    move-result p2

    .line 82
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/b/l;->a()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ag/b;->e:I

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/b/e;->f()I

    move-result p2

    .line 86
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/b/e;->a()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/ag/b;->e:I

    .line 89
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/ag/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget v2, p0, Lcn/nubia/camera/ag/b;->f:I

    if-eq v2, p2, :cond_2

    .line 91
    invoke-direct {p0}, Lcn/nubia/camera/ag/b;->g()V

    .line 93
    :cond_2
    iput p2, p0, Lcn/nubia/camera/ag/b;->f:I

    .line 95
    invoke-direct {p0}, Lcn/nubia/camera/ag/b;->d()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "FengZhiRenderColor"

    const-string p2, "init shader program fail"

    .line 96
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v1

    return v0

    .line 99
    :cond_3
    iget-boolean p2, p0, Lcn/nubia/camera/ag/b;->t:Z

    if-nez p2, :cond_4

    .line 100
    monitor-exit v1

    return v0

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 104
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 103
    invoke-static {p2, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 106
    iget p2, p0, Lcn/nubia/camera/ag/b;->k:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 108
    invoke-direct {p0}, Lcn/nubia/camera/ag/b;->e()V

    const/16 p2, 0xbe2

    .line 110
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p2, 0x302

    const/16 v2, 0x303

    .line 111
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const p2, 0x84c0

    .line 113
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 114
    iget p2, p0, Lcn/nubia/camera/ag/b;->f:I

    iget v2, p0, Lcn/nubia/camera/ag/b;->e:I

    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 115
    iget p2, p0, Lcn/nubia/camera/ag/b;->p:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 117
    iget-object p2, p0, Lcn/nubia/camera/ag/b;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget v2, p0, Lcn/nubia/camera/ag/b;->n:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    iget-object v7, p0, Lcn/nubia/camera/ag/b;->g:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 120
    iget p2, p0, Lcn/nubia/camera/ag/b;->n:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 122
    iget-object p2, p0, Lcn/nubia/camera/ag/b;->g:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    iget v3, p0, Lcn/nubia/camera/ag/b;->o:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    iget-object v8, p0, Lcn/nubia/camera/ag/b;->g:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 125
    iget p2, p0, Lcn/nubia/camera/ag/b;->o:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    iget-object p2, p0, Lcn/nubia/camera/ag/b;->i:[F

    invoke-static {p2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 128
    iget p2, p0, Lcn/nubia/camera/ag/b;->q:I

    iget-object v2, p0, Lcn/nubia/camera/ag/b;->i:[F

    const/4 v3, 0x1

    invoke-static {p2, v3, v0, v2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 129
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/ag/b;->h:[F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 130
    iget p1, p0, Lcn/nubia/camera/ag/b;->r:I

    iget-object p2, p0, Lcn/nubia/camera/ag/b;->h:[F

    invoke-static {p1, v3, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 132
    iget p1, p0, Lcn/nubia/camera/ag/b;->j:I

    if-ne p1, v3, :cond_5

    .line 133
    iget p1, p0, Lcn/nubia/camera/ag/b;->s:I

    sget-object p2, Lcn/nubia/camera/ag/b;->a:[F

    invoke-static {p1, v3, p2, v0}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_1

    .line 135
    :cond_5
    iget p1, p0, Lcn/nubia/camera/ag/b;->s:I

    sget-object p2, Lcn/nubia/camera/ag/b;->b:[F

    invoke-static {p1, v3, p2, v0}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    :goto_1
    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 137
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 139
    invoke-direct {p0}, Lcn/nubia/camera/ag/b;->f()V

    .line 140
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v1
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

    const/16 v0, 0x14

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcn/nubia/camera/ag/b;->g()V

    return-void
.end method
