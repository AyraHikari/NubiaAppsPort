.class public Lcn/nubia/camera/n/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/c$a;
.implements Lcom/android/common/c/f$a;


# static fields
.field private static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:[F

.field private d:[F

.field private e:[F

.field private f:Ljava/nio/FloatBuffer;

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private j:Lcom/android/common/a/c;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/android/common/b/l;

.field private p:Lcom/android/common/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FunEffectRenderer"

    const/4 v1, 0x3

    .line 31
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/n/g;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 34
    iput-object v1, p0, Lcn/nubia/camera/n/g;->c:[F

    new-array v1, v0, [F

    .line 35
    iput-object v1, p0, Lcn/nubia/camera/n/g;->d:[F

    new-array v0, v0, [F

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/n/g;->e:[F

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/nubia/camera/n/g;->g:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/n/g;->h:Ljava/lang/Object;

    const-string v0, "none"

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/n/g;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/n/g;->j:Lcom/android/common/a/c;

    const v1, 0x8d65

    .line 42
    iput v1, p0, Lcn/nubia/camera/n/g;->k:I

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcn/nubia/camera/n/g;->l:I

    .line 50
    iput v1, p0, Lcn/nubia/camera/n/g;->m:I

    .line 52
    iput-boolean v1, p0, Lcn/nubia/camera/n/g;->n:Z

    .line 54
    iput-object v0, p0, Lcn/nubia/camera/n/g;->o:Lcom/android/common/b/l;

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/n/g;->b:Landroid/content/Context;

    const/16 p1, 0x14

    new-array p1, p1, [F

    .line 59
    fill-array-data p1, :array_0

    const/16 v0, 0x50

    .line 67
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/n/g;->f:Ljava/nio/FloatBuffer;

    .line 69
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iget-object p1, p0, Lcn/nubia/camera/n/g;->c:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    iget-object p1, p0, Lcn/nubia/camera/n/g;->e:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 75
    invoke-virtual {p0, p2}, Lcn/nubia/camera/n/g;->a(Ljava/lang/String;)V

    return-void

    :array_0
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

.method private a(Lcom/android/common/c/f;Ljava/lang/String;II)Lcom/android/common/a/c;
    .locals 1

    .line 197
    invoke-virtual {p1}, Lcom/android/common/c/f;->u()Lcom/android/common/a/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/n/g;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/common/a/b;->a(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/common/a/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/n/g;->j:Lcom/android/common/a/c;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    .line 205
    invoke-virtual {v0, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    .line 207
    invoke-virtual {p2}, Lcom/android/common/b/l;->c()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 208
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/common/b/l;->c(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 3

    .line 167
    iget-boolean v0, p0, Lcn/nubia/camera/n/g;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/n/g;->j:Lcom/android/common/a/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/common/a/c;->a()I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/n/g;->k:I

    if-eq v0, v1, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/g;->i:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/camera/n/g;->k:I

    iget v2, p0, Lcn/nubia/camera/n/g;->l:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/nubia/camera/n/g;->a(Lcom/android/common/c/f;Ljava/lang/String;II)Lcom/android/common/a/c;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/n/g;->j:Lcom/android/common/a/c;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcn/nubia/camera/n/g;->g:Z

    :cond_1
    return-void
.end method

.method private a(Lcom/android/common/c/f;Lcom/android/common/b/g;IIII)V
    .locals 15

    move-object v0, p0

    .line 152
    iget-object v1, v0, Lcn/nubia/camera/n/g;->j:Lcom/android/common/a/c;

    if-eqz v1, :cond_3

    .line 153
    instance-of v2, v1, Lcom/android/common/a/a;

    if-eqz v2, :cond_1

    .line 154
    iget v2, v0, Lcn/nubia/camera/n/g;->l:I

    iget v3, v0, Lcn/nubia/camera/n/g;->m:I

    if-eq v2, v3, :cond_0

    .line 155
    iput v3, v0, Lcn/nubia/camera/n/g;->l:I

    .line 157
    :cond_0
    check-cast v1, Lcom/android/common/a/a;

    iget v2, v0, Lcn/nubia/camera/n/g;->l:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/common/a/a;->a(IZ)V

    .line 160
    :cond_1
    iget-object v4, v0, Lcn/nubia/camera/n/g;->j:Lcom/android/common/a/c;

    iget-object v5, v0, Lcn/nubia/camera/n/g;->d:[F

    iget-object v6, v0, Lcn/nubia/camera/n/g;->c:[F

    iget-object v7, v0, Lcn/nubia/camera/n/g;->f:Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcn/nubia/camera/n/g;->o:Lcom/android/common/b/l;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v1

    :goto_0
    move-object v12, v1

    iget-object v13, v0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    move/from16 v11, p5

    move-object/from16 v14, p2

    .line 160
    invoke-interface/range {v4 .. v14}, Lcom/android/common/a/c;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 162
    iget-object v1, v0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 174
    sget-boolean v0, Lcn/nubia/camera/n/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FunEffectRenderer"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcn/nubia/camera/n/g;->p:Lcom/android/common/b/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/android/common/b/l;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/n/g;->o:Lcom/android/common/b/l;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcn/nubia/camera/n/g;->m:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/n/g;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug, changeEffectID, effectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/n/g;->b(Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcn/nubia/camera/n/g;->i:Ljava/lang/String;

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcn/nubia/camera/n/g;->g:Z

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 10

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/n/g;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/n/g;->n:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p2, "FunEffectRenderer"

    const-string v1, "release"

    .line 118
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcn/nubia/camera/n/g;->e()V

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 121
    monitor-exit v0

    return v2

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0xde1

    goto :goto_0

    :cond_1
    const v1, 0x8d65

    :goto_0
    iput v1, p0, Lcn/nubia/camera/n/g;->k:I

    .line 125
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/n/g;->o:Lcom/android/common/b/l;

    .line 127
    invoke-direct {p0, p1}, Lcn/nubia/camera/n/g;->a(Lcom/android/common/c/f;)V

    .line 128
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcn/nubia/camera/n/g;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    .line 130
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 133
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 130
    invoke-direct/range {v3 .. v9}, Lcn/nubia/camera/n/g;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;IIII)V

    .line 136
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

    const/4 v0, 0x5

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 4

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/c/f;->getId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "FunEffectRenderer"

    const-string v0, "onRelease"

    .line 184
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcn/nubia/camera/n/g;->e()V

    .line 187
    iget-object p2, p0, Lcn/nubia/camera/n/g;->h:Ljava/lang/Object;

    monitor-enter p2

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/n/g;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/common/c/f;->a(Z)V

    .line 190
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcn/nubia/camera/n/g;->n:Z

    .line 193
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/n/g;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 100
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/n/g;->n:Z

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
