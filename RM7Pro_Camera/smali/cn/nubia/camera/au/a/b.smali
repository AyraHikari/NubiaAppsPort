.class public Lcn/nubia/camera/au/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/a/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/android/common/b/l;

.field d:[F

.field e:Lcom/nubia/cosmos/a;

.field f:[B

.field g:[B

.field h:I

.field i:I

.field j:[I

.field k:[F

.field l:Z

.field m:I

.field n:I

.field o:I

.field p:I

.field q:Z

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field s:J

.field private t:Lcn/nubia/camera/au/k;

.field private u:Z

.field private v:Lcn/nubia/camera/au/a/b$a;


# direct methods
.method public constructor <init>([B[BII[I[FZLcn/nubia/camera/au/a/b$a;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->a:Z

    .line 25
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->b:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 27
    iput-object v1, p0, Lcn/nubia/camera/au/a/b;->d:[F

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcn/nubia/camera/au/a/b;->o:I

    .line 39
    iput v0, p0, Lcn/nubia/camera/au/a/b;->p:I

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->q:Z

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/au/a/b;->r:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lcn/nubia/camera/au/a/b;->s:J

    .line 47
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->u:Z

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/au/a/b;->f:[B

    .line 59
    iput-object p2, p0, Lcn/nubia/camera/au/a/b;->g:[B

    .line 60
    iput p3, p0, Lcn/nubia/camera/au/a/b;->h:I

    .line 61
    iput p4, p0, Lcn/nubia/camera/au/a/b;->i:I

    .line 62
    iput-object p5, p0, Lcn/nubia/camera/au/a/b;->j:[I

    .line 63
    iput-object p6, p0, Lcn/nubia/camera/au/a/b;->k:[F

    .line 64
    iput-boolean p7, p0, Lcn/nubia/camera/au/a/b;->l:Z

    .line 65
    iput-object p8, p0, Lcn/nubia/camera/au/a/b;->v:Lcn/nubia/camera/au/a/b$a;

    .line 66
    aget p1, p5, v0

    iput p1, p0, Lcn/nubia/camera/au/a/b;->m:I

    const/4 p1, 0x1

    .line 67
    aget p1, p5, p1

    iput p1, p0, Lcn/nubia/camera/au/a/b;->n:I

    return-void
.end method

.method private a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcn/nubia/camera/au/a/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->b:Z

    const-string v0, "StarTrackEffectRender"

    const-string v1, "init"

    .line 153
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    .line 156
    invoke-virtual {v0, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 158
    new-instance p1, Lcom/nubia/cosmos/a;

    invoke-direct {p1}, Lcom/nubia/cosmos/a;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    .line 159
    invoke-virtual {p1}, Lcom/nubia/cosmos/a;->a()V

    .line 160
    iget-object p1, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    invoke-virtual {p1}, Lcom/nubia/cosmos/a;->b()V

    .line 161
    iget-object p1, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    iget-object p2, p0, Lcn/nubia/camera/au/a/b;->j:[I

    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->k:[F

    invoke-virtual {p1, p2, v0}, Lcom/nubia/cosmos/a;->a([I[F)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/au/a/b;->o:I

    .line 163
    iget p1, p0, Lcn/nubia/camera/au/a/b;->m:I

    iget p2, p0, Lcn/nubia/camera/au/a/b;->n:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcn/nubia/camera/au/a/b;->f:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    iget-object p2, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    iget v0, p0, Lcn/nubia/camera/au/a/b;->m:I

    iget v1, p0, Lcn/nubia/camera/au/a/b;->n:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/nubia/cosmos/a;->a(IILjava/nio/ByteBuffer;)V

    .line 169
    iget p1, p0, Lcn/nubia/camera/au/a/b;->m:I

    iget p2, p0, Lcn/nubia/camera/au/a/b;->n:I

    mul-int/2addr p1, p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcn/nubia/camera/au/a/b;->g:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    iget-object p2, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    iget v0, p0, Lcn/nubia/camera/au/a/b;->h:I

    iget v1, p0, Lcn/nubia/camera/au/a/b;->i:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/nubia/cosmos/a;->b(IILjava/nio/ByteBuffer;)V

    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcn/nubia/camera/au/a/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->b:Z

    const-string v1, "StarTrackEffectRender"

    const-string v2, "releaseImpl"

    .line 184
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    invoke-virtual {v1}, Lcom/android/common/b/l;->j()V

    .line 187
    iget-boolean v1, p0, Lcn/nubia/camera/au/a/b;->q:Z

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    invoke-virtual {v1}, Lcom/nubia/cosmos/a;->d()V

    const/4 v1, 0x1

    .line 189
    invoke-virtual {p1, v1}, Lcom/android/common/c/f;->a(Z)V

    .line 190
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->q:Z

    .line 192
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    invoke-virtual {p1}, Lcom/nubia/cosmos/a;->c()V

    .line 194
    iget-object p1, p0, Lcn/nubia/camera/au/a/b;->t:Lcn/nubia/camera/au/k;

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Lcn/nubia/camera/au/k;->a()V

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcn/nubia/camera/au/a/b;->t:Lcn/nubia/camera/au/k;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->a:Z

    return-void
.end method

.method public a(Landroid/view/Surface;III)V
    .locals 1

    .line 201
    new-instance v0, Lcn/nubia/camera/au/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/nubia/camera/au/k;-><init>(Landroid/view/Surface;III)V

    iput-object v0, p0, Lcn/nubia/camera/au/a/b;->t:Lcn/nubia/camera/au/k;

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 7

    .line 78
    iget-boolean v0, p0, Lcn/nubia/camera/au/a/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a/b;->a(Lcom/android/common/c/f;)V

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    return v1

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0, p2}, Lcn/nubia/camera/au/a/b;->a(Landroid/graphics/Rect;Lcom/android/common/b/g;)V

    .line 85
    iget-boolean v0, p0, Lcn/nubia/camera/au/a/b;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    iget-object v3, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    invoke-virtual {v3}, Lcom/android/common/b/l;->b()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    invoke-virtual {v4}, Lcom/android/common/b/l;->c()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    invoke-virtual {v5}, Lcom/android/common/b/l;->a()I

    move-result v5

    iget-boolean v6, p0, Lcn/nubia/camera/au/a/b;->l:Z

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/nubia/cosmos/a;->a(IIIZ)V

    .line 87
    iput-boolean v2, p0, Lcn/nubia/camera/au/a/b;->q:Z

    .line 88
    invoke-virtual {p1, v1}, Lcom/android/common/c/f;->a(Z)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->v:Lcn/nubia/camera/au/a/b$a;

    if-eqz v0, :cond_1

    .line 90
    iget v3, p0, Lcn/nubia/camera/au/a/b;->o:I

    invoke-interface {v0, v1, v3}, Lcn/nubia/camera/au/a/b$a;->a(II)V

    .line 93
    :cond_1
    iget v0, p0, Lcn/nubia/camera/au/a/b;->p:I

    iget v3, p0, Lcn/nubia/camera/au/a/b;->o:I

    if-ge v0, v3, :cond_2

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    invoke-virtual {v1, v0}, Lcom/nubia/cosmos/a;->a(I)V

    .line 95
    iget v0, p0, Lcn/nubia/camera/au/a/b;->p:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/au/a/b;->p:I

    .line 96
    iget-object v1, p0, Lcn/nubia/camera/au/a/b;->v:Lcn/nubia/camera/au/a/b$a;

    if-eqz v1, :cond_5

    .line 97
    iget v3, p0, Lcn/nubia/camera/au/a/b;->o:I

    invoke-interface {v1, v0, v3}, Lcn/nubia/camera/au/a/b$a;->a(II)V

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    invoke-virtual {v0}, Lcom/nubia/cosmos/a;->d()V

    .line 102
    iput-boolean v1, p0, Lcn/nubia/camera/au/a/b;->q:Z

    .line 103
    invoke-virtual {p1, v2}, Lcom/android/common/c/f;->a(Z)V

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->r:Ljava/util/ArrayList;

    iget v3, p0, Lcn/nubia/camera/au/a/b;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 106
    iget v0, p0, Lcn/nubia/camera/au/a/b;->m:I

    iget v3, p0, Lcn/nubia/camera/au/a/b;->n:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    iget-object v3, p0, Lcn/nubia/camera/au/a/b;->e:Lcom/nubia/cosmos/a;

    iget-boolean v4, p0, Lcn/nubia/camera/au/a/b;->l:Z

    iget-object v5, p0, Lcn/nubia/camera/au/a/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/nubia/cosmos/a;->a(Landroid/graphics/Bitmap;ZI)V

    .line 108
    iget-object v3, p0, Lcn/nubia/camera/au/a/b;->v:Lcn/nubia/camera/au/a/b$a;

    if-eqz v3, :cond_3

    .line 109
    invoke-interface {v3, v0}, Lcn/nubia/camera/au/a/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->v:Lcn/nubia/camera/au/a/b$a;

    if-eqz v0, :cond_5

    .line 113
    invoke-interface {v0}, Lcn/nubia/camera/au/a/b$a;->a()V

    .line 117
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->t:Lcn/nubia/camera/au/k;

    if-eqz v0, :cond_7

    .line 118
    iget-boolean v1, p0, Lcn/nubia/camera/au/a/b;->u:Z

    if-eqz v1, :cond_6

    .line 119
    invoke-virtual {v0}, Lcn/nubia/camera/au/k;->a()V

    const/4 p2, 0x0

    .line 120
    iput-object p2, p0, Lcn/nubia/camera/au/a/b;->t:Lcn/nubia/camera/au/k;

    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a/b;->d:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->t:Lcn/nubia/camera/au/k;

    iget-object v1, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    iget-object v3, p0, Lcn/nubia/camera/au/a/b;->d:[F

    invoke-virtual {v0, p1, p2, v1, v3}, Lcn/nubia/camera/au/k;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/l;[F)V

    .line 129
    :cond_7
    :goto_2
    iget-object p2, p0, Lcn/nubia/camera/au/a/b;->c:Lcom/android/common/b/l;

    invoke-virtual {p1, p2}, Lcom/android/common/c/f;->a(Lcom/android/common/b/l;)V

    return v2
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

    const/16 v0, 0x9

    return v0
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/camera/au/a/b;->a(Lcom/android/common/c/f;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcn/nubia/camera/au/a/b;->u:Z

    return-void
.end method

.method public e()V
    .locals 6

    .line 209
    iget-boolean v0, p0, Lcn/nubia/camera/au/a/b;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    iget-wide v2, p0, Lcn/nubia/camera/au/a/b;->s:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 216
    :cond_1
    iput-wide v0, p0, Lcn/nubia/camera/au/a/b;->s:J

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/au/a/b;->r:Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/camera/au/a/b;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
