.class public Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AlbumSetView"


# instance fields
.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private final mAlbumMask:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mAnimatePressedUp:Z

.field protected mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

.field protected final mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mPlaceHolderColor:I

.field private mPressedIndex:I

.field private mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

.field private mStateGetAlbum:Z

.field private mStateGetContent:Z

.field private final mWaitLoadingTexture:Lcn/nubia/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 2

    .line 98
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 99
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 100
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 101
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    .line 102
    iput-object p4, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 103
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceHolderColor:I

    .line 105
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    .line 107
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p2, 0x7f080057

    invoke-direct {p1, v0, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumMask:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    return-object p0
.end method

.method private checkBucketWithoutCover(I)Z
    .locals 1

    .line 318
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static checkTexture(Lcn/nubia/gallery3d/glrenderer/Texture;)Lcn/nubia/gallery3d/glrenderer/Texture;
    .locals 1

    .line 145
    instance-of v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    .line 146
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public drawAngleFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;FIILcn/nubia/gallery3d/data/Path;)V
    .locals 3

    const/4 v0, 0x2

    .line 305
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 306
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 307
    invoke-interface {p1, p2, v1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int p2, p3

    .line 308
    div-int/2addr p2, v0

    int-to-float p2, p2

    neg-int v1, p4

    div-int/2addr v1, v0

    int-to-float v0, v1

    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 309
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p2, p5}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 310
    invoke-virtual {p0, p1, p3, p4}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->drawBroderFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 314
    :goto_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 295
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onSlotSizeChanged(II)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method protected renderContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I
    .locals 6

    .line 212
    iget-object p5, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez p5, :cond_0

    .line 214
    iget-object p5, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    :cond_0
    move-object v2, p5

    if-eqz v2, :cond_1

    .line 218
    iget v5, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/Texture;III)V

    const/4 p5, 0x0

    goto :goto_0

    :cond_1
    const/4 p5, 0x2

    .line 227
    :goto_0
    iget-object v0, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_2

    iget-object p2, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaItem;->isProtected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 228
    invoke-virtual {p0, p1, p3, p4}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->drawDrmIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_2
    return p5
.end method

.method protected renderLabel(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 8

    .line 235
    iget-boolean v0, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isLabelRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 237
    iget-object p2, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-static {p2}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->checkTexture(Lcn/nubia/gallery3d/glrenderer/Texture;)Lcn/nubia/gallery3d/glrenderer/Texture;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 239
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumMask:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 241
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p3, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int/2addr p4, p3

    .line 242
    invoke-interface {p2, p1, v1, p4}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method protected renderOverlay(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 2

    .line 179
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mStateGetContent:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 180
    :cond_0
    iget-object p2, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_1

    iget-object p2, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    .line 181
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p2

    invoke-static {p2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 184
    :cond_1
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 185
    invoke-virtual {p0, p1, p4, p5}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 186
    :cond_2
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object p3, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 187
    invoke-virtual {p0, p1, p4, p5}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->drawUnSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_3
    :goto_0
    return v0
.end method

.method public renderSlot(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 7

    .line 153
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {p3, p2}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p3

    const/4 v6, 0x0

    if-nez p3, :cond_0

    return v6

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v0

    or-int/2addr v0, v6

    .line 160
    invoke-virtual {p0, p1, p3, p4, p5}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v1

    or-int v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result p2

    or-int/2addr p2, v6

    .line 163
    iget-object v0, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v0, :cond_4

    .line 164
    iget-object p3, p3, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p3

    .line 165
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mStateGetAlbum:Z

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeAdd(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mStateGetContent:Z

    if-nez v0, :cond_2

    .line 167
    invoke-static {p3}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mStateGetContent:Z

    if-eqz v0, :cond_4

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-ne p3, v0, :cond_4

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p4

    int-to-float v5, p5

    const v6, -0x32000001    # -5.3687088E8f

    move-object v1, p1

    .line 169
    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :cond_4
    return p2
.end method

.method public resume()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    return-void
.end method

.method public setGetAlbum()V
    .locals 1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mStateGetAlbum:Z

    return-void
.end method

.method public setGetContent()V
    .locals 1

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mStateGetContent:Z

    return-void
.end method

.method public setHighlightItemPath(Lcn/nubia/gallery3d/data/Path;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 128
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setModel(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 134
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotCount(I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 138
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v4, 0x1e

    invoke-direct {v0, v2, p1, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    .line 139
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {p1, p0, v1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 140
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotCount(I)Z

    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1

    .line 111
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 113
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 114
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setPressedUp()V
    .locals 2

    .line 118
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method
