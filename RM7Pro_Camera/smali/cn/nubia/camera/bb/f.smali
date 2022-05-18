.class Lcn/nubia/camera/bb/f;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/bb/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/bb/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/nubia/camera/v/b;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/widget/ImageView;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bb/f;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->e:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->f:Z

    .line 37
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->g:Z

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcn/nubia/camera/bb/f;->h:J

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/bb/f;->b:Lcn/nubia/camera/ad/a;

    .line 55
    iput-object p2, p0, Lcn/nubia/camera/bb/f;->i:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 63
    iget-object p1, p0, Lcn/nubia/camera/bb/f;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(IILandroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 244
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p3
.end method

.method static synthetic a(Lcn/nubia/camera/bb/f;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/bb/f;->e:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/bb/f;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/camera/bb/f;->f:Z

    return p1
.end method

.method private d()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/bb/f;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcn/nubia/camera/v/b;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcn/nubia/camera/v/b$a;->a:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    .line 73
    new-instance v1, Lcn/nubia/camera/bb/f$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/f$1;-><init>(Lcn/nubia/camera/bb/f;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 84
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->h()V

    :cond_0
    return-void
.end method

.method private e()[B
    .locals 11

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->g()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->h()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 189
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->g()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 195
    iget-object v1, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 196
    iget-object v3, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 197
    iget-object v4, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 198
    iget-object v5, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 199
    iget-object v6, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v5

    .line 200
    new-array v6, v6, [B

    move v7, v1

    :goto_0
    if-ge v7, v4, :cond_3

    move v8, v0

    :goto_1
    if-ge v8, v3, :cond_2

    .line 203
    iget-object v9, p0, Lcn/nubia/camera/bb/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v9, v8, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    sub-int v9, v7, v1

    mul-int/2addr v9, v5

    sub-int v10, v8, v0

    add-int/2addr v9, v10

    .line 204
    iget-object v10, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v10}, Lcn/nubia/camera/v/b;->g()I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v8

    aget-byte v10, v2, v10

    aput-byte v10, v6, v9

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method private f()Z
    .locals 4

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 218
    iget-wide v2, p0, Lcn/nubia/camera/bb/f;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/bb/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    .line 250
    iget-object v2, p0, Lcn/nubia/camera/bb/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 251
    iget-object v3, p0, Lcn/nubia/camera/bb/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v0, v0

    int-to-float v2, v2

    const/high16 v4, 0x40c00000    # 6.0f

    div-float v5, v2, v4

    sub-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v1, v1

    int-to-float v3, v3

    div-float v4, v3, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 259
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/bb/f$a;

    .line 265
    invoke-interface {v1}, Lcn/nubia/camera/bb/f$a;->m()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/bb/f$a;

    .line 271
    invoke-interface {v1}, Lcn/nubia/camera/bb/f$a;->n()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/bb/f$a;

    .line 277
    invoke-interface {v1}, Lcn/nubia/camera/bb/f$a;->o()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcn/nubia/camera/bb/f;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->e:Z

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 93
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->i()V

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/f$a;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcn/nubia/camera/bb/f;->g:Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/camera/bb/f;->h:J

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/bb/f;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcn/nubia/camera/bb/f;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->f:Z

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->h()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->f:Z

    .line 112
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->i()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->d()V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcn/nubia/camera/bb/f;->g:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 223
    iget-boolean v0, p0, Lcn/nubia/camera/bb/f;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/bb/f;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr p2, v2

    float-to-int v0, v0

    float-to-int p2, p2

    .line 230
    invoke-direct {p0, v0, p2, p1}, Lcn/nubia/camera/bb/f;->a(IILandroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 231
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 232
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 233
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->g()V

    :cond_2
    :goto_0
    return v1
.end method

.method public run()V
    .locals 9

    .line 132
    invoke-static {}, Lcn/nubia/algorithm/camera/MotionDetector;->init()Z

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->g()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->h()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/bb/f;->k:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/bb/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-wide/16 v0, 0x0

    .line 141
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/camera/bb/f;->e:Z

    if-eqz v2, :cond_5

    .line 143
    iget-boolean v2, p0, Lcn/nubia/camera/bb/f;->f:Z

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    invoke-static {}, Lcn/nubia/algorithm/camera/MotionDetector;->release()V

    .line 147
    iget-object v3, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 148
    invoke-static {}, Lcn/nubia/algorithm/camera/MotionDetector;->init()Z

    .line 149
    iget-boolean v3, p0, Lcn/nubia/camera/bb/f;->e:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 150
    :try_start_1
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 155
    :cond_1
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 159
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long v4, v2, v0

    const-wide/16 v6, 0x64

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    .line 162
    iget-object v8, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    monitor-enter v8

    .line 164
    :try_start_2
    iget-object v2, p0, Lcn/nubia/camera/bb/f;->a:Ljava/lang/Object;

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    .line 166
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 168
    :goto_3
    monitor-exit v8

    goto :goto_0

    .line 169
    :goto_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 175
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->e()[B

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/camera/bb/f;->l:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const v5, 0x3fb9999a    # 1.45f

    .line 175
    invoke-static {v0, v1, v4, v5}, Lcn/nubia/algorithm/camera/MotionDetector;->detectMotion([BIIF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcn/nubia/camera/bb/f;->f:Z

    .line 179
    invoke-direct {p0}, Lcn/nubia/camera/bb/f;->j()V

    :cond_4
    move-wide v0, v2

    goto :goto_0

    .line 182
    :cond_5
    :goto_5
    invoke-static {}, Lcn/nubia/algorithm/camera/MotionDetector;->release()V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/bb/f;->d:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    return-void

    :cond_6
    :goto_6
    const-string v0, "MotionDetectionThread"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRendererRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/f;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MotionDetectionThread"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/bb/f;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
