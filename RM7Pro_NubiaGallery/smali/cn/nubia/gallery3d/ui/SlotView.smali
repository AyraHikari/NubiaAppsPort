.class public Lcn/nubia/gallery3d/ui/SlotView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;,
        Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;,
        Lcn/nubia/gallery3d/ui/SlotView$ScatteringAnimation;,
        Lcn/nubia/gallery3d/ui/SlotView$RisingAnimation;,
        Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;,
        Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;,
        Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;,
        Lcn/nubia/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# static fields
.field protected static final INDEX_NONE:I = -0x1

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlotView"


# instance fields
.field protected WIDE:Z

.field private mAnimation:Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;

.field protected mClusterHeader:Lcn/nubia/gallery3d/ui/ClusterHeader;

.field protected mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInitDone:Z

.field protected mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

.field public mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field protected mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

.field public mOverscrollEffect:I

.field protected mPaper:Lcn/nubia/gallery3d/ui/Paper;

.field protected mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field protected final mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field protected mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    .line 114
    new-instance v1, Lcn/nubia/gallery3d/ui/Paper;

    invoke-direct {v1}, Lcn/nubia/gallery3d/ui/Paper;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    .line 119
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMoreAnimation:Z

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mAnimation:Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;

    const/4 v2, -0x1

    .line 122
    iput v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mStartIndex:I

    const/4 v2, 0x2

    .line 126
    iput v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mOverscrollEffect:I

    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 131
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 138
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 142
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    .line 144
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mInitDone:Z

    .line 147
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v2, p0, v1}, Lcn/nubia/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 148
    new-instance v0, Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    .line 149
    new-instance v1, Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v1, Lcn/nubia/gallery3d/ui/ClusterHeader;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcn/nubia/gallery3d/ui/ClusterHeader;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mClusterHeader:Lcn/nubia/gallery3d/ui/ClusterHeader;

    .line 151
    new-instance p1, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mOverscrollEffect:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;-><init>(Lcn/nubia/gallery3d/ui/ScrollerHelper;ILcn/nubia/gallery3d/ui/Paper;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    return-void
.end method

.method private drawHeader(Lcn/nubia/gallery3d/glrenderer/GLCanvas;[ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/glrenderer/GLCanvas;",
            "[I",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 413
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 414
    aget v1, p2, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mClusterHeader:Lcn/nubia/gallery3d/ui/ClusterHeader;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;

    iget v3, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v1, p1, v3, v4}, Lcn/nubia/gallery3d/ui/ClusterHeader;->drawHeader(Lcn/nubia/gallery3d/data/NubiaClustering$Cluster;Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method private static expandIntArray([II)[I
    .locals 1

    .line 312
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 313
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private renderItem(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIZ)I
    .locals 7

    const/4 v0, 0x3

    .line 429
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 430
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 432
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    iget-boolean v1, v1, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {p4, v0, v1}, Lcn/nubia/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object p4

    const/4 v1, 0x0

    invoke-interface {p1, p4, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    goto :goto_1

    .line 434
    :cond_1
    iget p4, v0, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, p4, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 436
    :goto_1
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mAnimation:Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->isActive()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 437
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mAnimation:Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {p4, p1, p2, v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 439
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    iget p4, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, p4, v2

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, p4, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)I

    move-result p2

    .line 441
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return p2
.end method


# virtual methods
.method public addComponent(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 0

    .line 210
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public enterSelectionAllMode()V
    .locals 1

    .line 742
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    invoke-virtual {v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->selectAll()V

    return-void
.end method

.method public forceStopScrolling()V
    .locals 1

    .line 724
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->forceFinished()V

    const/4 v0, 0x0

    .line 727
    sput-boolean v0, Lcn/nubia/gallery3d/ui/SlotView;->mRendering:Z

    :cond_0
    return-void
.end method

.method public freeHeaderTexture()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mClusterHeader:Lcn/nubia/gallery3d/ui/ClusterHeader;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/ClusterHeader;->clearTexture()V

    return-void
.end method

.method public getScrollX()I
    .locals 1

    .line 631
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 635
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2

    .line 275
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSlotRect(ILcn/nubia/gallery3d/ui/GLView;)Landroid/graphics/Rect;
    .locals 2

    .line 640
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 641
    invoke-virtual {p2, p0, v0}, Lcn/nubia/gallery3d/ui/GLView;->getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 642
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 643
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollX()I

    move-result v1

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 644
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 643
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method public getVisibleEnd()I
    .locals 1

    .line 627
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .line 623
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public leaveSelectionAllMode()V
    .locals 0

    .line 746
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->leaveSelectionMode()V

    return-void
.end method

.method public leaveSelectionMode()V
    .locals 1

    .line 736
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->resetCache()V

    :cond_0
    return-void
.end method

.method public makeSlotVisible(I)V
    .locals 6

    .line 181
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->initDone()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mInitDone:Z

    .line 183
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 184
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    .line 185
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getHeight()I

    move-result v2

    :goto_1
    add-int v3, v1, v2

    .line 187
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 188
    :goto_2
    iget-boolean v5, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v5, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v5, v0, v4

    if-ge v2, v5, :cond_4

    goto :goto_4

    :cond_4
    if-ge v4, v1, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    if-le v0, v3, :cond_6

    sub-int v1, v0, v2

    .line 197
    :cond_6
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeSlotVisible index jis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", position is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SlotView"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setScrollPosition(I)V

    :cond_7
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 720
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->onContentChanged()V

    return-void
.end method

.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 3

    .line 689
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotIndexByPosition(FF)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 691
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0, p2}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 694
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p2

    .line 695
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 696
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const/4 v2, 0x0

    .line 695
    invoke-static {v0, v1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 697
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 698
    invoke-static {v0, p2}, Lcn/nubia/improve/ApiHelper;->putSmartShowExtra(Landroid/content/Intent;Landroid/graphics/Bitmap;)V

    const-string p2, "intentImage"

    .line 699
    invoke-static {p2, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p2

    .line 700
    invoke-static {p1, p2}, Lcn/nubia/improve/ApiHelper;->setSmartContent(ILandroid/content/ClipData;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mInitDone:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    instance-of v0, p1, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;

    if-nez v0, :cond_1

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    .line 225
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->setSize(II)V

    .line 226
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleStart()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleEnd()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 229
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/ui/layout/Layout;->setSize(II)V

    .line 231
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout visibleIndex is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlotView"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 233
    iget p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez p1, :cond_2

    .line 234
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, p5}, Lcn/nubia/gallery3d/ui/Paper;->setSize(II)V

    :cond_2
    return-void
.end method

.method public onScrollBarPositionChanged(IF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 707
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 708
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    :cond_0
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    return-void
.end method

.method protected onShowScrollBar()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    if-lez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrolledPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    .line 715
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/SlotView$Listener;->onShowScrollBar()V

    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 285
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->forceFinished()V

    :goto_0
    return v0
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 10

    .line 320
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 324
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 325
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v2

    .line 326
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v3, v0, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->advanceAnimation(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 327
    iget v3, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    .line 328
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 329
    invoke-virtual {p0, v4, v6}, Lcn/nubia/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 331
    iget v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v4, :cond_5

    .line 333
    iget v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    .line 334
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v5

    if-lez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-ge v3, v5, :cond_4

    if-ne v4, v5, :cond_4

    .line 336
    :cond_2
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v3

    if-ne v4, v5, :cond_3

    neg-float v3, v3

    .line 340
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 341
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/ui/Paper;->edgeReached(F)V

    .line 344
    :cond_4
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v3

    goto :goto_0

    :cond_5
    move v3, v6

    :goto_0
    or-int/2addr v2, v3

    .line 349
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mAnimation:Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v4, :cond_6

    .line 350
    invoke-virtual {v4, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 353
    :cond_6
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 356
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    .line 357
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleEnd()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleStart()I

    move-result v4

    sub-int/2addr v1, v4

    .line 356
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 359
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleEnd()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v6

    :goto_1
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/ui/layout/Layout;->getVisibleStart()I

    move-result v5

    if-lt v0, v5, :cond_9

    .line 360
    invoke-direct {p0, p1, v0, v6, v3}, Lcn/nubia/gallery3d/ui/SlotView;->renderItem(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v5

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_7

    move v2, v1

    :cond_7
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    .line 362
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    add-int/lit8 v7, v4, 0x1

    aput v0, v5, v4

    move v4, v7

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    move v0, v1

    :goto_2
    if-eqz v4, :cond_d

    move v5, v6

    move v7, v5

    :goto_3
    if-ge v7, v4, :cond_c

    .line 368
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    aget v8, v8, v7

    invoke-direct {p0, p1, v8, v0, v3}, Lcn/nubia/gallery3d/ui/SlotView;->renderItem(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v8

    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_a

    move v2, v1

    :cond_a
    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    .line 371
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    add-int/lit8 v9, v5, 0x1

    aput v7, v8, v5

    move v5, v9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_2

    .line 375
    :cond_d
    iget v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 377
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    instance-of v1, v0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    if-eqz v1, :cond_e

    .line 378
    check-cast v0, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->getActiveClusters()[I

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    check-cast v1, Lcn/nubia/gallery3d/ui/layout/CameraLayout;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/CameraLayout;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 380
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->drawHeader(Lcn/nubia/gallery3d/glrenderer/GLCanvas;[ILjava/util/List;)V

    goto :goto_4

    .line 381
    :cond_e
    instance-of v1, v0, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    if-eqz v1, :cond_f

    .line 382
    check-cast v0, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/LocationLayout;->getActiveClusters()[I

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    check-cast v1, Lcn/nubia/gallery3d/ui/layout/LocationLayout;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/LocationLayout;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 384
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->drawHeader(Lcn/nubia/gallery3d/glrenderer/GLCanvas;[ILjava/util/List;)V

    goto :goto_4

    .line 386
    :cond_f
    instance-of v1, v0, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    if-eqz v1, :cond_10

    .line 388
    check-cast v0, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;->getActiveClusters()[I

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    check-cast v1, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/layout/AlbumLayout;->getClusters()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 390
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->drawHeader(Lcn/nubia/gallery3d/glrenderer/GLCanvas;[ILjava/util/List;)V

    :cond_10
    :goto_4
    if-eqz v2, :cond_11

    .line 393
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_5

    .line 395
    :cond_11
    sput-boolean v6, Lcn/nubia/gallery3d/ui/SlotView;->mRendering:Z

    .line 396
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mParent:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->stopIntroAnimation()V

    .line 399
    :goto_5
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    .line 400
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMoreAnimation:Z

    if-eqz v0, :cond_12

    if-nez v2, :cond_12

    if-eqz p1, :cond_12

    .line 401
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/gallery3d/ui/SlotView$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/ui/SlotView$1;-><init>(Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :cond_12
    iput-boolean v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMoreAnimation:Z

    return-void
.end method

.method public setCenterIndex(I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotCount()I

    move-result v0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 174
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    .line 175
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    .line 176
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 177
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView;->setScrollPosition(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V
    .locals 1

    .line 296
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mListener:Lcn/nubia/gallery3d/ui/SlotView$Listener;

    .line 297
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->setListener(Lcn/nubia/gallery3d/ui/SlotView$Listener;)V

    :cond_0
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2

    .line 307
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 308
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getScrollLimit()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 204
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScroller:Lcn/nubia/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 205
    invoke-virtual {p0, p1, v1}, Lcn/nubia/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3

    .line 606
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->setSlotCount(I)Z

    move-result v0

    .line 608
    iget v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mStartIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 609
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 610
    iput v2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mStartIndex:I

    .line 612
    :cond_0
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mInitDone:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    instance-of v2, v1, Lcn/nubia/gallery3d/ui/layout/LayoutAlbumSet;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcn/nubia/gallery3d/ui/layout/LayoutCloudAlbumSet;

    if-nez v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 615
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    :cond_1
    return v0
.end method

.method public setSlotRenderer(Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;Lcn/nubia/gallery3d/ui/layout/Layout;)V
    .locals 1

    .line 155
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    .line 156
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    .line 157
    iget-boolean p1, p2, Lcn/nubia/gallery3d/ui/layout/Layout;->WIDE:Z

    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    .line 158
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mPaper:Lcn/nubia/gallery3d/ui/Paper;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/Paper;->setScrollType(Z)V

    .line 159
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz p1, :cond_0

    .line 160
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotWidth()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotHeight()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 161
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mRenderer:Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 163
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mMultiSelectionManager:Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;

    if-eqz p1, :cond_1

    .line 164
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1, p2}, Lcn/nubia/improve/multiselection/MultiSelectionManagerImpl;->setLayout(Lcn/nubia/gallery3d/ui/layout/Layout;)V

    :cond_1
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 601
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mStartIndex:I

    return-void
.end method

.method public setUserInteractionListener(Lcn/nubia/gallery3d/ui/UserInteractionListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mUIListener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    return-void
.end method

.method public startFadeInAnimation(I)V
    .locals 1

    .line 251
    new-instance v0, Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView;->mAnimation:Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;

    .line 252
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 253
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->getSlotCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startRisingAnimation()V
    .locals 0

    return-void
.end method

.method public startScatteringAnimation(Lcn/nubia/gallery3d/ui/RelativePosition;)V
    .locals 0

    return-void
.end method

.method protected updateScrollPosition(IZ)V
    .locals 0

    if-nez p2, :cond_1

    .line 259
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    if-ne p1, p2, :cond_1

    :goto_0
    return-void

    .line 260
    :cond_1
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->WIDE:Z

    if-eqz p2, :cond_2

    .line 261
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollX:I

    goto :goto_1

    .line 263
    :cond_2
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView;->mScrollY:I

    .line 265
    :goto_1
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView;->mLayout:Lcn/nubia/gallery3d/ui/layout/Layout;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/layout/Layout;->setScrollPosition(I)V

    .line 266
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    return-void
.end method
