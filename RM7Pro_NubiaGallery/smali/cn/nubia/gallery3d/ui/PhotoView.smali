.class public Lcn/nubia/gallery3d/ui/PhotoView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "PhotoView.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/PhotoView$MySetting;,
        Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;,
        Lcn/nubia/gallery3d/ui/PhotoView$Picture;,
        Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;,
        Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;,
        Lcn/nubia/gallery3d/ui/PhotoView$Listener;,
        Lcn/nubia/gallery3d/ui/PhotoView$Model;,
        Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;,
        Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;,
        Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;,
        Lcn/nubia/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final CARD_EFFECT:Z = false

.field private static final DELETE_BAR_SHOW:I = 0x1

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MAX_DISMISS_VELOCITY:I = 0x7d0

.field private static final MOVE_THRESHOLD:I = 0x100

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_ENTER_SHARE_MODE:I = 0xa

.field private static final MSG_LEAVE_SHARE_MODE:I = 0x9

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field private static OFFSET_ICON:I = 0x0

.field private static final PLACEHOLDER_COLOR:I = -0xddddde

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SEPARATION_LINE_WIDTH:F = 1.0f

.field public static SHARE_MODE_BARHEIGHT:I = 0x0

.field public static SHARE_MODE_BARHEIGHT_LAND:I = 0x0

.field public static SHARE_MODE_VIEWHEIGHT:I = 0x0

.field private static final SL_FACTOR:F = 0.4f

.field private static final SWIPE_ESCAPE_DISTANCE:I = 0x96

.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x1f4

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static TRANSITION_SCALE_FACTOR:F = 0.74f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field private isNight:Z

.field private isVisitorMode:Z

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCanDrawPic:Z

.field private mCanDrawVideo:Z

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

.field private mDeleteBarState:I

.field private mDisplayRotation:I

.field private mDrawPlayIconActionTask:Ljava/util/TimerTask;

.field private mEdgeView:Lcn/nubia/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcn/nubia/gallery3d/ui/GestureRecognizer;

.field private mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

.field private mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

.field private final mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

.field private final mHintImage3dIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mHintMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mHintMultiShootText:Ljava/lang/String;

.field private mHintRect:Landroid/graphics/Rect;

.field private mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

.field private mHintTextPaint:Landroid/text/TextPaint;

.field private mHolding:I

.field private final mIconXMargin:I

.field private final mIconYMargin:I

.field private mImageCenter:Landroid/graphics/Point;

.field private mIsDrawVolume:Z

.field private mIsHeicSeek:Z

.field private mIsRedColor:Z

.field private mIsShareFromAlbumPage:Z

.field private mIsShowActionBar:Z

.field private mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

.field private mLoadingView:Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;

.field private mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

.field private mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

.field private mMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mNeedDrawPlayIcon:Z

.field private mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

.field private mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

.field private mNextBound:I

.field private final mPictures:Lcn/nubia/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/RangeArray<",
            "Lcn/nubia/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private final mSINGLEPOINTER_DISTANCE:F

.field private mScaleInterpolator:Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mSelectedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field protected final mSelectedMaskColor:I

.field private mSettings:Lcn/nubia/video/player/MediaSettings;

.field private mShareMode:Z

.field private mShareModeBgColor:I

.field public mShareModePhotoLandscapeHeight:I

.field public mShareModePhotoLandscapeWidthLimit:I

.field public mShareModePhotoPortraitHeight:I

.field public mShareModePhotoPortraitWidthLimit:I

.field private mShareModeViewHeight:I

.field private mShareTextOffsetX:I

.field private mShareTextOffsetY:I

.field private mShareTextPaint:Landroid/text/TextPaint;

.field mShowPlayIcon:Z

.field private mSingleItemOnly:Z

.field private mSizes:[Lcn/nubia/gallery3d/ui/PhotoView$Size;

.field public mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

.field private mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

.field private mTimer:Ljava/util/Timer;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mTouchCount:I

.field private final mUnSeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mViewDrawMode:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

.field private mVolumeLevel:I

.field private mVolumeProgress:Lcn/nubia/gallery3d/video/ui/VolumeProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Z)V
    .locals 7

    .line 422
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawPic:Z

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchCount:I

    const/4 v2, 0x5

    .line 82
    iput v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVolumeLevel:I

    .line 83
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsDrawVolume:Z

    .line 288
    new-instance v2, Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;

    .line 291
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 321
    new-instance v2, Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v3, -0x3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcn/nubia/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v2, 0x7

    new-array v2, v2, [Lcn/nubia/gallery3d/ui/PhotoView$Size;

    .line 323
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSizes:[Lcn/nubia/gallery3d/ui/PhotoView$Size;

    .line 350
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mImageCenter:Landroid/graphics/Point;

    .line 352
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 353
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    .line 354
    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 355
    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    .line 357
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 358
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    .line 378
    iput v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 385
    iput v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 386
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsRedColor:Z

    .line 387
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSingleItemOnly:Z

    .line 389
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShareFromAlbumPage:Z

    .line 397
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShowActionBar:Z

    const/4 v2, 0x0

    .line 404
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    .line 405
    sget-object v5, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    iput-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mViewDrawMode:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    .line 406
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    .line 407
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawVideo:Z

    .line 408
    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    .line 409
    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    .line 412
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    .line 413
    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDrawPlayIconActionTask:Ljava/util/TimerTask;

    .line 414
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTimer:Ljava/util/Timer;

    .line 415
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isNight:Z

    .line 416
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    .line 417
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsHeicSeek:Z

    .line 423
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    .line 424
    new-instance p2, Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/ui/TileImageView;-><init>(Lcn/nubia/gallery3d/app/GalleryContext;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    .line 425
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 426
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 427
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "SingleItemOnly"

    .line 428
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSingleItemOnly:Z

    .line 430
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->initShareModeSpec()V

    .line 431
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->initMultiShootHintSpec()V

    .line 432
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->initLoadingView()V

    .line 433
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 434
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSINGLEPOINTER_DISTANCE:F

    .line 435
    new-instance v1, Lcn/nubia/video/player/MediaSettings;

    new-instance v5, Lcn/nubia/gallery3d/ui/PhotoView$MySetting;

    invoke-direct {v5, p0, v2}, Lcn/nubia/gallery3d/ui/PhotoView$MySetting;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$1;)V

    invoke-direct {v1, p2, v5}, Lcn/nubia/video/player/MediaSettings;-><init>(Landroid/app/Activity;Lcn/nubia/video/player/MediaSettings$ISettingCallback;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSettings:Lcn/nubia/video/player/MediaSettings;

    .line 439
    new-instance p2, Lcn/nubia/gallery3d/ui/DeleteBarView;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcn/nubia/gallery3d/ui/DeleteBarView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    .line 440
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 441
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/ui/DeleteBarView;->setVisibility(I)V

    .line 443
    new-instance p2, Lcn/nubia/gallery3d/ui/UndoBarView;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcn/nubia/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    .line 444
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 445
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 446
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/PhotoView$1;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/ui/UndoBarView;->setOnClickListener(Lcn/nubia/gallery3d/ui/GLView$OnClickListener;)V

    .line 455
    new-instance p2, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    .line 456
    new-instance p1, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {p1, p0, v2}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$1;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    .line 457
    new-instance p2, Lcn/nubia/gallery3d/ui/GestureRecognizer;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    .line 458
    new-instance p1, Lcn/nubia/gallery3d/ui/PositionController;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/PhotoView$2;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/PositionController$Listener;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    .line 483
    iget p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    if-nez p1, :cond_1

    .line 484
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 485
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    iput p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    .line 486
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    .line 488
    :cond_1
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f08020a

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 489
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f0800a2

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 490
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f08005c

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSelectedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 491
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f08005b

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUnSeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 492
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f08007d

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 493
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f08007b

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintImage3dIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 494
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v0, 0x7f080079

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 495
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const p2, 0x7f10010f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintMultiShootText:Ljava/lang/String;

    .line 496
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07022a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIconXMargin:I

    .line 497
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIconYMargin:I

    .line 498
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600cc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSelectedMaskColor:I

    :goto_0
    if-gt v3, v4, :cond_3

    if-nez v3, :cond_2

    .line 502
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    new-instance p2, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    invoke-virtual {p1, v3, p2}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 504
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    new-instance p2, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {p2, p0, v3}, Lcn/nubia/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;I)V

    invoke-virtual {p1, v3, p2}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    :cond_3
    new-instance p1, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    .line 509
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 510
    new-instance p1, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    .line 511
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 512
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    if-nez p1, :cond_4

    .line 513
    new-instance p1, Lcn/nubia/gallery3d/video/ui/NewCutView;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/video/ui/NewCutView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    .line 514
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 516
    :cond_4
    new-instance p1, Lcn/nubia/gallery3d/video/ui/VolumeProgress;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/video/ui/VolumeProgress;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVolumeProgress:Lcn/nubia/gallery3d/video/ui/VolumeProgress;

    .line 517
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->addComponent(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 519
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isNight:Z

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/ui/PhotoView;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShareFromAlbumPage:Z

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/ui/PhotoView;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->setShareMode(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->toggleItem()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/TileImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/ui/PhotoView;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintMultiShootText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/text/TextPaint;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(III)I
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    return p0
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/Texture;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIconXMargin:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    return p0
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIconYMargin:I

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSelectedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p0
.end method

.method static synthetic access$3200()I
    .locals 1

    .line 73
    sget v0, Lcn/nubia/gallery3d/ui/PhotoView;->OFFSET_ICON:I

    return v0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUnSeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareTextOffsetX:I

    return p0
.end method

.method static synthetic access$3500(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareTextOffsetY:I

    return p0
.end method

.method static synthetic access$3600(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShowActionBar:Z

    return p0
.end method

.method static synthetic access$3700(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintMultiShootIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p0
.end method

.method static synthetic access$3800(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;ILcn/nubia/gallery3d/glrenderer/Texture;Lcn/nubia/gallery3d/glrenderer/Texture;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/PhotoView;->drawHint(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;ILcn/nubia/gallery3d/glrenderer/Texture;Lcn/nubia/gallery3d/glrenderer/Texture;)V

    return-void
.end method

.method static synthetic access$3900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/glrenderer/ResourceTexture;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintImage3dIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/GestureRecognizer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    return-object p0
.end method

.method static synthetic access$4000(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/PhotoView;->drawSelectIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcn/nubia/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$4100(Lcn/nubia/gallery3d/ui/PhotoView;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModeViewHeight:I

    return p0
.end method

.method static synthetic access$4300(III)F
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcn/nubia/gallery3d/ui/PhotoView;F)F
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcn/nubia/gallery3d/ui/PhotoView;F)F
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$4600(FFF)F
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcn/nubia/gallery3d/ui/PhotoView;F)F
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$4900(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    return-object p0
.end method

.method static synthetic access$5000(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    return p0
.end method

.method static synthetic access$5100(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$5200(Lcn/nubia/gallery3d/ui/PhotoView;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$5300(Lcn/nubia/gallery3d/ui/PhotoView;FF)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->toggleItem(FF)V

    return-void
.end method

.method static synthetic access$5400(Lcn/nubia/gallery3d/ui/PhotoView;)Landroid/graphics/Rect;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/util/RangeArray;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    return-object p0
.end method

.method static synthetic access$5600(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->isShowPlayIconModel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p0
.end method

.method static synthetic access$5702(Lcn/nubia/gallery3d/ui/PhotoView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$5800(Lcn/nubia/gallery3d/ui/PhotoView;)I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBarState:I

    return p0
.end method

.method static synthetic access$5900(Lcn/nubia/gallery3d/ui/PhotoView;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->changeColorOfDeleteBar(Z)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p0
.end method

.method static synthetic access$6000(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawVideo:Z

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$6100(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p0
.end method

.method static synthetic access$6102(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$6200(Lcn/nubia/gallery3d/ui/PhotoView;)F
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSINGLEPOINTER_DISTANCE:F

    return p0
.end method

.method static synthetic access$6300(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/video/player/MediaSettings;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSettings:Lcn/nubia/video/player/MediaSettings;

    return-object p0
.end method

.method static synthetic access$6400(Lcn/nubia/gallery3d/ui/PhotoView;FFF)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/PhotoView;->swipeImages(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6502(Lcn/nubia/gallery3d/ui/PhotoView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$6600(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsHeicSeek:Z

    return p0
.end method

.method static synthetic access$6700(Lcn/nubia/gallery3d/ui/PhotoView;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$7002(Lcn/nubia/gallery3d/ui/PhotoView;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVolumeLevel:I

    return p1
.end method

.method static synthetic access$7102(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsDrawVolume:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/PhotoView;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    return-object p0
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 2

    sub-int v0, p1, p0

    if-ge v0, p2, :cond_1

    .line 2492
    div-int/lit8 p1, p2, 0x2

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    if-le p0, p1, :cond_0

    sub-int/2addr p0, p1

    neg-int p0, p0

    int-to-float p0, p0

    :goto_0
    sub-int/2addr p2, p1

    :goto_1
    int-to-float p1, p2

    div-float/2addr p0, p1

    return p0

    :cond_0
    sub-int/2addr p0, p1

    int-to-float p0, p0

    neg-int p2, v0

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    neg-int p0, p0

    :goto_2
    int-to-float p0, p0

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    sub-int p0, p2, p1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private captureAnimationDone(I)V
    .locals 1

    .line 2459
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2460
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez p1, :cond_0

    .line 2462
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2463
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 2465
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method private changeColorOfDeleteBar(Z)V
    .locals 1

    .line 2048
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsRedColor:Z

    .line 2049
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->changeColor(Z)V

    .line 2050
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->invalidate()V

    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .line 2212
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_0

    return-void

    .line 2214
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2216
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2217
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private checkHideUndoBar(I)V
    .locals 5

    .line 2062
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    if-eqz v0, :cond_5

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    .line 2070
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->hideUndoBar()V

    :cond_7
    return-void
.end method

.method private drawBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Z)V
    .locals 7

    .line 2890
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    if-eqz p2, :cond_0

    const/high16 p2, -0x1000000

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600e3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    :goto_0
    move v6, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method private drawHint(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;ILcn/nubia/gallery3d/glrenderer/Texture;Lcn/nubia/gallery3d/glrenderer/Texture;)V
    .locals 9

    if-nez p5, :cond_0

    return-void

    .line 2763
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 2766
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 2767
    iget p3, p2, Landroid/graphics/Rect;->left:I

    if-lez p3, :cond_1

    .line 2768
    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p2, 0x0

    goto :goto_0

    .line 2769
    :cond_1
    iget p3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2770
    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result p3

    sub-int p3, p2, p3

    goto :goto_0

    :cond_2
    move p3, v2

    .line 2775
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    if-le p2, v0, :cond_4

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    iget p2, p2, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->barHeight:I

    goto :goto_1

    :cond_4
    move p2, v2

    .line 2776
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->padding:I

    .line 2777
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    .line 2779
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2780
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 2782
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    iget p2, p2, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->yMargin:I

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    sub-int/2addr v1, v2

    .line 2783
    invoke-interface {p4}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result p2

    invoke-interface {p5}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    iget v2, v2, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->textGap:I

    add-int/2addr p2, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr p2, v2

    .line 2786
    div-int/lit8 v2, p2, 0x2

    sub-int/2addr p3, v2

    .line 2787
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 2788
    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v8

    move-object v4, p1

    move v5, p3

    move v7, p2

    .line 2787
    invoke-virtual/range {v3 .. v8}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 2789
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintRect:Landroid/graphics/Rect;

    if-nez v2, :cond_6

    .line 2790
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintRect:Landroid/graphics/Rect;

    .line 2792
    :cond_6
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    add-int/2addr p2, p3

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintBackground:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 2793
    invoke-virtual {v4}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 2792
    invoke-virtual {v2, p3, v3, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    add-int/2addr p3, v0

    .line 2796
    invoke-interface {p4}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int p2, v1, p2

    invoke-interface {p4, p1, p3, p2}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 2798
    invoke-interface {p4}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    iget p4, p4, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->textGap:I

    add-int/2addr p2, p4

    add-int/2addr p3, p2

    .line 2799
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    invoke-interface {p5, p1, p3, v1}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private drawPlaceHolder(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 1342
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float v5, p2

    const v6, -0xddddde

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method private drawSelectIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 7

    .line 2878
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_0

    return-void

    .line 2880
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sget v1, Lcn/nubia/gallery3d/ui/PhotoView;->OFFSET_ICON:I

    sub-int/2addr v0, v1

    if-eqz p3, :cond_1

    .line 2881
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p3

    invoke-interface {v1, p3}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2882
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, p3

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float v4, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float v5, p3

    iget v6, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSelectedMaskColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 2883
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSelectedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sget v1, Lcn/nubia/gallery3d/ui/PhotoView;->OFFSET_ICON:I

    add-int/2addr p2, v1

    invoke-virtual {p3, p1, v0, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 2885
    :cond_1
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUnSeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sget v1, Lcn/nubia/gallery3d/ui/PhotoView;->OFFSET_ICON:I

    add-int/2addr p2, v1

    invoke-virtual {p3, p1, v0, p2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :goto_0
    return-void
.end method

.method private drawVideoOrPhoto(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 13

    .line 2144
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_2

    .line 2149
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2150
    :goto_0
    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    .line 2157
    :goto_2
    monitor-enter p0

    .line 2158
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawPic:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    neg-int v3, v1

    if-lt v0, v3, :cond_a

    .line 2160
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    if-nez v3, :cond_4

    .line 2161
    monitor-exit p0

    return-void

    .line 2163
    :cond_4
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v3, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v0, :cond_8

    .line 2171
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawVideo:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mViewDrawMode:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    sget-object v5, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawVideo:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    if-ne v4, v5, :cond_5

    .line 2172
    iget-object v6, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_4

    .line 2174
    :cond_5
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v4, p1, v3}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 2176
    :goto_4
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    if-eqz v4, :cond_9

    invoke-interface {v4, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    if-eqz v4, :cond_9

    .line 2179
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    invoke-interface {v4}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v4

    .line 2180
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    invoke-interface {v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v5

    .line 2181
    iget-object v6, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-eqz v6, :cond_6

    goto :goto_5

    .line 2185
    :cond_6
    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 2186
    iget v6, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    goto :goto_6

    .line 2182
    :cond_7
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 2183
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    move v12, v6

    move v6, v3

    move v3, v12

    .line 2188
    :goto_6
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save()V

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    .line 2189
    invoke-interface {p1, v3, v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 2190
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-interface {v3, p1, v4, v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 2191
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_7

    .line 2195
    :cond_8
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v4, p1, v3}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    .line 2202
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->renderChild(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/GLView;)V

    .line 2203
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->renderChild(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/ui/GLView;)V

    .line 2204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private drawVideoPlayIcon(Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V
    .locals 2

    .line 1350
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    if-eqz p2, :cond_0

    .line 1351
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    invoke-interface {p2}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result p2

    .line 1352
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    invoke-interface {v0}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v0

    .line 1353
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcn/nubia/gallery3d/glrenderer/Texture;

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v1, p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method private findOffsetOfCurrentByPosition(III)I
    .locals 2

    .line 2634
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0, p3}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2635
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    .line 2637
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ge v1, p3, :cond_1

    .line 2638
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2639
    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_2

    .line 2640
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->findOffsetOfCurrentByPosition(III)I

    move-result p1

    return p1

    .line 2642
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    if-le v0, p3, :cond_2

    .line 2643
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2644
    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le p1, v0, :cond_2

    .line 2645
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->findOffsetOfCurrentByPosition(III)I

    move-result p1

    return p1

    :cond_2
    return p3
.end method

.method private static gapToSide(II)I
    .locals 0

    sub-int/2addr p1, p0

    .line 2372
    div-int/lit8 p1, p1, 0x2

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getCameraRotation()I
    .locals 2

    .line 831
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    sub-float p1, v1, p1

    goto :goto_0

    :cond_0
    add-float/2addr p1, v1

    :goto_0
    const v0, 0x3cf5c28f    # 0.03f

    .line 2562
    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private getPanoramaRotation()I
    .locals 1

    .line 835
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    return v0
.end method

.method private static getRotated(III)I
    .locals 0

    .line 1358
    rem-int/lit16 p0, p0, 0xb4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private getScrollAlpha(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 2522
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v1, p1

    .line 2521
    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    :cond_0
    return v1
.end method

.method private getScrollScale(F)F
    .locals 2

    .line 2528
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2529
    sget v1, Lcn/nubia/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private initLoadingView()V
    .locals 3

    .line 2748
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    .line 2749
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2750
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    const v2, 0x7f0600b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingViewColor:I

    .line 2751
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    const v2, 0x7f100114

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingText:Ljava/lang/String;

    .line 2752
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    const v2, 0x7f0600b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingTextColor:I

    .line 2753
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    const v2, 0x7f070205

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingTextSize:I

    .line 2755
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingViewSpec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mLoadingView:Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;

    return-void
.end method

.method private initMultiShootHintSpec()V
    .locals 3

    .line 2735
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;-><init>(Lcn/nubia/gallery3d/ui/PhotoView$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    .line 2736
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2738
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const v2, 0x7f070178

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->fontSize:I

    .line 2739
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const v2, 0x7f07017a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->textGap:I

    .line 2740
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const v2, 0x7f070179

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->padding:I

    .line 2741
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const v2, 0x7f07017b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->xMargin:I

    .line 2742
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const v2, 0x7f07017c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->yMargin:I

    .line 2743
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    const v2, 0x7f07006c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->barHeight:I

    .line 2744
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintSpec:Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PhotoView$MultiShootHintSpec;->fontSize:I

    int-to-float v0, v0

    const v1, -0x32000001    # -5.3687088E8f

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHintTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method private initShareModeSpec()V
    .locals 3

    .line 2715
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070232

    .line 2716
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_VIEWHEIGHT:I

    const v1, 0x7f070229

    .line 2717
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_BARHEIGHT:I

    const v1, 0x7f070249

    .line 2718
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_BARHEIGHT_LAND:I

    const v1, 0x7f07022a

    .line 2719
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/ui/PhotoView;->OFFSET_ICON:I

    const v1, 0x7f07022d

    .line 2720
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoPortraitHeight:I

    const v1, 0x7f07022b

    .line 2722
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoLandscapeHeight:I

    const v1, 0x7f07022e

    .line 2724
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoPortraitWidthLimit:I

    const v1, 0x7f07022c

    .line 2726
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModePhotoLandscapeWidthLimit:I

    const v1, 0x7f070231

    .line 2728
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, -0x1

    .line 2727
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareTextPaint:Landroid/text/TextPaint;

    const v1, 0x7f07022f

    .line 2729
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareTextOffsetX:I

    const v1, 0x7f070230

    .line 2730
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareTextOffsetY:I

    const v1, 0x7f0600cd

    .line 2731
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModeBgColor:I

    return-void
.end method

.method private static interpolate(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method private isShowPlayIconModel()Z
    .locals 3

    .line 1419
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1422
    :cond_0
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mViewDrawMode:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    sget-object v2, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private layoutChild(ZII)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-le p3, p2, :cond_0

    .line 2672
    sget p3, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_VIEWHEIGHT:I

    :cond_0
    iput p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModeViewHeight:I

    .line 2673
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {p1, v0, v0, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView;->layout(IIII)V

    goto :goto_0

    .line 2676
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {p1, v0, v0, p2, p3}, Lcn/nubia/gallery3d/ui/TileImageView;->layout(IIII)V

    :goto_0
    return-void
.end method

.method private setFilmMode(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1907
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->videoPause()V

    .line 1908
    sget-object v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setViewShowMode(Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;)V

    .line 1910
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 1912
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    if-nez v0, :cond_2

    return-void

    .line 1914
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSingleItemOnly:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-interface {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1917
    :cond_3
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    goto :goto_1

    .line 1915
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1919
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_5

    .line 1920
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->showDeleteBar()V

    goto :goto_2

    .line 1921
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSingleItemOnly:Z

    if-nez v0, :cond_6

    .line 1922
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->hideDeleteBar()V

    .line 1923
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1925
    :cond_6
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1926
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1927
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1928
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    if-nez p1, :cond_7

    .line 1931
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1932
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    .line 1934
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->filmModeChanged()V

    return-void
.end method

.method private setPictureSize(I)V
    .locals 3

    .line 692
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    .line 693
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->getSize()Lcn/nubia/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    if-nez p1, :cond_0

    .line 694
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 693
    :goto_0
    invoke-virtual {v1, p1, v2, v0}, Lcn/nubia/gallery3d/ui/PositionController;->setImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    return-void
.end method

.method private setShareMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1943
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->videoPause()V

    .line 1944
    sget-object v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setViewShowMode(Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;)V

    .line 1946
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 1948
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    if-nez v0, :cond_2

    return-void

    .line 1950
    :cond_2
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    const/4 v0, 0x0

    .line 1951
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawPic:Z

    .line 1952
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->setShareMode(Z)V

    .line 1953
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1954
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1955
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->setShareCustom(Z)V

    .line 1956
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->requestLayout()V

    return-void
.end method

.method private slideToClickedPicture(I)Z
    .locals 1

    const/4 v0, -0x3

    if-lt p1, v0, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2366
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToClickedImage(I)V

    .line 2367
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->startHorizontalSlide()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private slideToNextPicture()Z
    .locals 1

    .line 2348
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2350
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2351
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->startHorizontalSlide()V

    const/4 v0, 0x1

    return v0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .line 2356
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2358
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 2359
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->startHorizontalSlide()V

    const/4 v0, 0x1

    return v0
.end method

.method private snapToNeighborImage()Z
    .locals 5

    .line 2332
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2333
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    .line 2335
    div-int/lit8 v3, v2, 0x5

    .line 2336
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2339
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_0

    .line 2340
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v0

    return v0

    .line 2341
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_1

    .line 2342
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private snapback()V
    .locals 1

    .line 2324
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_0

    return-void

    .line 2326
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2327
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->snapback()V

    :cond_2
    return-void
.end method

.method private swipeImages(FFF)Z
    .locals 4

    .line 2288
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2293
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    .line 2294
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 2295
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v0

    if-nez v2, :cond_2

    .line 2296
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_2

    and-int/lit8 p2, v0, 0x4

    if-eqz p2, :cond_1

    and-int/lit8 p2, v0, 0x8

    if-nez p2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/high16 p2, -0x3c6a0000    # -300.0f

    cmpg-float p2, p1, p2

    const/4 v3, 0x0

    if-gez p2, :cond_5

    if-nez v2, :cond_3

    and-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_5

    :cond_3
    cmpl-float p1, p3, v3

    if-lez p1, :cond_4

    .line 2307
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result p1

    return p1

    :cond_4
    return v1

    :cond_5
    const/high16 p2, 0x43960000    # 300.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    if-nez v2, :cond_6

    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_8

    :cond_6
    cmpl-float p1, p3, v3

    if-lez p1, :cond_7

    return v1

    .line 2316
    :cond_7
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v1
.end method

.method private switchFocus()V
    .locals 2

    .line 2223
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    return-void

    .line 2225
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2230
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 2227
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToPrevImage()V

    :goto_0
    return-void
.end method

.method private switchPosition()I
    .locals 5

    .line 2238
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2239
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2241
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_0

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v3, :cond_0

    .line 2242
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 2243
    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 2244
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    if-ge v2, v0, :cond_1

    return v4

    .line 2248
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v3, v2, :cond_1

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v3, :cond_1

    .line 2249
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 2250
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    .line 2251
    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    if-ge v3, v0, :cond_1

    return v4

    :cond_1
    return v1
.end method

.method private switchToClickedImage(I)V
    .locals 2

    .line 2392
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method private switchToFirstImage()V
    .locals 2

    .line 2388
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 1

    .line 2262
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez p2, :cond_0

    .line 2263
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object p2

    .line 2264
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-lt p2, p1, :cond_0

    .line 2265
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    return-void

    .line 2270
    :cond_0
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez p2, :cond_1

    .line 2271
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object p2

    .line 2272
    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-gt p2, p1, :cond_1

    .line 2273
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    :cond_1
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 4

    .line 2418
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 2421
    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    return v2

    .line 2424
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v3, :cond_2

    .line 2425
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2426
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2427
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v3, v0}, Lcn/nubia/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_5

    .line 2429
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_4

    return v2

    .line 2447
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 2452
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    .line 2453
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2454
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, p1, v2, v3}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_5
    return v2
.end method

.method private toggleItem()V
    .locals 2

    .line 2695
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    .line 2696
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->selectItem(Lcn/nubia/gallery3d/data/MediaItem;)Z

    return-void
.end method

.method private toggleItem(FF)V
    .locals 4

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 2683
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, p1, v2

    float-to-int v3, v3

    add-float/2addr v2, p2

    float-to-int v2, v2

    .line 2684
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2685
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    .line 2686
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {p2, p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->selectItem(Lcn/nubia/gallery3d/data/MediaItem;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2688
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->slideToClickedPicture(I)Z

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateCameraRect()V
    .locals 10

    .line 786
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    .line 787
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 788
    iget v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    const/16 v3, 0xb4

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v9, v1

    move v1, v0

    move v0, v9

    .line 793
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 794
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 795
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 796
    iget-object v6, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 799
    iget v7, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    if-eqz v7, :cond_4

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_3

    if-eq v7, v3, :cond_2

    const/16 v0, 0x10e

    if-eq v7, v0, :cond_1

    goto :goto_1

    .line 810
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v3, v1, v5

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v3, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 807
    :cond_2
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v5, v1, v5

    sub-int v6, v0, v6

    sub-int/2addr v1, v2

    sub-int/2addr v0, v4

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 804
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v3, v0, v6

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v2, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 801
    :cond_4
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 814
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compensation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CameraRelativeFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCameraRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public ReleaseSurfaceTexture()V
    .locals 1

    .line 2842
    monitor-enter p0

    .line 2843
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    if-eqz v0, :cond_0

    .line 2844
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    const/4 v0, 0x0

    .line 2845
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    const/4 v0, 0x0

    .line 2846
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawVideo:Z

    .line 2848
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquireSurfaceTexture()V
    .locals 3

    .line 2825
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->ReleaseSurfaceTexture()V

    .line 2826
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    if-nez v0, :cond_1

    .line 2827
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2828
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    .line 2829
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    .line 2831
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    iget v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    .line 2832
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 2833
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->setListener(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;)V

    return-void
.end method

.method public buildFallbackEffect(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 2578
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v1, p1

    .line 2579
    invoke-virtual {v1, v0, v8}, Lcn/nubia/gallery3d/ui/GLView;->getBoundsOf(Lcn/nubia/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v1

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2581
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2584
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2585
    new-instance v1, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;

    invoke-direct {v1}, Lcn/nubia/gallery3d/ui/PanoPhotoFallbackEffect;-><init>()V

    goto :goto_0

    .line 2587
    :cond_0
    new-instance v1, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v1}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    :goto_0
    move-object v10, v1

    const/4 v1, -0x3

    move v11, v1

    :goto_1
    const/4 v1, 0x3

    if-gt v11, v1, :cond_7

    .line 2590
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v11}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v12

    if-nez v12, :cond_1

    goto/16 :goto_3

    .line 2593
    :cond_1
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v11}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2594
    instance-of v2, v1, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    .line 2595
    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->isShowingPlaceholder()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 2599
    :cond_2
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Lcn/nubia/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2600
    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    .line 2601
    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    .line 2603
    invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 2605
    :cond_3
    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2607
    invoke-virtual {v12}, Lcn/nubia/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    .line 2609
    div-int/lit8 v5, v4, 0x5a

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 2614
    :cond_4
    new-instance v14, Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-direct {v14, v2, v3, v6}, Lcn/nubia/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .line 2615
    invoke-interface {v7, v14}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    .line 2616
    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v15, v3, 0x2

    int-to-float v15, v15

    invoke-interface {v7, v6, v15}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    .line 2617
    invoke-interface {v7, v4, v15, v15, v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    if-eqz v5, :cond_5

    neg-int v3, v3

    .line 2620
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v7, v3, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_2

    :cond_5
    neg-int v2, v2

    .line 2622
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-interface {v7, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2625
    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v5

    invoke-interface {v1}, Lcn/nubia/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v6

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/ScreenNail;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 2626
    invoke-interface/range {p2 .. p2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 2627
    invoke-virtual {v12}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v10, v1, v13, v14}, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Rect;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v10
.end method

.method public checkPlayIconIsShow()Z
    .locals 2

    .line 2820
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mViewDrawMode:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    sget-object v1, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawPic:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawVideo:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeleteBarState()I
    .locals 1

    .line 2044
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBarState:I

    return v0
.end method

.method public getFilmMode()Z
    .locals 1

    .line 1938
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getHeicSeekBarView()Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;
    .locals 1

    .line 2865
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    return-object v0
.end method

.method public getNewCutView()Lcn/nubia/gallery3d/video/ui/NewCutView;
    .locals 1

    .line 2869
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    return-object v0
.end method

.method public getNewSeekBarView()Lcn/nubia/gallery3d/video/ui/NewSeekBarView;
    .locals 1

    .line 2861
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    return-object v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 2574
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getShareMode()Z
    .locals 1

    .line 1960
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    return v0
.end method

.method public getSurfaceTextureScreenNail()Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;
    .locals 1

    .line 2837
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->acquireSurfaceTexture()V

    .line 2838
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSurfaceTextureScreenNail:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    return-object v0
.end method

.method public getUndoBarState()I
    .locals 1

    .line 2024
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBarState:I

    return v0
.end method

.method public heicScale(F)V
    .locals 4

    .line 1408
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->onScale(FFF)Z

    return-void
.end method

.method public heicScaleBegin()V
    .locals 4

    const/4 v0, 0x1

    .line 1411
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsHeicSeek:Z

    .line 1412
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->onScaleBegin(FF)Z

    return-void
.end method

.method public heicScaleEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 1415
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsHeicSeek:Z

    .line 1416
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    return-void
.end method

.method public hideDeleteBar()V
    .locals 2

    .line 2039
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->animateVisibility(I)V

    const/4 v0, 0x0

    .line 2040
    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBarState:I

    return-void
.end method

.method public hideUndoBar()V
    .locals 2

    .line 2017
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 2018
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    const/4 v0, 0x0

    .line 2019
    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBarState:I

    const v0, 0x7fffffff

    .line 2020
    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return-void
.end method

.method public isDeleting()Z
    .locals 1

    .line 679
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrawPlayIcon(Z)V
    .locals 0

    .line 2816
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    return-void
.end method

.method public notifyDataChange([III)V
    .locals 9

    .line 620
    iput p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 621
    iput p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    .line 623
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const p3, 0x7fffffff

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, p3, :cond_1

    .line 625
    iput p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 627
    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    sub-int/2addr v2, v0

    .line 628
    iput v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_1
    :goto_1
    iget p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    if-eq p2, p3, :cond_2

    .line 636
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {p3}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v0, :cond_2

    .line 637
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 638
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->showDeleteBar()V

    :cond_2
    const/4 p2, -0x3

    move p3, p2

    :goto_2
    if-gt p3, v0, :cond_3

    .line 644
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    .line 645
    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 646
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSizes:[Lcn/nubia/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v4, p3, 0x3

    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->getSize()Lcn/nubia/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 649
    :cond_3
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result p3

    .line 652
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPrevBound:I

    const/4 v4, 0x1

    if-gez v3, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v3, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v7

    iget-object v8, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mSizes:[Lcn/nubia/gallery3d/ui/PhotoView$Size;

    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcn/nubia/gallery3d/ui/PhotoView$Size;)V

    .line 656
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 657
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/PositionController;->setMediaType(I)V

    goto :goto_5

    .line 659
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/PositionController;->setMediaType(I)V

    :goto_5
    if-gt p2, v0, :cond_7

    .line 662
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->setPictureSize(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 665
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result p1

    if-eqz p3, :cond_8

    if-nez p1, :cond_8

    .line 670
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 671
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 672
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 675
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 684
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 687
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 688
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public onExtraSmartContent(ILandroid/graphics/Rect;)V
    .locals 3

    .line 2653
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2654
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    const/4 p2, 0x0

    .line 2655
    invoke-direct {p0, v0, v1, p2}, Lcn/nubia/gallery3d/ui/PhotoView;->findOffsetOfCurrentByPosition(III)I

    move-result p2

    .line 2656
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    if-eqz v0, :cond_0

    .line 2657
    invoke-interface {v0, p2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2658
    instance-of v0, p2, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    .line 2659
    check-cast p2, Lcn/nubia/gallery3d/ui/TiledScreenNail;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/TiledScreenNail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2660
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2661
    invoke-static {v0, p2}, Lcn/nubia/improve/ApiHelper;->putSmartShowExtra(Landroid/content/Intent;Landroid/graphics/Bitmap;)V

    const-string p2, "intentImage"

    .line 2662
    invoke-static {p2, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p2

    .line 2663
    invoke-static {p1, p2}, Lcn/nubia/improve/ApiHelper;->setSmartContent(ILandroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public onFrameAvailable()V
    .locals 1

    .line 2854
    monitor-enter p0

    const/4 v0, 0x1

    .line 2855
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawVideo:Z

    .line 2856
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    .line 2857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p2, 0x18

    const/4 v0, 0x1

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    return v2

    .line 1365
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 1368
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    .line 1369
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->getImageScale()F

    move-result p2

    .line 1370
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p2, v1

    invoke-virtual {p1, v2, v3, p2}, Lcn/nubia/gallery3d/ui/PositionController;->zoomIn(FFF)V

    return v0

    .line 1375
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 1378
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    .line 1379
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMaxmalScale()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1380
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->getImageScale()F

    move-result p2

    .line 1381
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr p2, v1

    invoke-virtual {p1, v2, v3, p2}, Lcn/nubia/gallery3d/ui/PositionController;->zoomIn(FFF)V

    :cond_4
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    sub-int v0, p4, p2

    sub-int/2addr p5, p3

    .line 703
    iget-boolean p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    invoke-direct {p0, p3, v0, p5}, Lcn/nubia/gallery3d/ui/PhotoView;->layoutChild(ZII)V

    .line 704
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->measure(II)V

    .line 705
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    invoke-virtual {p3, v1, v1}, Lcn/nubia/gallery3d/ui/UndoBarView;->measure(II)V

    .line 706
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/DeleteBarView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p3, v1, v1, v0, v2}, Lcn/nubia/gallery3d/ui/DeleteBarView;->layout(IIII)V

    .line 707
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/UndoBarView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p3, v1, v1, v0, v2}, Lcn/nubia/gallery3d/ui/UndoBarView;->layout(IIII)V

    if-le p5, v0, :cond_0

    .line 711
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f07006c

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 714
    :cond_0
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 715
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070180

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int p3, p5, p3

    sub-int/2addr p3, v1

    sub-int/2addr p5, v1

    .line 719
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 720
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    sub-int/2addr p5, v1

    sub-int/2addr p3, v1

    goto :goto_2

    .line 726
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 727
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation90(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    .line 729
    :cond_2
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v2

    if-gt v2, v3, :cond_3

    goto :goto_0

    .line 733
    :cond_3
    :goto_1
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v2

    if-le v2, v3, :cond_4

    move p2, v1

    .line 737
    :cond_4
    :goto_2
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v1, p2, p3, v0, p5}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->layout(IIII)V

    .line 738
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {v1, p2, p3, v0, p5}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->layout(IIII)V

    add-int/2addr p2, p4

    .line 740
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p4, p2, -0x64

    add-int/lit8 p2, p2, 0x64

    add-int/lit16 p5, p3, -0xc8

    .line 747
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    if-nez v1, :cond_5

    .line 748
    invoke-virtual {v0, p4, p5, p2, p3}, Lcn/nubia/gallery3d/video/ui/NewCutView;->layout(IIII)V

    .line 751
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p2

    if-nez p2, :cond_6

    return-void

    .line 755
    :cond_6
    invoke-interface {p2}, Lcn/nubia/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result p3

    .line 756
    invoke-interface {p2}, Lcn/nubia/gallery3d/ui/GLRoot;->getCompensation()I

    move-result p2

    .line 757
    iget p4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne p4, p3, :cond_7

    iget p4, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq p4, p2, :cond_9

    .line 758
    :cond_7
    iput p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 759
    iput p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCompensation:I

    const/4 p2, -0x3

    :goto_3
    const/4 p3, 0x3

    if-gt p2, p3, :cond_9

    .line 765
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p3, p2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    .line 766
    invoke-interface {p3}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 767
    invoke-interface {p3}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->forceSize()V

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 772
    :cond_9
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 773
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Lcn/nubia/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_a

    .line 775
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcn/nubia/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 777
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenWidth:I

    .line 778
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mScreenHeight:I

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTouchCount:I

    .line 1397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1398
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsDrawVolume:Z

    .line 1399
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->isShowPlayIconModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->startShowPlayIconAction()V

    .line 1403
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public pause()V
    .locals 3

    .line 1968
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1969
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView;->freeTextures()V

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1971
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1973
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->release()V

    return-void
.end method

.method public redrawSeekBarView()V
    .locals 3

    .line 2912
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->getProgress()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setProgress(I)V

    .line 2913
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->invalidate()V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 9

    .line 2080
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShowActionBar:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isNight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->drawBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Z)V

    .line 2083
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    .line 2084
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 2085
    :goto_2
    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v3, :cond_3

    .line 2086
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 2087
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    if-eqz v0, :cond_3

    .line 2089
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 2093
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2094
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareModeBgColor:I

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 2098
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->drawVideoOrPhoto(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 2100
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPictures:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView$FullPicture;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_9

    .line 2101
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    .line 2102
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->getSeekBarIsVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2103
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 2104
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    if-nez v3, :cond_5

    .line 2105
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/video/ui/NewCutView;->setCutViewIsVisible(Z)V

    .line 2107
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getSeekBarIsVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2108
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->setSeekBarVisible(Z)V

    .line 2110
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->getInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->checkPlayIconIsShow()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNeedDrawPlayIcon:Z

    if-nez v0, :cond_8

    .line 2111
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    if-nez v3, :cond_8

    .line 2112
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/ui/NewCutView;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 2113
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewCutView;->setCutViewIsVisible(Z)V

    goto :goto_3

    .line 2117
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewCutView:Lcn/nubia/gallery3d/video/ui/NewCutView;

    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    if-nez v3, :cond_8

    .line 2118
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/video/ui/NewCutView;->setCutViewIsVisible(Z)V

    .line 2121
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsDrawVolume:Z

    if-eqz v0, :cond_9

    .line 2122
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVolumeProgress:Lcn/nubia/gallery3d/video/ui/VolumeProgress;

    iget v3, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mVolumeLevel:I

    invoke-virtual {v0, p1, v3}, Lcn/nubia/gallery3d/video/ui/VolumeProgress;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;I)V

    .line 2126
    :cond_9
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isHEIC(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShareMode:Z

    if-nez v0, :cond_b

    .line 2127
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getSeekBarIsVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2128
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->setSeekBarVisible(Z)V

    .line 2130
    :cond_a
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_4

    .line 2132
    :cond_b
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getSeekBarIsVisible()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2133
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->setSeekBarVisible(Z)V

    .line 2137
    :cond_c
    :goto_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 2138
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    return-void
.end method

.method public resetHeicSeekBarView()V
    .locals 2

    .line 2917
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->setProgress(I)V

    .line 2918
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHeicSeekBarView:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->invalidate()V

    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    const/4 v0, 0x0

    .line 1985
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1986
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1987
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController;->resetToFullView()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1977
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1978
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShareFromAlbumPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1979
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setShareMode(Z)V

    :cond_0
    return-void
.end method

.method public setCallDrawPic(Z)V
    .locals 0

    .line 2711
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCanDrawPic:Z

    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 822
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFromAlbumPage(Z)V
    .locals 0

    .line 2700
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShareFromAlbumPage:Z

    return-void
.end method

.method public setIsShowActionBar(Z)V
    .locals 0

    .line 2803
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsShowActionBar:Z

    .line 2804
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public setIsVisitorMode(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->isVisitorMode:Z

    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/PhotoView$Listener;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mListener:Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    return-void
.end method

.method public setModel(Lcn/nubia/gallery3d/ui/PhotoView$Model;)V
    .locals 1

    .line 523
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    .line 524
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTileView:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/TileImageView;->setModel(Lcn/nubia/gallery3d/ui/TileImageView$TileSource;)V

    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 2400
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mPositionController:Lcn/nubia/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setShowNewSeekBar(Z)V
    .locals 1

    .line 2874
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setSeekBarVisible(Z)V

    return-void
.end method

.method public setSwipingDelete(Z)V
    .locals 1

    .line 1902
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingDelete(Z)V

    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1

    .line 1898
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    return-void
.end method

.method public setViewShowMode(Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;)V
    .locals 0

    .line 2809
    monitor-enter p0

    .line 2810
    :try_start_0
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mViewDrawMode:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    .line 2811
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    .line 2812
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public showDeleteBar()V
    .locals 2

    .line 2028
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mGestureListener:Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView$MyGestureListener;->getSwipingDelete()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2029
    iput v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBarState:I

    .line 2030
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsRedColor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2031
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->changeColorOfDeleteBar(Z)V

    .line 2033
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mIsRedColor:Z

    .line 2034
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBar:Lcn/nubia/gallery3d/ui/DeleteBarView;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->animateVisibility(I)V

    :cond_1
    return-void
.end method

.method public showUndoBar()V
    .locals 2

    .line 2008
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 2009
    iget v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDeleteBarState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2010
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->hideDeleteBar()V

    .line 2012
    :cond_0
    iput v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 2013
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mUndoBar:Lcn/nubia/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    return-void
.end method

.method public startShowPlayIconAction()V
    .locals 4

    .line 1426
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    if-eqz v0, :cond_0

    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDrawPlayIconActionTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1434
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$3;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/PhotoView$3;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mDrawPlayIconActionTask:Ljava/util/TimerTask;

    .line 1442
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public switchShareMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2705
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2707
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mHandler:Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public switchToNextImage()V
    .locals 2

    .line 2380
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method public switchToPrevImage()V
    .locals 2

    .line 2384
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView;->mModel:Lcn/nubia/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1

    .line 2408
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PhotoView;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 2409
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2411
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2414
    throw p1
.end method
