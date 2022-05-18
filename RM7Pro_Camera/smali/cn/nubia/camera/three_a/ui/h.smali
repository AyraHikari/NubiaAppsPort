.class public Lcn/nubia/camera/three_a/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$c;
.implements Lcn/nubia/camera/three_a/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/h$e;,
        Lcn/nubia/camera/three_a/ui/h$g;,
        Lcn/nubia/camera/three_a/ui/h$d;,
        Lcn/nubia/camera/three_a/ui/h$f;,
        Lcn/nubia/camera/three_a/ui/h$c;,
        Lcn/nubia/camera/three_a/ui/h$b;,
        Lcn/nubia/camera/three_a/ui/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Lcn/nubia/camera/three_a/ui/c;

.field private e:Lcn/nubia/camera/three_a/ui/e;

.field private f:Lcn/nubia/camera/three_a/ui/b;

.field private g:Landroid/content/Context;

.field private h:Lcn/nubia/camera/ad/a;

.field private i:Lcn/nubia/camera/k/ah;

.field private j:Landroid/graphics/Point;

.field private k:Landroid/graphics/Point;

.field private l:Landroid/graphics/Point;

.field private m:Landroid/graphics/Point;

.field private n:Lcn/nubia/camera/three_a/ui/h$g;

.field private o:Lcn/nubia/camera/three_a/ui/h$e;

.field private p:Lcn/nubia/camera/three_a/ui/h$d;

.field private q:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 14

    move-object v9, p0

    move-object/from16 v10, p5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->j:Landroid/graphics/Point;

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    .line 54
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->l:Landroid/graphics/Point;

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    .line 58
    new-instance v0, Lcn/nubia/camera/three_a/ui/h$e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/nubia/camera/three_a/ui/h$e;-><init>(Lcn/nubia/camera/three_a/ui/h;Lcn/nubia/camera/three_a/ui/h$1;)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->o:Lcn/nubia/camera/three_a/ui/h$e;

    .line 60
    new-instance v0, Lcn/nubia/camera/three_a/ui/h$d;

    invoke-direct {v0, p0, v2}, Lcn/nubia/camera/three_a/ui/h$d;-><init>(Lcn/nubia/camera/three_a/ui/h;Lcn/nubia/camera/three_a/ui/h$1;)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->p:Lcn/nubia/camera/three_a/ui/h$d;

    move-object/from16 v11, p2

    .line 135
    iput-object v11, v9, Lcn/nubia/camera/three_a/ui/h;->g:Landroid/content/Context;

    move-object/from16 v12, p4

    .line 136
    iput-object v12, v9, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    .line 137
    iput-object v10, v9, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    .line 138
    invoke-virtual/range {p4 .. p4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->r:Ljava/lang/String;

    .line 139
    iget-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/camera/three_a/a;->a(Landroid/content/Context;)V

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->u()I

    move-result v2

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->v()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->w()I

    move-result v2

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->u()I

    move-result v3

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->v()I

    move-result v4

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->x()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, v9, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 145
    iput-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 146
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v3, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, v0, v1

    .line 148
    new-instance v13, Lcn/nubia/camera/three_a/ui/c;

    iget-object v7, v9, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    iget-object v8, v9, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/three_a/ui/c;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v13, v9, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    .line 149
    new-instance v13, Lcn/nubia/camera/three_a/ui/b;

    iget-object v7, v9, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    iget-object v8, v9, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/three_a/ui/b;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v13, v9, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    .line 150
    new-instance v13, Lcn/nubia/camera/three_a/ui/e;

    iget-object v7, v9, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    iget-object v8, v9, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/three_a/ui/e;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/three_a/ui/a$b;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v13, v9, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    if-eqz v10, :cond_0

    .line 153
    invoke-virtual {v10, p0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$c;)V

    .line 155
    iget-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v10, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 156
    iget-object v0, v9, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v10, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/b;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->r()V

    return-void
.end method

.method private a(Landroid/graphics/Point;)Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/three_a/ui/h;)Lcn/nubia/camera/three_a/ui/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    return-object p0
.end method

.method private b(II)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/three_a/ui/h;)Lcn/nubia/camera/three_a/ui/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    return-object p0
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 286
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/three_a/ui/h;->b(II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 288
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcn/nubia/camera/three_a/a;->f()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcn/nubia/camera/three_a/a;->f()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v0, v4, v5}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcn/nubia/camera/three_a/a;->e()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcn/nubia/camera/three_a/a;->e()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v4}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 296
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/camera/three_a/ui/c;->a(Landroid/view/MotionEvent;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    .line 299
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    invoke-virtual {v1, p1, v2, v4}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/view/MotionEvent;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v1

    .line 300
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v5, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    invoke-virtual {v2, p1, v4, v5}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/view/MotionEvent;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method static synthetic d(Lcn/nubia/camera/three_a/ui/h;)Lcn/nubia/camera/three_a/ui/e;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    return-object p0
.end method

.method private k(Z)V
    .locals 6

    .line 434
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 438
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 442
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 444
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/h;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0, v1, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 447
    :goto_0
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 448
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move v1, v3

    .line 452
    :cond_2
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v4, :cond_3

    .line 453
    array-length v5, v4

    if-lez v5, :cond_3

    aget-object v4, v4, v2

    iget-object v5, p0, Lcn/nubia/camera/three_a/ui/h;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v2, v5, v2

    .line 454
    invoke-virtual {v4, v2}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 455
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move v1, v3

    .line 459
    :cond_3
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 461
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-eqz p1, :cond_5

    if-eqz v3, :cond_5

    .line 466
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    .line 470
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->n:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/h$g;->a()V

    :cond_6
    :goto_2
    return-void
.end method

.method private r()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->z()V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->y()V

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->y()V

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/h;->k(Z)V

    return-void
.end method

.method private s()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->D()V

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->A()V

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->A()V

    const/4 v0, 0x1

    return v0
.end method

.method private t()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->E()V

    .line 475
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->B()V

    .line 476
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->B()V

    return-void
.end method

.method private u()I
    .locals 1

    .line 480
    invoke-static {}, Lcn/nubia/camera/three_a/a;->b()I

    move-result v0

    return v0
.end method

.method private v()I
    .locals 1

    .line 484
    invoke-static {}, Lcn/nubia/camera/three_a/a;->a()I

    move-result v0

    return v0
.end method

.method private w()I
    .locals 1

    .line 488
    invoke-static {}, Lcn/nubia/camera/three_a/a;->d()I

    move-result v0

    return v0
.end method

.method private x()I
    .locals 1

    .line 492
    invoke-static {}, Lcn/nubia/camera/three_a/a;->c()I

    move-result v0

    return v0
.end method

.method private y()Z
    .locals 2

    .line 553
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 554
    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->p:Lcn/nubia/camera/three_a/ui/h$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/h$d;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->a(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    .line 206
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    .line 208
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/c;->c(Landroid/graphics/Rect;)V

    .line 209
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/b;->c(Landroid/graphics/Rect;)V

    .line 210
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/e;->c(Landroid/graphics/Rect;)V

    .line 211
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/c;->b(Landroid/graphics/Rect;)V

    .line 212
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/b;->b(Landroid/graphics/Rect;)V

    .line 213
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/three_a/ui/e;->b(Landroid/graphics/Rect;)V

    .line 215
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p2

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->x()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p2, v0

    .line 216
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->w()I

    move-result v0

    .line 217
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 219
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 221
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {v1, v2, v0, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    .line 224
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p2, p1}, Lcn/nubia/camera/three_a/ui/c;->d(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->r:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->a(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$a;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Lcn/nubia/camera/three_a/ui/h$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$b;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/h$b;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$c;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->a(Lcn/nubia/camera/three_a/ui/h$c;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$f;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Lcn/nubia/camera/three_a/ui/h$f;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/ui/h$g;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->n:Lcn/nubia/camera/three_a/ui/h$g;

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/h$g;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Lcn/nubia/camera/three_a/ui/h$g;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->a(Lcn/nubia/camera/three_a/ui/h$g;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/h;->h()Z

    move-result p1

    .line 517
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->d(Z)V

    .line 518
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->d(Z)V

    .line 519
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->d(Z)V

    return-void
.end method

.method public a([I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->b([I)V

    return-void
.end method

.method public a(II)Z
    .locals 3

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->j:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 231
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->j:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 232
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->j:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/h;->a(Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 234
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->j:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcn/nubia/camera/three_a/a;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 235
    invoke-static {}, Lcn/nubia/camera/three_a/a;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 234
    invoke-static {p2, v0, v1}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 236
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->j:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcn/nubia/camera/three_a/a;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 237
    invoke-static {}, Lcn/nubia/camera/three_a/a;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 236
    invoke-static {p2, v0, v1}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 240
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 241
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 244
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 245
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 248
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->l:Landroid/graphics/Point;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 249
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->l:Landroid/graphics/Point;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 251
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 252
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/c;->a(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 253
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/h;->k:Landroid/graphics/Point;

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->m:Landroid/graphics/Point;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/three_a/ui/e;->a(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/h;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/h;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/h;->g()V

    :cond_1
    return v1
.end method

.method public b()V
    .locals 0

    .line 549
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->t()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->b(I)V

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->b(I)V

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->b(I)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/c;->v()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/b;->v()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/e;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 525
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->b(Z)V

    .line 526
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->b(Z)V

    .line 527
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 0

    .line 539
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->s()Z

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->n:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/h$g;->a(I)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->c(Z)V

    .line 533
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/b;->c(Z)V

    .line 534
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 544
    invoke-direct {p0, v0}, Lcn/nubia/camera/three_a/ui/h;->k(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/c;->h(Z)V

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->n:Lcn/nubia/camera/three_a/ui/h$g;

    invoke-interface {p1}, Lcn/nubia/camera/three_a/ui/h$g;->a()V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/e;->a(Z)V

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/c;->a(ZZ)V

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/b;->a(ZZ)V

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/e;->a(ZZ)V

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 342
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/camera/three_a/ui/h;->b(I)V

    if-nez p1, :cond_1

    .line 344
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->s()Z

    const/4 p1, 0x1

    .line 345
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/h;->k(Z)V

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    .line 176
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    .line 177
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->y()V

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->x()V

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->x()V

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/c;->a(ZZ)V

    if-nez p1, :cond_0

    .line 353
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/h;->s()Z

    const/4 p1, 0x1

    .line 354
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/h;->k(Z)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/c;->a(ZZ)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->C()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i(Z)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/b;->a(ZZ)V

    return-void
.end method

.method public i()Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->u()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 260
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v1}, Lcn/nubia/camera/three_a/ui/c;->u()Z

    move-result v1

    or-int/2addr v0, v1

    .line 261
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v1}, Lcn/nubia/camera/three_a/ui/e;->u()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public j()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->o:Lcn/nubia/camera/three_a/ui/h$e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c$a;)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/three_a/ui/e;->a(ZZ)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->o:Lcn/nubia/camera/three_a/ui/h$e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->v()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->f:Lcn/nubia/camera/three_a/ui/b;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/b;->v()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->e:Lcn/nubia/camera/three_a/ui/e;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/e;->v()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 5

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v2

    .line 419
    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v3

    sget-object v4, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v4}, Lcn/nubia/camera/d/b;->a()I

    move-result v4

    if-lt v3, v4, :cond_1

    sget-object v3, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    if-eq v0, v3, :cond_1

    .line 422
    invoke-static {v1}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-eq v1, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->i:Lcn/nubia/camera/k/ah;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    .line 426
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->F()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/h;->d:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->G()V

    return-void
.end method
