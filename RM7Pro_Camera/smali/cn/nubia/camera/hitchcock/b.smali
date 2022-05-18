.class public Lcn/nubia/camera/hitchcock/b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/r$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/hitchcock/b$a;
    }
.end annotation


# instance fields
.field a:J

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/hitchcock/c$a;",
            ">;"
        }
    .end annotation
.end field

.field c:[D

.field d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private e:Z

.field private f:Z

.field private g:Lcom/android/common/b/c;

.field private h:Lcom/android/common/b/g;

.field private i:I

.field private j:Lcom/android/common/b/e;

.field private k:Landroid/opengl/EGLSurface;

.field private l:Landroid/os/ConditionVariable;

.field private m:Landroid/graphics/SurfaceTexture;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Lcn/nubia/camera/hitchcock/b$a;

.field private r:Landroid/content/Context;

.field private s:Lcn/nubia/camera/r/s;

.field private t:Landroid/view/Surface;

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/graphics/Rect;

.field private y:F


# direct methods
.method public constructor <init>(Lcn/nubia/camera/r/s;IILandroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/r/s;",
            "II",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/hitchcock/c$a;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->e:Z

    .line 42
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->f:Z

    .line 52
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/b;->l:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, p0, Lcn/nubia/camera/hitchcock/b;->a:J

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->p:Z

    .line 71
    iput v0, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lcn/nubia/camera/hitchcock/b;->y:F

    .line 274
    new-instance v0, Lcn/nubia/camera/hitchcock/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/b$1;-><init>(Lcn/nubia/camera/hitchcock/b;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/b;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/b;->s:Lcn/nubia/camera/r/s;

    .line 86
    invoke-virtual {p1}, Lcn/nubia/camera/r/s;->b()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/b;->t:Landroid/view/Surface;

    .line 87
    iput p2, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    .line 88
    iput p3, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    .line 89
    iput-object p4, p0, Lcn/nubia/camera/hitchcock/b;->r:Landroid/content/Context;

    .line 90
    iput-object p5, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/b;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcn/nubia/camera/hitchcock/b;->p:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 110
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->e:Z

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(F)V
    .locals 0

    .line 94
    iput p1, p0, Lcn/nubia/camera/hitchcock/b;->y:F

    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/b;->m:Landroid/graphics/SurfaceTexture;

    .line 99
    iput p2, p0, Lcn/nubia/camera/hitchcock/b;->n:I

    .line 100
    iput p3, p0, Lcn/nubia/camera/hitchcock/b;->o:I

    .line 101
    iget-object p2, p0, Lcn/nubia/camera/hitchcock/b;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/hitchcock/b$a;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/b;->q:Lcn/nubia/camera/hitchcock/b$a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 266
    monitor-enter p0

    const/4 v0, 0x1

    .line 267
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->f:Z

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b;->l:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 270
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b;->l:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    :catchall_0
    move-exception v0

    .line 270
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    const/4 v0, 0x0

    move v1, v0

    .line 117
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/hitchcock/c$a;

    iget-object v2, v2, Lcn/nubia/camera/hitchcock/c$a;->b:Landroid/graphics/Rect;

    .line 119
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v4, v2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    array-length v1, v1

    const/16 v2, 0x23

    if-le v1, v2, :cond_1

    const-string v1, "EditorThread"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sgSmooth E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    invoke-static {v1}, Lcn/nubia/algorithm/camera/SGSmooth;->sgSmooth([D)V

    const-string v1, "EditorThread"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sgSmooth X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "EditorThread"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "too little data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", no smooth."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 131
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [D

    move v3, v0

    .line 132
    :goto_2
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/hitchcock/c$a;

    iget-object v4, v4, Lcn/nubia/camera/hitchcock/c$a;->b:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v1, v3

    .line 135
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    :cond_2
    invoke-static {v1}, Lcn/nubia/algorithm/camera/SGSmooth;->sgSmooth([D)V

    .line 138
    invoke-static {v2}, Lcn/nubia/algorithm/camera/SGSmooth;->sgSmooth([D)V

    .line 141
    :try_start_0
    new-instance v3, Lcom/android/common/b/c;

    invoke-direct {v3}, Lcom/android/common/b/c;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    .line 142
    new-instance v3, Lcom/android/common/b/g;

    invoke-direct {v3}, Lcom/android/common/b/g;-><init>()V

    iput-object v3, p0, Lcn/nubia/camera/hitchcock/b;->h:Lcom/android/common/b/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/b;->t:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Lcom/android/common/b/c;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/camera/hitchcock/b;->k:Landroid/opengl/EGLSurface;

    .line 149
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    invoke-virtual {v4, v3}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 151
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_4
    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v3

    iput v3, p0, Lcn/nubia/camera/hitchcock/b;->i:I

    .line 155
    new-instance v3, Lcom/android/common/b/e;

    iget v4, p0, Lcn/nubia/camera/hitchcock/b;->i:I

    const v5, 0x8d65

    iget v6, p0, Lcn/nubia/camera/hitchcock/b;->n:I

    iget v7, p0, Lcn/nubia/camera/hitchcock/b;->o:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v3, p0, Lcn/nubia/camera/hitchcock/b;->j:Lcom/android/common/b/e;

    .line 156
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 157
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->m:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcn/nubia/camera/hitchcock/b;->i:I

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const-string v3, "EditorThread"

    const-string v4, "init"

    .line 159
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    :goto_5
    iget-boolean v3, p0, Lcn/nubia/camera/hitchcock/b;->e:Z

    const/4 v4, 0x1

    if-nez v3, :cond_a

    .line 163
    monitor-enter p0

    .line 164
    :try_start_2
    iget-boolean v3, p0, Lcn/nubia/camera/hitchcock/b;->f:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcn/nubia/camera/hitchcock/b;->p:Z

    if-nez v3, :cond_4

    goto/16 :goto_6

    .line 172
    :cond_4
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->f:Z

    .line 173
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/b;->p:Z

    .line 174
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 183
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->h:Lcom/android/common/b/g;

    invoke-virtual {v3}, Lcom/android/common/b/g;->c()V

    .line 185
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->c:[D

    aget-wide v5, v3, v0

    iget v7, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    aget-wide v7, v3, v7

    div-double/2addr v5, v7

    double-to-float v3, v5

    iget v5, p0, Lcn/nubia/camera/hitchcock/b;->y:F

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 186
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v5, "EditorThread"

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v5, Landroid/graphics/Point;

    iget v6, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    aget-wide v7, v1, v6

    double-to-int v7, v7

    aget-wide v8, v2, v6

    double-to-int v6, v8

    invoke-direct {v5, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 190
    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x438

    const/16 v8, 0x780

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 191
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Point;->offset(II)V

    .line 192
    new-instance v7, Landroid/graphics/Point;

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget v9, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v9, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    int-to-float v9, v9

    mul-float/2addr v5, v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v7, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 193
    iget v5, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Point;->offset(II)V

    .line 195
    new-instance v5, Landroid/graphics/Point;

    iget v6, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v7

    invoke-direct {v5, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 197
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    iget v8, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    invoke-direct {v6, v0, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 198
    iget v7, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 199
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v10, v10

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-direct {v7, v8, v9, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    iget v3, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    div-int/lit8 v3, v3, 0x2

    iget v6, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 202
    iget v3, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    div-int/lit8 v3, v3, 0x2

    iget v6, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    div-int/lit8 v6, v6, 0x2

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v5

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 204
    iget v3, v7, Landroid/graphics/Rect;->left:I

    if-lez v3, :cond_5

    .line 205
    iget v3, v7, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    invoke-virtual {v7, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 207
    :cond_5
    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcn/nubia/camera/hitchcock/b;->u:I

    if-ge v3, v5, :cond_6

    .line 208
    iget v3, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    invoke-virtual {v7, v5, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 210
    :cond_6
    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_7

    .line 211
    iget v3, v7, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 213
    :cond_7
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/nubia/camera/hitchcock/b;->v:I

    if-ge v3, v5, :cond_8

    .line 214
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 216
    :cond_8
    iput-object v7, p0, Lcn/nubia/camera/hitchcock/b;->x:Landroid/graphics/Rect;

    .line 217
    iget-object v8, p0, Lcn/nubia/camera/hitchcock/b;->h:Lcom/android/common/b/g;

    iget-object v9, p0, Lcn/nubia/camera/hitchcock/b;->j:Lcom/android/common/b/e;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->x:Landroid/graphics/Rect;

    iget v11, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->x:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->x:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IIII)V

    .line 226
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    iget-object v5, p0, Lcn/nubia/camera/hitchcock/b;->k:Landroid/opengl/EGLSurface;

    iget-object v6, p0, Lcn/nubia/camera/hitchcock/b;->m:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/common/b/c;->a(Landroid/opengl/EGLSurface;J)V

    .line 228
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 229
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    iget-object v5, p0, Lcn/nubia/camera/hitchcock/b;->k:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v5}, Lcom/android/common/b/c;->b(Landroid/opengl/EGLSurface;)V

    const-string v3, "EditorThread"

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draw frame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v3, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    add-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    .line 235
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->l:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 236
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->s:Lcn/nubia/camera/r/s;

    invoke-virtual {v3}, Lcn/nubia/camera/r/s;->d()V

    .line 238
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/b;->q:Lcn/nubia/camera/hitchcock/b$a;

    if-eqz v3, :cond_3

    .line 239
    iget v4, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    invoke-interface {v3, v4}, Lcn/nubia/camera/hitchcock/b$a;->a(I)V

    goto/16 :goto_5

    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 166
    :cond_9
    :goto_6
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v3

    :try_start_5
    const-string v4, "EditorThread"

    const-string v5, "wait error"

    .line 168
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_7
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 174
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_a
    const-string v1, "EditorThread"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/hitchcock/b;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frame in all"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/b;->q:Lcn/nubia/camera/hitchcock/b$a;

    if-eqz v1, :cond_b

    .line 245
    invoke-interface {v1}, Lcn/nubia/camera/hitchcock/b$a;->a()V

    .line 247
    :cond_b
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/b;->s:Lcn/nubia/camera/r/s;

    invoke-virtual {v1}, Lcn/nubia/camera/r/s;->c()V

    const-string v1, "EditorThread"

    const-string v2, "release"

    .line 248
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v4, [I

    .line 250
    iget v2, p0, Lcn/nubia/camera/hitchcock/b;->i:I

    aput v2, v1, v0

    invoke-static {v4, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcn/nubia/camera/hitchcock/b;->j:Lcom/android/common/b/e;

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b;->h:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->b()V

    .line 253
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/b;->k:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/common/b/c;->c(Landroid/opengl/EGLSurface;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/b;->g:Lcom/android/common/b/c;

    invoke-virtual {v0}, Lcom/android/common/b/c;->a()V

    return-void
.end method
