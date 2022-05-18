.class public Lcn/nubia/camera/multiRecord/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/multiRecord/d$a;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/camera/multiRecord/a;

.field b:Lcn/nubia/camera/multiRecord/a;

.field c:Lcn/nubia/camera/multiRecord/a;

.field d:Lcn/nubia/camera/multiRecord/a;

.field e:Lcn/nubia/camera/multiRecord/a;

.field f:Lcn/nubia/camera/multiRecord/a;

.field g:Lcn/nubia/camera/multiRecord/a;

.field h:[Lcn/nubia/camera/multiRecord/a;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Lcom/android/common/b/e;

.field private l:[I

.field private m:I

.field private n:[F

.field private o:Lcn/nubia/camera/multiRecord/c;

.field private p:Lcom/android/common/b/l;

.field private q:Lcom/android/common/b/l;

.field private r:Landroid/content/Context;

.field private s:I

.field private t:[Lcn/nubia/camera/multiRecord/a;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcn/nubia/camera/multiRecord/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/SurfaceTexture;",
            ">;I)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 30
    iput v0, p0, Lcn/nubia/camera/multiRecord/d;->i:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/d;->n:[F

    const/4 v0, 0x6

    .line 58
    iput v0, p0, Lcn/nubia/camera/multiRecord/d;->s:I

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcn/nubia/camera/multiRecord/d;->u:Z

    .line 64
    iput-boolean v1, p0, Lcn/nubia/camera/multiRecord/d;->v:Z

    .line 66
    iput-boolean v1, p0, Lcn/nubia/camera/multiRecord/d;->w:Z

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/d;->r:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    .line 85
    iput p3, p0, Lcn/nubia/camera/multiRecord/d;->i:I

    .line 86
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    .line 87
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    .line 88
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    .line 89
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    .line 90
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    .line 91
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    .line 92
    new-instance p2, Lcn/nubia/camera/multiRecord/a;

    invoke-direct {p2, p1}, Lcn/nubia/camera/multiRecord/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    const/4 p1, 0x7

    new-array p1, p1, [Lcn/nubia/camera/multiRecord/a;

    .line 93
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    aput-object p3, p1, v1

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x1

    aput-object p3, p1, v1

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x2

    aput-object p3, p1, v1

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x3

    aput-object p3, p1, v1

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x4

    aput-object p3, p1, v1

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x5

    aput-object p3, p1, v1

    aput-object p2, p1, v0

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/d;->h:[Lcn/nubia/camera/multiRecord/a;

    return-void
.end method

.method private a(Lcom/android/common/b/g;II)V
    .locals 5

    .line 242
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->u:Z

    .line 246
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/common/b/e;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/d;->k:[Lcom/android/common/b/e;

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/d;->l:[I

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->l:[I

    invoke-static {}, Lcom/android/common/b/h;->a()I

    move-result v2

    aput v2, v1, v0

    .line 250
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->k:[Lcom/android/common/b/e;

    new-instance v2, Lcom/android/common/b/e;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/d;->l:[I

    aget v3, v3, v0

    const v4, 0x8d65

    invoke-direct {v2, v3, v4, p3, p2}, Lcom/android/common/b/e;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 252
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 253
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->l:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSurfaceTexture.get(i) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->l:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GroupRenderer"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    new-instance v0, Lcn/nubia/camera/multiRecord/c;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->r:Landroid/content/Context;

    const/16 v2, 0xde1

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/multiRecord/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/d;->o:Lcn/nubia/camera/multiRecord/c;

    .line 259
    new-instance v0, Lcom/android/common/b/l;

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/d;->q:Lcom/android/common/b/l;

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 261
    new-instance v0, Lcom/android/common/b/l;

    invoke-direct {v0, p3, p2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    .line 262
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/d;->x:Lcn/nubia/camera/multiRecord/d$a;

    if-eqz p1, :cond_2

    .line 265
    invoke-interface {p1}, Lcn/nubia/camera/multiRecord/d$a;->a()V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 4

    .line 226
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->u:Z

    .line 230
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->k:[Lcom/android/common/b/e;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 231
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/common/b/e;->j()V

    .line 232
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->k:[Lcom/android/common/b/e;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->o:Lcn/nubia/camera/multiRecord/c;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/c;->a()V

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->q:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 236
    iput-object v3, p0, Lcn/nubia/camera/multiRecord/d;->q:Lcom/android/common/b/l;

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 238
    iput-object v3, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupRenderer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput p1, p0, Lcn/nubia/camera/multiRecord/d;->s:I

    return-void
.end method

.method public a(Lcn/nubia/camera/multiRecord/d$a;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/d;->x:Lcn/nubia/camera/multiRecord/d$a;

    return-void
.end method

.method public a([Lcn/nubia/camera/multiRecord/a;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/d;->t:[Lcn/nubia/camera/multiRecord/a;

    return-void
.end method

.method public a()Z
    .locals 5

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->t:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 187
    invoke-virtual {v4}, Lcn/nubia/camera/multiRecord/a;->a()Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 9

    .line 104
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->h:[Lcn/nubia/camera/multiRecord/a;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 106
    invoke-virtual {v4, p1, p2}, Lcn/nubia/camera/multiRecord/a;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/d;->j()V

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/android/common/c/f;->p()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/multiRecord/d;->m:I

    .line 113
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/common/b/l;->b()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->c()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-eq v2, v3, :cond_2

    .line 115
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/d;->j()V

    .line 117
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcn/nubia/camera/multiRecord/d;->a(Lcom/android/common/b/g;II)V

    .line 121
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/SurfaceTexture;

    .line 122
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWideAngleSurfaceTexture updateTexImage fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupRenderer"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 130
    iget v2, p0, Lcn/nubia/camera/multiRecord/d;->i:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    .line 131
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->q:Lcom/android/common/b/l;

    invoke-virtual {p2, v2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 132
    invoke-virtual {p2}, Lcom/android/common/b/g;->c()V

    :cond_4
    const/16 v2, 0xbe2

    .line 135
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v4, 0x302

    const/16 v5, 0x303

    .line 136
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 139
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/d;->t:[Lcn/nubia/camera/multiRecord/a;

    if-eqz v4, :cond_5

    .line 140
    array-length v5, v4

    move v6, v1

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v8, v4, v6

    .line 141
    invoke-virtual {v8, p1, p2}, Lcn/nubia/camera/multiRecord/a;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z

    .line 142
    invoke-virtual {v8}, Lcn/nubia/camera/multiRecord/a;->a()Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v7, v1

    :cond_6
    if-eqz v7, :cond_7

    .line 146
    invoke-virtual {p1, v1}, Lcom/android/common/c/f;->a(Z)V

    .line 148
    :cond_7
    iget-boolean v4, p0, Lcn/nubia/camera/multiRecord/d;->w:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    if-nez v7, :cond_9

    .line 149
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/d;->x:Lcn/nubia/camera/multiRecord/d$a;

    if-eqz v4, :cond_8

    .line 150
    invoke-interface {v4}, Lcn/nubia/camera/multiRecord/d$a;->b()V

    .line 152
    :cond_8
    invoke-virtual {p1, v5}, Lcom/android/common/c/f;->a(Z)V

    .line 154
    :cond_9
    iput-boolean v7, p0, Lcn/nubia/camera/multiRecord/d;->w:Z

    .line 156
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 157
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 158
    iget v2, p0, Lcn/nubia/camera/multiRecord/d;->i:I

    if-ge v2, v3, :cond_a

    .line 159
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 161
    :cond_a
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 163
    iget v2, p0, Lcn/nubia/camera/multiRecord/d;->i:I

    if-ge v2, v3, :cond_b

    .line 165
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 166
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    invoke-virtual {p2, v2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 167
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v2}, Lcom/android/common/b/l;->b()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->c()I

    move-result v3

    invoke-static {v1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 168
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/d;->n:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 170
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/d;->n:[F

    invoke-static {v2, v1, v3, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 171
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->o:Lcn/nubia/camera/multiRecord/c;

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    invoke-virtual {v1, v3, v4, v6, v0}, Lcn/nubia/camera/multiRecord/c;->a(FFFF)V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->o:Lcn/nubia/camera/multiRecord/c;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/d;->q:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/multiRecord/c;->a([FI)V

    .line 173
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 174
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 176
    iget-object p2, p0, Lcn/nubia/camera/multiRecord/d;->p:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    :cond_b
    return v5
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

    .line 208
    iget v0, p0, Lcn/nubia/camera/multiRecord/d;->i:I

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 4

    .line 199
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/d;->j()V

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->h:[Lcn/nubia/camera/multiRecord/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 202
    invoke-virtual {v3, p1, p2}, Lcn/nubia/camera/multiRecord/a;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->v:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 222
    iget v0, p0, Lcn/nubia/camera/multiRecord/d;->s:I

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()[I
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/d;->l:[I

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 278
    iget v0, p0, Lcn/nubia/camera/multiRecord/d;->m:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/d;->u:Z

    return v0
.end method
