.class public Lcn/nubia/gallery3d/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/GLView$OnClickListener;
    }
.end annotation


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I = 0x0

.field protected static mGestureLock:Z = false

.field protected static mRendering:Z = false


# instance fields
.field private mAnimation:Lcn/nubia/gallery3d/anim/CanvasAnimation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcn/nubia/gallery3d/ui/GLView;

.field private mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

.field private mViewFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    .line 72
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 73
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mMeasuredHeight:I

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 76
    iput v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 78
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mScrollY:I

    .line 79
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mScrollX:I

    .line 80
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mScrollHeight:I

    .line 81
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private removeOneComponent(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 9

    .line 183
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

    if-ne v0, p1, :cond_0

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 185
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->onDetachFromRoot()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p1, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    return-void
.end method

.method private setBounds(IIII)Z
    .locals 3

    sub-int v0, p3, p1

    .line 371
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    sub-int v0, p4, p2

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 373
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method


# virtual methods
.method public addComponent(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 1

    .line 149
    iget-object v0, p1, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iput-object p0, p1, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    .line 159
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/GLView;->onAttachToRoot(Lcn/nubia/gallery3d/ui/GLRoot;)V

    :cond_1
    return-void

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public attachToRoot(Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 120
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->onAttachToRoot(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 126
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->onDetachFromRoot()V

    return-void
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 327
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/GLView;->mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-nez v8, :cond_0

    .line 329
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 330
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 331
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/GLView;->mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcn/nubia/gallery3d/ui/GLView;Z)Z

    .line 332
    iput-object v10, p0, Lcn/nubia/gallery3d/ui/GLView;->mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    .line 334
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcn/nubia/gallery3d/ui/GLView;Z)Z

    if-eq v8, v11, :cond_1

    if-ne v8, v9, :cond_2

    .line 337
    :cond_1
    iput-object v10, p0, Lcn/nubia/gallery3d/ui/GLView;->mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

    :cond_2
    return v9

    :cond_3
    :goto_0
    if-nez v8, :cond_6

    .line 344
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    sub-int/2addr v1, v9

    move v8, v1

    :goto_1
    if-ltz v8, :cond_6

    .line 345
    invoke-virtual {p0, v8}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v10

    .line 346
    invoke-virtual {v10}, Lcn/nubia/gallery3d/ui/GLView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-object v5, v10

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcn/nubia/gallery3d/ui/GLView;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 348
    iput-object v10, p0, Lcn/nubia/gallery3d/ui/GLView;->mMotionTarget:Lcn/nubia/gallery3d/ui/GLView;

    return v9

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 353
    :cond_6
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcn/nubia/gallery3d/ui/GLView;Z)Z
    .locals 3

    .line 309
    iget-object v0, p4, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 310
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 311
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz p5, :cond_0

    .line 312
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    neg-int p2, v1

    int-to-float p2, p2

    neg-int p3, v2

    int-to-float p3, p3

    .line 313
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 314
    invoke-virtual {p4, p1}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, v1

    int-to-float p3, v2

    .line 315
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    int-to-float p2, v1

    int-to-float p3, v2

    .line 318
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method dumpTree(Ljava/lang/String;)V
    .locals 5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLView"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/ui/GLView;->dumpTree(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    return v0

    .line 424
    :cond_0
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 425
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    .line 426
    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 427
    iget-object v1, v1, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 430
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    .line 429
    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public getComponent(I)Lcn/nubia/gallery3d/ui/GLView;
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/GLView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getComponentCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 408
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 404
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .line 357
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .line 114
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public getWidth()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->requestRender()V

    :cond_0
    return-void
.end method

.method public isRendering()Z
    .locals 1

    .line 499
    sget-boolean v0, Lcn/nubia/gallery3d/ui/GLView;->mRendering:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 6

    .line 361
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/ui/GLView;->setBounds(IIII)Z

    move-result v1

    .line 362
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 367
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/GLView;->onLayout(ZIIII)V

    return-void
.end method

.method public lockRendering()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 459
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 1

    .line 378
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 384
    iput p2, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 386
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    .line 387
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/ui/GLView;->onMeasure(II)V

    .line 388
    iget p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    return-void

    .line 389
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onAttachToRoot(Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 3

    .line 444
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    .line 445
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 446
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/ui/GLView;->onAttachToRoot(Lcn/nubia/gallery3d/ui/GLRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .line 451
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 452
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/GLView;->onDetachFromRoot()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    return-void
.end method

.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 489
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v1

    .line 490
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/GLView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcn/nubia/gallery3d/ui/GLView;->onExtraSmartContent(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onVisibilityChanged(I)V
    .locals 4

    .line 435
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 436
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 438
    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 479
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 480
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/GLView;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseGestureLock()V
    .locals 1

    const/4 v0, 0x0

    .line 503
    sput-boolean v0, Lcn/nubia/gallery3d/ui/GLView;->mGestureLock:Z

    return-void
.end method

.method public removeAllComponents()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/GLView;

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/GLView;->removeOneComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeComponent(Lcn/nubia/gallery3d/ui/GLView;)Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->removeOneComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    const/4 v0, 0x1

    .line 232
    sput-boolean v0, Lcn/nubia/gallery3d/ui/GLView;->mRendering:Z

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->calculate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    .line 237
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 241
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/GLView;->getComponent(I)Lcn/nubia/gallery3d/ui/GLView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {p0, p1, v2}, Lcn/nubia/gallery3d/ui/GLView;->renderChild(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/GLView;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->applyBackground(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    :cond_3
    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    return-void
.end method

.method protected renderChild(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 5

    .line 280
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcn/nubia/gallery3d/ui/GLView;->mAnimation:Lcn/nubia/gallery3d/anim/CanvasAnimation;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p2, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/GLView;->mScrollX:I

    sub-int/2addr v0, v1

    .line 284
    iget-object v1, p2, Lcn/nubia/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/GLView;->mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v2, v0

    int-to-float v3, v1

    .line 286
    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 288
    iget-object v2, p2, Lcn/nubia/gallery3d/ui/GLView;->mAnimation:Lcn/nubia/gallery3d/anim/CanvasAnimation;

    if-eqz v2, :cond_2

    .line 290
    invoke-virtual {v2}, Lcn/nubia/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 291
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/nubia/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 294
    iput-object v3, p2, Lcn/nubia/gallery3d/ui/GLView;->mAnimation:Lcn/nubia/gallery3d/anim/CanvasAnimation;

    .line 296
    :goto_0
    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/anim/CanvasAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 298
    :cond_2
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    if-eqz v2, :cond_3

    .line 299
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_3
    neg-int p2, v0

    int-to-float p2, p2

    neg-int v0, v1

    int-to-float v0, v0

    .line 300
    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 219
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 221
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 222
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIntroAnimation(Lcn/nubia/gallery3d/anim/StateTransitionAnimation;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    if-eqz p1, :cond_0

    .line 258
    new-instance v0, Lcn/nubia/gallery3d/ui/GLView$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/GLView$1;-><init>(Lcn/nubia/gallery3d/ui/GLView;)V

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->setListener(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;)V

    const/4 p1, 0x1

    .line 265
    sput-boolean p1, Lcn/nubia/gallery3d/ui/GLView;->mGestureLock:Z

    .line 266
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->start()V

    :cond_0
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1

    .line 398
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    .line 399
    iput p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 400
    iput p2, p0, Lcn/nubia/gallery3d/ui/GLView;->mMeasuredHeight:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 104
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mViewFlags:I

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void
.end method

.method public startAnimation(Lcn/nubia/gallery3d/anim/CanvasAnimation;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mAnimation:Lcn/nubia/gallery3d/anim/CanvasAnimation;

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcn/nubia/gallery3d/anim/CanvasAnimation;->start()V

    .line 94
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLView;->mAnimation:Lcn/nubia/gallery3d/anim/CanvasAnimation;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/GLRoot;->registerLaunchedAnimation(Lcn/nubia/gallery3d/anim/CanvasAnimation;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLView;->invalidate()V

    return-void

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public stopIntroAnimation()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->forceStop()V

    :cond_0
    return-void
.end method

.method public unlockRendering()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLView;->mRoot:Lcn/nubia/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    :cond_0
    return-void
.end method
