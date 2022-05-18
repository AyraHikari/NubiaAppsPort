.class public Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;
.super Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;,
        Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x90

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mAnimatePressedUp:Z

.field private final mApertureIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

.field private final mDngIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mDrawMarkIcon:Z

.field private final mDynamicIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

.field private final mIconXMargin:I

.field private final mIconYMargin:I

.field private final mIntervalometerIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mItemMask:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

.field private final mMarkIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mPanoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mPlaceHolderColor:I

.field private mPressedIndex:I

.field private mRedMagicVideoIcon:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field private final mSlomoVideoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mSlotFilter:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

.field private final mVideoMakerIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mWaitLoadingTexture:Lcn/nubia/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 2

    .line 99
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDrawMarkIcon:Z

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 101
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    .line 102
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    .line 103
    iput-object p4, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 105
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600b4

    .line 106
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPlaceHolderColor:I

    .line 107
    new-instance p3, Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    invoke-direct {p3, p2}, Lcn/nubia/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object p3, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    .line 108
    invoke-virtual {p3, v1, v1}, Lcn/nubia/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    .line 110
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f08009a

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMarkIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 111
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f0800a2

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 112
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f0800ab

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlomoVideoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 113
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f080098

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIntervalometerIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 115
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f0800b5

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mVideoMakerIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 116
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f080090

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDynamicIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 117
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p3, 0x7f0800e1

    invoke-direct {p2, v0, p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mItemMask:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 118
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070052

    .line 119
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconXMargin:I

    .line 120
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070053

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconYMargin:I

    .line 122
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p2, 0x7f08008f

    invoke-direct {p1, v0, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDngIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 123
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p2, 0x7f08008d

    invoke-direct {p1, v0, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mApertureIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 124
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const p2, 0x7f0800a4

    invoke-direct {p1, v0, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPanoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    return-object p0
.end method

.method private checkNeedMask(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 473
    iget-object v1, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-boolean v1, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    or-int/2addr v0, v1

    .line 475
    iget-object p1, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private static checkTexture(Lcn/nubia/gallery3d/glrenderer/Texture;)Lcn/nubia/gallery3d/glrenderer/Texture;
    .locals 1

    .line 163
    instance-of v0, p0, Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcn/nubia/gallery3d/glrenderer/TiledTexture;

    .line 164
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private drawItemIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/ResourceTexture;II)V
    .locals 1

    if-eqz p2, :cond_0

    .line 455
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconXMargin:I

    sub-int/2addr p3, v0

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconYMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p2, p1, p3, p4}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method private drawRedMagicIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/BitmapTexture;II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 463
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int/lit8 p4, p4, -0xa

    invoke-virtual {p2, p1, p3, p4}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method private getItemIcon(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
    .locals 0

    .line 449
    iget-object p1, p1, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {p1}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result p1

    .line 450
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->getItemIconByType(I)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object p1

    return-object p1
.end method

.method private getItemIcon2ByFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "death"

    .line 429
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800bd

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "full"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800bb

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "collection"

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800b8

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "moment"

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800bc

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "manual"

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 441
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800ba

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemIconByFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "death"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6b7b\u4ea1"

    return-object p1

    :cond_0
    const-string v0, "full"

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u5168\u7a0b"

    return-object p1

    :cond_1
    const-string v0, "collection"

    .line 419
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u7cbe\u5f69"

    return-object p1

    :cond_2
    const-string v0, "moment"

    .line 421
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u77ac\u65f6"

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemIconByType(I)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 402
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDynamicIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 398
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIntervalometerIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 396
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlomoVideoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 408
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPanoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 394
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 406
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mApertureIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 404
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDngIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    .line 400
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mVideoMakerIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private renderItemLabel(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 0

    .line 310
    iget-object p2, p2, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 312
    invoke-interface {p2, p1, p3, p3}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    return p3
.end method

.method private renderOverlay(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 2

    .line 297
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-eq p2, v0, :cond_0

    .line 299
    invoke-virtual {p0, p1, p4, p5}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 300
    :cond_0
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    iget-object v1, p3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p3, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-eq p2, v0, :cond_1

    .line 302
    invoke-virtual {p0, p1, p4, p5}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawUnSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public disableMarkIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDrawMarkIcon:Z

    return-void
.end method

.method public drawAngleFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;FIILcn/nubia/gallery3d/data/Path;)V
    .locals 3

    const/4 v0, 0x2

    .line 379
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 380
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 381
    invoke-interface {p1, p2, v1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int p2, p3

    .line 382
    div-int/2addr p2, v0

    int-to-float p2, p2

    neg-int v1, p4

    div-int/2addr v1, v0

    int-to-float v0, v1

    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 383
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p2, p5}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 384
    invoke-virtual {p0, p1, p3, p4}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawBroderFrame(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 388
    :goto_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected drawPanoContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/Texture;III)V
    .locals 4

    const/4 v0, 0x2

    .line 272
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    .line 275
    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v2, p5

    const/4 v3, 0x0

    .line 276
    invoke-interface {p1, v2, v3, v3, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v2, p3

    .line 277
    div-int/2addr v2, v0

    int-to-float v2, v2

    neg-int v3, p4

    div-int/2addr v3, v0

    int-to-float v0, v3

    invoke-interface {p1, v2, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 278
    rem-int/lit8 p5, p5, 0x5a

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    move p4, p3

    :cond_0
    int-to-float p3, p3

    .line 286
    invoke-interface {p2}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    int-to-float p4, p4

    .line 287
    invoke-interface {p2}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p4, p5

    .line 288
    invoke-interface {p1, p3, p4, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    const/4 p3, 0x0

    .line 289
    invoke-interface {p2, p1, p3, p3}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 291
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public forceInvalidate()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 369
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onSlotSizeChanged(II)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->onSlotSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->pause()V

    :cond_0
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method public renderSlot(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    .line 171
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v8}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v11

    .line 174
    :cond_0
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v8}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v12

    if-nez v12, :cond_1

    return v11

    .line 190
    :cond_1
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_2

    .line 192
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcn/nubia/gallery3d/glrenderer/ColorTexture;

    :cond_2
    move-object v2, v0

    if-eqz v2, :cond_4

    .line 196
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_3

    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    .line 197
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move/from16 v4, p5

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawPanoContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/Texture;III)V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v9, 0x1

    .line 200
    iget v5, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/Texture;III)V

    :goto_0
    move v13, v11

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    move v13, v0

    .line 212
    :goto_1
    invoke-direct {p0, v12}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->getItemIcon(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    move-result-object v14

    .line 215
    invoke-direct {p0, v12}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->checkNeedMask(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Z

    move-result v0

    if-eqz v14, :cond_5

    const/4 v11, 0x1

    :cond_5
    or-int/2addr v0, v11

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mItemMask:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 221
    :cond_6
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    .line 223
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    invoke-virtual {p0, v7, v9, v10}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawDrmIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 229
    :cond_7
    iget-boolean v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    if-eqz v0, :cond_8

    .line 230
    invoke-direct {p0, v7, v12, v9, v10}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->renderItemLabel(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v13, v0

    .line 234
    :cond_8
    iget-boolean v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDrawMarkIcon:Z

    if-eqz v0, :cond_9

    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_9

    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 235
    :cond_9
    invoke-direct {p0, v7, v14, v9, v10}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawItemIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/ResourceTexture;II)V

    .line 238
    :cond_a
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_b

    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_b

    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataSourceType;->getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_d

    .line 241
    :cond_b
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->getItemIcon2ByFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 243
    new-instance v1, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v1, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mRedMagicVideoIcon:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_c

    .line 245
    invoke-direct {p0, v7, v1, v9, v10}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->drawRedMagicIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/BitmapTexture;II)V

    .line 247
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    :cond_d
    iget-boolean v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDrawMarkIcon:Z

    if-eqz v0, :cond_f

    .line 253
    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_f

    iget-object v0, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMarkIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    .line 255
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMarkIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v1

    .line 256
    iget-boolean v2, v12, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isLabelRequired:Z

    if-nez v2, :cond_e

    if-eqz v14, :cond_e

    .line 257
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMarkIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v2, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconXMargin:I

    sub-int v1, v10, v1

    iget v3, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconYMargin:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v7, v2, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_2

    .line 259
    :cond_e
    iget-object v2, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mMarkIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    sub-int v0, v9, v0

    iget v3, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconXMargin:I

    sub-int/2addr v0, v3

    sub-int v1, v10, v1

    iget v3, v6, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mIconYMargin:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v7, v0, v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_f
    :goto_2
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v12

    move/from16 v4, p4

    move/from16 v5, p5

    .line 265
    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILcn/nubia/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v0, v13

    return v0
.end method

.method public resume()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->resume()V

    return-void
.end method

.method public setHighlightItemPath(Lcn/nubia/gallery3d/data/Path;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 145
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcn/nubia/gallery3d/data/Path;

    .line 146
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setModel(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 153
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    :cond_0
    if-eqz p1, :cond_1

    .line 156
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    const/16 v3, 0x90

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    invoke-direct {v0, v2, p1, v3, v4}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/app/AlbumDataLoader;ILcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;

    .line 157
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {p1, p0, v1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1

    .line 129
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 132
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setPressedUp()V
    .locals 2

    .line 136
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 139
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcn/nubia/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public setSlotFilter(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    return-void
.end method
