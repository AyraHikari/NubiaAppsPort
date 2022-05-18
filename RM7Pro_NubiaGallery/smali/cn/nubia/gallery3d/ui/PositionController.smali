.class Lcn/nubia/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;,
        Lcn/nubia/gallery3d/ui/PositionController$Gap;,
        Lcn/nubia/gallery3d/ui/PositionController$Box;,
        Lcn/nubia/gallery3d/ui/PositionController$Platform;,
        Lcn/nubia/gallery3d/ui/PositionController$Animatable;,
        Lcn/nubia/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I

.field private static final BOX_MAX:I = 0x3

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I

.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8

.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f

.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f

.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f

.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f

.field private static final HORIZONTAL_SLACK:I

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

.field private static final IMAGE_GAP:I

.field private static final IMAGE_GAP_SHAREMODE:I

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 4.0f

.field private static final SCALE_LIMIT_LONGPHOTO:F = 20.0f

.field private static final SCALE_MAX_EXTRA:F = 1.4f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field private static final SHARE_MODE_LANDSCAPE_HEIGHT:F = 0.614f

.field private static final SHARE_MODE_PORTRAIT_HEIGHT:F = 0.285f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "PositionController"

.field private static mHeightPixels:F

.field private static mWidthPixels:F


# instance fields
.field private longImagePorprotion:F

.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcn/nubia/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/RangeArray<",
            "Lcn/nubia/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/OverScroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcn/nubia/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/RangeArray<",
            "Lcn/nubia/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcn/nubia/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/RangeArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mShareMode:Z

.field private mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/RangeArray<",
            "Lcn/nubia/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/RangeArray<",
            "Lcn/nubia/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I

.field private mediaItemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 106
    sput-object v0, Lcn/nubia/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    const/16 v0, 0x10

    .line 108
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/ui/PositionController;->IMAGE_GAP:I

    const/16 v0, 0xc

    .line 109
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    const/16 v0, 0x8

    .line 110
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/ui/PositionController;->IMAGE_GAP_SHAREMODE:I

    const/4 v0, 0x0

    .line 212
    :goto_0
    sget-object v1, Lcn/nubia/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 213
    div-int/lit8 v3, v2, 0x2

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_0

    neg-int v3, v3

    .line 215
    :cond_0
    aput v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1f4
        0x190
        0x12c
        0xc8
        0x0
        0x0
        0x0
        0x2bc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/PositionController$Listener;)V
    .locals 6

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mediaItemType:I

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 90
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 91
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    const/16 v0, 0x4b0

    .line 121
    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    .line 122
    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    .line 177
    new-instance v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;-><init>(Lcn/nubia/gallery3d/ui/PositionController;Lcn/nubia/gallery3d/ui/PositionController$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 178
    new-instance v0, Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v2, -0x3

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcn/nubia/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    .line 181
    new-instance v0, Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4}, Lcn/nubia/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    .line 182
    new-instance v0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcn/nubia/gallery3d/ui/PositionController;Lcn/nubia/gallery3d/ui/PositionController$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmRatio:Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;

    .line 185
    new-instance v0, Lcn/nubia/gallery3d/util/RangeArray;

    invoke-direct {v0, v2, v3}, Lcn/nubia/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    .line 186
    new-instance v0, Lcn/nubia/gallery3d/util/RangeArray;

    invoke-direct {v0, v2, v4}, Lcn/nubia/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;

    .line 190
    new-instance v0, Lcn/nubia/gallery3d/util/RangeArray;

    invoke-direct {v0, v2, v3}, Lcn/nubia/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    .line 220
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    .line 222
    new-instance p2, Lcn/nubia/gallery3d/ui/FlingScroller;

    invoke-direct {p2}, Lcn/nubia/gallery3d/ui/FlingScroller;-><init>()V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

    .line 223
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    .line 225
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenHeight(Landroid/content/Context;)F

    move-result p2

    .line 226
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getScreenWidth(Landroid/content/Context;)F

    move-result v0

    cmpl-float v4, p2, v0

    const v5, 0x3dcccccd    # 0.1f

    if-lez v4, :cond_0

    div-float/2addr p2, v0

    add-float/2addr p2, v5

    .line 228
    iput p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->longImagePorprotion:F

    goto :goto_0

    :cond_0
    div-float/2addr v0, p2

    add-float/2addr v0, v5

    .line 230
    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->longImagePorprotion:F

    .line 234
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->initPlatform()V

    move p2, v2

    :goto_1
    if-gt p2, v3, :cond_1

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    new-instance v4, Lcn/nubia/gallery3d/ui/PositionController$Box;

    invoke-direct {v4, p0, v1}, Lcn/nubia/gallery3d/ui/PositionController$Box;-><init>(Lcn/nubia/gallery3d/ui/PositionController;Lcn/nubia/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v0, p2, v4}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 237
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/PositionController;->initBox(I)V

    .line 238
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p2, v4}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v3, :cond_2

    .line 241
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    new-instance v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/ui/PositionController$Gap;-><init>(Lcn/nubia/gallery3d/ui/PositionController;Lcn/nubia/gallery3d/ui/PositionController$1;)V

    invoke-virtual {p2, v2, v0}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 242
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->initGap(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    sput p2, Lcn/nubia/gallery3d/ui/PositionController;->mWidthPixels:F

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    sput p1, Lcn/nubia/gallery3d/ui/PositionController;->mHeightPixels:F

    return-void
.end method

.method private SetScaleMaxLimit(I)V
    .locals 4

    .line 315
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 316
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 317
    iget v1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 318
    sget v2, Lcn/nubia/gallery3d/ui/PositionController;->mWidthPixels:F

    sget v3, Lcn/nubia/gallery3d/ui/PositionController;->mHeightPixels:F

    mul-float/2addr v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 319
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, 0x40133333    # 2.3f

    mul-float/2addr v0, v1

    .line 321
    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    return p0
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 30
    sget v0, Lcn/nubia/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/ui/PositionController;FI)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/ui/PositionController;F)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcn/nubia/gallery3d/ui/PositionController;)F
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusX:F

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    return p0
.end method

.method static synthetic access$1800(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    return p0
.end method

.method static synthetic access$1900(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    return p0
.end method

.method static synthetic access$2000(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    return p0
.end method

.method static synthetic access$2200(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    return p0
.end method

.method static synthetic access$2300(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->getShareModeDefaultY()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400()[I
    .locals 1

    .line 30
    sget-object v0, Lcn/nubia/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasNext:Z

    return p0
.end method

.method static synthetic access$2700(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasPrev:Z

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/FlingScroller;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/gallery3d/ui/PositionController;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/gallery3d/ui/PositionController;F)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcn/nubia/gallery3d/ui/PositionController;)F
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusY:F

    return p0
.end method

.method static synthetic access$3200(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    return p0
.end method

.method static synthetic access$3300(Lcn/nubia/gallery3d/ui/PositionController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/ui/PositionController$Listener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/ui/PositionController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mInScale:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/PositionController;)Lcn/nubia/gallery3d/util/RangeArray;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    return-object p0
.end method

.method private calculateStableBound(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1453
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6

    .line 1428
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1431
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1432
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    .line 1435
    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    iput v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1436
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    iput v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1437
    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v2, p2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1438
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    iput v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1442
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1443
    iput v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1447
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1448
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .line 607
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 608
    iget-wide v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 609
    :cond_0
    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method private convertBoxToRect(I)V
    .locals 6

    .line 935
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 936
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 937
    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 938
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 939
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v0

    if-nez p1, :cond_0

    .line 941
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    .line 942
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr p1, v4

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 943
    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 945
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v4, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 946
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 947
    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v4, p1

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 948
    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 950
    :cond_1
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 951
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 952
    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v4, p1

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 953
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 955
    :goto_0
    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 956
    iget p1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private debugMoveBox([I)V
    .locals 4

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveBox:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1026
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1027
    aget v2, p1, v1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    const-string v2, " N"

    .line 1029
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, " "

    .line 1031
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PositionController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpRect(I)V
    .locals 4

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    .line 922
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 924
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ["

    .line 926
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    .line 928
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 930
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PositionController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpState()V
    .locals 7

    const/4 v0, -0x3

    move v1, v0

    :goto_0
    const-string v2, "PositionController"

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    iget v4, v4, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v1, v4, :cond_1

    .line 906
    sget-object v4, Lcn/nubia/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcn/nubia/gallery3d/ui/PositionController;->dumpRect(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gt v0, v3, :cond_4

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    :goto_3
    if-gt v4, v3, :cond_3

    .line 911
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and rect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "intersects!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private gapToSide(Lcn/nubia/gallery3d/ui/PositionController$Box;)I
    .locals 2

    .line 466
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float p1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private getDefaultGapSize(I)I
    .locals 2

    .line 446
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_0

    sget p1, Lcn/nubia/gallery3d/ui/PositionController;->IMAGE_GAP:I

    return p1

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-eqz v0, :cond_1

    sget p1, Lcn/nubia/gallery3d/ui/PositionController;->IMAGE_GAP_SHAREMODE:I

    return p1

    .line 448
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 449
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 450
    sget v1, Lcn/nubia/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PositionController;->gapToSide(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v0

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->gapToSide(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private getMaximalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F
    .locals 2

    .line 1395
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1397
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result p1

    return p1

    .line 1399
    :cond_1
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    iget v1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->longImagePorprotion:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->isHeightAble(Lcn/nubia/gallery3d/ui/PositionController$Box;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x41a00000    # 20.0f

    return p1

    :cond_2
    const/high16 p1, 0x40800000    # 4.0f

    return p1

    .line 1396
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result p1

    return p1
.end method

.method private getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F
    .locals 6

    .line 1354
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    .line 1355
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1357
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 1359
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    .line 1360
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    .line 1363
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f333333    # 0.7f

    if-eqz v2, :cond_2

    .line 1364
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    if-le v2, v3, :cond_1

    const v3, 0x3ef5c28f    # 0.48f

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v3, v0

    .line 1373
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v1

    mul-float/2addr v4, v0

    iget v1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1376
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-eqz v2, :cond_4

    .line 1377
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    if-le v1, v2, :cond_3

    const v1, 0x3e91eb85    # 0.285f

    goto :goto_2

    :cond_3
    const v1, 0x3f1d2f1b    # 0.614f

    :goto_2
    mul-float/2addr v1, v0

    .line 1382
    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1

    .line 1386
    :cond_4
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    iget v2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->longImagePorprotion:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->isHeightAble(Lcn/nubia/gallery3d/ui/PositionController$Box;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/high16 p1, 0x41a00000    # 20.0f

    .line 1387
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_5
    const/high16 p1, 0x40800000    # 4.0f

    .line 1390
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getShareModeDefaultY()I
    .locals 3

    .line 1470
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    if-le v0, v1, :cond_0

    neg-int v0, v0

    .line 1471
    div-int/lit8 v0, v0, 0x2

    sget v1, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_BARHEIGHT:I

    sget v2, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_VIEWHEIGHT:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 1474
    :cond_0
    sget v0, Lcn/nubia/gallery3d/ui/PhotoView;->SHARE_MODE_BARHEIGHT_LAND:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getTargetScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F
    .locals 4

    .line 1465
    iget-wide v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    goto :goto_0

    :cond_0
    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mToScale:F

    :goto_0
    return p1
.end method

.method private heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I
    .locals 1

    .line 875
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;F)I
    .locals 0

    .line 885
    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private initBox(I)V
    .locals 2

    .line 978
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 979
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 980
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    const/4 v0, 0x1

    .line 981
    iput-boolean v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 982
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 983
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMaximalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const/4 v0, 0x0

    .line 984
    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 985
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v0, -0x1

    .line 986
    iput-wide v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 v0, -0x1

    .line 987
    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    return-void
.end method

.method private initBox(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V
    .locals 2

    .line 992
    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 997
    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 998
    iget p2, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    iput p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    const/4 p2, 0x0

    .line 999
    iput-boolean p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 1000
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1001
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getMaximalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v0

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1002
    iput p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1003
    iget p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 v0, -0x1

    .line 1004
    iput-wide v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 p2, -0x1

    .line 1005
    iput p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    return-void

    .line 993
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->initBox(I)V

    return-void
.end method

.method private initGap(I)V
    .locals 3

    .line 1011
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 1012
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result p1

    iput p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1013
    iget p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    const-wide/16 v1, -0x1

    .line 1014
    iput-wide v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    return-void
.end method

.method private initGap(II)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 1019
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result p1

    iput p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1020
    iput p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    const-wide/16 p1, -0x1

    .line 1021
    iput-wide p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    return-void
.end method

.method private initPlatform()V
    .locals 3

    .line 970
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 971
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 972
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 973
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_0

    neg-float p0, p0

    :cond_0
    const p1, 0x3ca3d70a    # 0.02f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHeightAble(Lcn/nubia/gallery3d/ui/PositionController$Box;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private layoutAndSetPosition()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 895
    sget-object v1, Lcn/nubia/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .line 819
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 820
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->invalidate()V

    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 4

    .line 327
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 328
    iget-boolean v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    return v2

    .line 333
    :cond_0
    iput-boolean p4, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 335
    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v3, :cond_1

    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    if-ne p3, v3, :cond_1

    return v2

    :cond_1
    if-le p2, p3, :cond_2

    .line 346
    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    int-to-float v3, p2

    goto :goto_0

    :cond_2
    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v2, v2

    int-to-float v3, p3

    :goto_0
    div-float/2addr v2, v3

    .line 350
    iput p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 351
    iput p3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    if-eqz v1, :cond_3

    if-eqz p4, :cond_4

    .line 356
    :cond_3
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-eqz p2, :cond_5

    .line 357
    :cond_4
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result p2

    iput p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const-wide/16 p2, -0x1

    .line 358
    iput-wide p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    goto :goto_1

    .line 360
    :cond_5
    iget p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr p2, v2

    iput p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 361
    iget p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr p2, v2

    iput p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 362
    iget p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr p2, v2

    iput p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mToScale:F

    :goto_1
    if-nez p1, :cond_6

    .line 366
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr p1, v2

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusX:F

    .line 367
    iget p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr p1, v2

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusY:F

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private snapAndRedraw()V
    .locals 3

    .line 824
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    const/4 v0, -0x3

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 826
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PositionController$Box;->startSnapback()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 829
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 831
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmRatio:Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 832
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 2

    .line 838
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    invoke-static {v0, p1, v1, p4}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->access$400(Lcn/nubia/gallery3d/ui/PositionController$Platform;III)Z

    move-result p1

    const/4 v0, 0x0

    or-int/2addr p1, v0

    .line 839
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    invoke-static {v0, p2, p3, p4}, Lcn/nubia/gallery3d/ui/PositionController$Box;->access$500(Lcn/nubia/gallery3d/ui/PositionController$Box;IFI)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 840
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    :cond_0
    return p1
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 6

    .line 374
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 376
    iget-boolean v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-eqz v2, :cond_1

    return v1

    .line 379
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 380
    iput-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 381
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 382
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 383
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 384
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 383
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 385
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x5

    invoke-direct {p0, v2, v1, v0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 391
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 392
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    iput v2, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 393
    iget v2, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v2, v3}, Lcn/nubia/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private updateScaleAndGapLimit()V
    .locals 4

    const/4 v0, -0x3

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 431
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 432
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->getMinimalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 433
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->getMaximalScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 434
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->SetScaleMaxLimit(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    .line 438
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 439
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3

    .line 1457
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v1, p1}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;F)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3

    .line 1461
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v1, p1}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;F)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I
    .locals 1

    .line 870
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;F)I
    .locals 0

    .line 880
    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .line 846
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    const/4 v1, -0x3

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 848
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/ui/PositionController$Box;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    .line 851
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 853
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmRatio:Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 854
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    :cond_2
    return-void
.end method

.method public beginScale(FF)V
    .locals 3

    .line 542
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 543
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 544
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 545
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    const/4 v2, 0x1

    .line 546
    iput-boolean v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mInScale:Z

    .line 547
    iget v1, v1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusX:F

    .line 548
    iget p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusY:F

    return-void
.end method

.method public endScale()V
    .locals 1

    const/4 v0, 0x0

    .line 577
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mInScale:Z

    .line 578
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public flingFilmX(I)Z
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 735
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 736
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 739
    iget v3, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 740
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v4, :cond_1

    iget v4, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v4, v3, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v4, :cond_3

    iget v4, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-gt v4, v3, :cond_3

    :cond_2
    return v0

    .line 745
    :cond_3
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    iget v6, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v8, p1

    invoke-virtual/range {v5 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 747
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result p1

    .line 748
    iget v0, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result p1

    return p1
.end method

.method public flingFilmY(II)I
    .locals 3

    .line 756
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 759
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v0

    if-ltz p2, :cond_1

    if-nez p2, :cond_0

    .line 762
    iget v1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-gtz v1, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 763
    :cond_1
    :goto_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x3

    :goto_1
    if-eqz p2, :cond_2

    .line 771
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    .line 772
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    float-to-int p2, v0

    const/16 v0, 0x190

    .line 773
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_2
    const/16 p2, 0xc8

    .line 779
    :goto_2
    sget-object v0, Lcn/nubia/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/16 v2, 0x8

    aput p2, v0, v2

    .line 780
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {p1, v1, v0, v2}, Lcn/nubia/gallery3d/ui/PositionController$Box;->access$500(Lcn/nubia/gallery3d/ui/PositionController$Box;IFI)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 781
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    return p2

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public flingPage(II)Z
    .locals 15

    move-object v0, p0

    .line 701
    iget-object v1, v0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 702
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 705
    iget v4, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v4}, Lcn/nubia/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 706
    invoke-direct {p0, v4}, Lcn/nubia/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v4

    if-lez p1, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    :cond_2
    move v9, v2

    goto :goto_0

    :cond_3
    move/from16 v9, p1

    :goto_0
    if-lez p2, :cond_4

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    :cond_5
    move v10, v2

    goto :goto_1

    :cond_6
    move/from16 v10, p2

    :goto_1
    if-nez v9, :cond_7

    if-nez v10, :cond_7

    return v2

    .line 724
    :cond_7
    iget-object v6, v0, Lcn/nubia/gallery3d/ui/PositionController;->mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

    iget v7, v3, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v8, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v11, v0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v12, v0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    iget v13, v0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    iget v14, v0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-virtual/range {v6 .. v14}, Lcn/nubia/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 726
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/PositionController;->mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v2

    .line 727
    iget-object v3, v0, Lcn/nubia/gallery3d/ui/PositionController;->mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v3

    .line 728
    sget-object v4, Lcn/nubia/gallery3d/ui/PositionController;->ANIM_TIME:[I

    iget-object v5, v0, Lcn/nubia/gallery3d/ui/PositionController;->mPageScroller:Lcn/nubia/gallery3d/ui/FlingScroller;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v5

    const/4 v6, 0x6

    aput v5, v4, v6

    .line 729
    iget v1, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v1, v6}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v1

    return v1
.end method

.method public forceImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V
    .locals 1

    .line 290
    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 292
    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    iput v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 293
    iget p2, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    iput p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getCenterScale()F
    .locals 2

    .line 1232
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1233
    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getFilmRatio()F
    .locals 1

    .line 1294
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmRatio:Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .line 1263
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1264
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 1265
    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1267
    iget v3, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    const/4 v1, 0x2

    .line 1270
    :cond_0
    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x1

    .line 1273
    :cond_1
    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x8

    .line 1276
    :cond_2
    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v0, v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 2

    .line 1253
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1254
    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    return v0
.end method

.method public getImageScale()F
    .locals 2

    .line 1258
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1259
    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    return v0
.end method

.method public getImageWidth()I
    .locals 2

    .line 1248
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1249
    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    return v0
.end method

.method public getLongImageShowScale()F
    .locals 6

    .line 1316
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1318
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 1321
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    .line 1322
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    .line 1324
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1325
    iget v3, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageH:I

    iget v4, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->longImagePorprotion:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->isHeightAble(Lcn/nubia/gallery3d/ui/PositionController$Box;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1326
    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-le v3, v4, :cond_1

    int-to-float v0, v1

    mul-float/2addr v0, v5

    .line 1328
    iget v1, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    :goto_1
    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_1
    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 1332
    iget v1, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mImageW:I

    goto :goto_1

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1

    .line 961
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method public hasDeletingBox()Z
    .locals 3

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1303
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hitTest(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 793
    sget-object v1, Lcn/nubia/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    .line 794
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 795
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .line 858
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget-wide v5, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    .line 860
    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    .line 861
    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    iget-wide v5, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public isAtMaxmalScale()Z
    .locals 2

    .line 1237
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1238
    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v0

    return v0
.end method

.method public isAtMinimalScale()Z
    .locals 2

    .line 1227
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1228
    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v0

    return v0
.end method

.method public isCenter()Z
    .locals 4

    .line 1242
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1243
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isDefalutScale()Z
    .locals 6

    .line 1479
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1480
    iget v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 4

    .line 1283
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveBox([IZZZ[Lcn/nubia/gallery3d/ui/PhotoView$Size;)V
    .locals 9

    .line 1058
    iput-boolean p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1059
    iput-boolean p3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1061
    new-instance p2, Lcn/nubia/gallery3d/util/RangeIntArray;

    const/4 p3, -0x3

    const/4 v0, 0x3

    invoke-direct {p2, p1, p3, v0}, Lcn/nubia/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1064
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    move p1, p3

    :goto_0
    if-gt p1, v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1067
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mRects:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1068
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_1
    const/4 v1, 0x0

    if-gt p1, v0, :cond_1

    .line 1073
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1074
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1, v1}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_2
    if-ge p1, v0, :cond_2

    .line 1077
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1078
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1, v1}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_3
    const v2, 0x7fffffff

    if-gt p1, v0, :cond_4

    .line 1083
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_4

    .line 1085
    :cond_3
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1086
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, v3, v1}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    move p1, p3

    :goto_5
    if-ge p1, v0, :cond_8

    .line 1091
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v4, p1, 0x1

    .line 1093
    invoke-virtual {p2, v4}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_7

    .line 1096
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1097
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v3, v1}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    move p1, p3

    move v1, p1

    :goto_7
    if-gt p1, v0, :cond_b

    .line 1104
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    goto :goto_9

    .line 1105
    :cond_9
    :goto_8
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1108
    :cond_a
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, p1, 0x3

    .line 1109
    aget-object v1, p5, v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/gallery3d/ui/PositionController;->initBox(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V

    move v1, v5

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_b
    move p1, p3

    :goto_a
    if-gt p1, v0, :cond_d

    .line 1118
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result p5

    if-eq p5, v2, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    move p5, v0

    :goto_c
    if-lt p5, p3, :cond_f

    .line 1121
    invoke-virtual {p2, p5}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result v1

    if-eq v1, v2, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 p5, p5, -0x1

    goto :goto_c

    :cond_f
    :goto_d
    const/4 v1, 0x0

    if-le p1, v0, :cond_10

    .line 1126
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    iget-object p5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p5, p5, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput p5, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move p1, v1

    move p5, p1

    :cond_10
    add-int/lit8 v3, p1, 0x1

    .line 1135
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_e
    if-ge v3, p5, :cond_13

    .line 1136
    invoke-virtual {p2, v3}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result v4

    if-eq v4, v2, :cond_11

    goto :goto_f

    .line 1137
    :cond_11
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1138
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1139
    invoke-direct {p0, v4}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    .line 1140
    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v7

    .line 1141
    iget v4, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 1142
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v5, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1143
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPopFromTop:Z

    if-eqz v4, :cond_12

    .line 1144
    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    neg-int v4, v4

    iput v4, v5, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1146
    :cond_12
    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iput v4, v5, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    add-int/lit8 v3, p5, -0x1

    const/4 v4, -0x1

    .line 1151
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_10
    if-le v3, p1, :cond_16

    .line 1152
    invoke-virtual {p2, v3}, Lcn/nubia/gallery3d/util/RangeIntArray;->get(I)I

    move-result v4

    if-eq v4, v2, :cond_14

    goto :goto_11

    .line 1153
    :cond_14
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1154
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1155
    invoke-direct {p0, v4}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    .line 1156
    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v7

    .line 1157
    iget v4, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v7, 0x2

    sub-int/2addr v7, v6

    sub-int/2addr v4, v7

    .line 1158
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, v5, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1159
    iget-boolean v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPopFromTop:Z

    if-eqz v4, :cond_15

    .line 1160
    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    neg-int v4, v4

    iput v4, v5, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_11

    .line 1162
    :cond_15
    iget v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v5}, Lcn/nubia/gallery3d/ui/PositionController;->heightOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iput v4, v5, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    :goto_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_16
    move p2, p3

    move v2, p2

    :goto_12
    if-ge p2, v0, :cond_1a

    .line 1169
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, p2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    goto :goto_15

    .line 1170
    :cond_17
    :goto_13
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1173
    :cond_18
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mTempGaps:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, p2, v2}, Lcn/nubia/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1174
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1175
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1176
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v4

    .line 1177
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v6

    if-lt p2, p1, :cond_19

    if-ge p2, p5, :cond_19

    .line 1179
    iget v3, v3, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    sub-int/2addr v3, v2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v4, v2

    sub-int/2addr v3, v4

    .line 1180
    invoke-direct {p0, p2, v3}, Lcn/nubia/gallery3d/ui/PositionController;->initGap(II)V

    goto :goto_14

    .line 1182
    :cond_19
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/PositionController;->initGap(I)V

    :goto_14
    move v2, v5

    :goto_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_1a
    add-int/lit8 p1, p1, -0x1

    :goto_16
    if-lt p1, p3, :cond_1b

    .line 1189
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1190
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1191
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 1192
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v4

    .line 1193
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 1194
    iget p2, p2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v4, v3

    sub-int/2addr p2, v4

    iget v3, v5, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr p2, v3

    iput p2, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    :cond_1b
    :goto_17
    add-int/lit8 p5, p5, 0x1

    if-gt p5, v0, :cond_1c

    .line 1198
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    add-int/lit8 p2, p5, -0x1

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1199
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p3, p5}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 1200
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v2

    .line 1201
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/ui/PositionController;->widthOf(Lcn/nubia/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 1202
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, p2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 1203
    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v2, v4

    add-int/2addr p1, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    iget p2, p2, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr p1, p2

    iput p1, p3, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    goto :goto_17

    .line 1207
    :cond_1c
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p2, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    sub-int/2addr p1, p2

    .line 1208
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int/2addr p3, p1

    iput p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1209
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromX:I

    add-int/2addr p3, p1

    iput p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1210
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    add-int/2addr p3, p1

    iput p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1211
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr p3, p1

    iput p3, p2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1213
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    if-eq p1, p4, :cond_1d

    .line 1214
    iput-boolean p4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1215
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1216
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1219
    :cond_1d
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public resetToFullView()V
    .locals 4

    .line 537
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 538
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public scaleBy(FFF)I
    .locals 5

    .line 557
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 558
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 559
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 560
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 567
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/PositionController;->getTargetScale(Lcn/nubia/gallery3d/ui/PositionController$Box;)F

    move-result v3

    mul-float/2addr p1, v3

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 568
    iget-boolean v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_0

    iget p2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v2, p1

    sub-float/2addr p2, v2

    add-float/2addr p2, v4

    float-to-int p2, p2

    .line 569
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_1

    iget p3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v2, p1

    sub-float/2addr p3, v2

    add-float/2addr p3, v4

    float-to-int p3, p3

    :goto_1
    const/4 v2, 0x1

    .line 570
    invoke-direct {p0, p2, p3, p1, v2}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 571
    iget p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 572
    :cond_2
    iget p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public scrollFilmX(I)V
    .locals 7

    .line 657
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 660
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 664
    iget-wide v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 665
    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    return-void

    .line 675
    :cond_1
    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int/2addr v2, p1

    .line 679
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, p1

    .line 680
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez p1, :cond_2

    if-lez v2, :cond_2

    .line 681
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onPull(II)V

    :goto_0
    move v2, v1

    goto :goto_1

    .line 683
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez p1, :cond_3

    if-gez v2, :cond_3

    .line 684
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    neg-int v2, v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_0

    .line 687
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget p1, p1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, p1

    .line 688
    iget p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, p1, v0, v1}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public scrollFilmY(II)V
    .locals 2

    .line 692
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 695
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int/2addr v0, p2

    .line 696
    iget p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcn/nubia/gallery3d/ui/PositionController$Box;->access$500(Lcn/nubia/gallery3d/ui/PositionController$Box;IFI)Z

    .line 697
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method public scrollPage(II)V
    .locals 5

    .line 619
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 622
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    .line 624
    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 626
    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int/2addr v2, p1

    .line 627
    iget p1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int/2addr p1, p2

    .line 631
    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq p2, v3, :cond_2

    if-ge p1, p2, :cond_1

    .line 633
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    sub-int/2addr p2, p1

    const/4 v4, 0x2

    invoke-interface {v3, p2, v4}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    .line 635
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    sub-int v3, p1, v3

    invoke-interface {p2, v3, v1}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 639
    :cond_2
    :goto_0
    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {p1, p2, v3}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 643
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v2, p2, :cond_3

    sub-int/2addr v2, p2

    .line 645
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 646
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    goto :goto_1

    .line 647
    :cond_3
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez p2, :cond_4

    iget p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v2, p2, :cond_4

    sub-int/2addr p2, v2

    .line 649
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mListener:Lcn/nubia/gallery3d/ui/PositionController$Listener;

    const/4 v3, 0x3

    invoke-interface {v2, p2, v3}, Lcn/nubia/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 650
    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 653
    :cond_4
    :goto_1
    iget p2, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, p1, p2, v1}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 284
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 285
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 286
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public setExtraScalingRange(Z)V
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 420
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-nez p1, :cond_1

    .line 422
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    :cond_1
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 401
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 403
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 404
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 405
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->stopAnimation()V

    .line 406
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public setImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 2

    .line 298
    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v0, :cond_3

    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 301
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 306
    :goto_0
    iget v1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    iget p2, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    invoke-direct {p0, p1, v1, p2, v0}, Lcn/nubia/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result p1

    or-int/2addr p1, p3

    if-nez p1, :cond_2

    return-void

    .line 309
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 310
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    .line 1948
    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mediaItemType:I

    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0

    .line 1298
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPopFromTop:Z

    return-void
.end method

.method public setShareMode(Z)V
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 411
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    .line 413
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 414
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 415
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->skipToFinalPosition()V

    return-void
.end method

.method public setViewSize(II)V
    .locals 3

    .line 253
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    .line 257
    iput p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    .line 258
    iput p2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    .line 259
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->initPlatform()V

    const/4 v1, -0x3

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    const/4 v2, 0x1

    .line 262
    invoke-direct {p0, v1, p1, p2, v2}, Lcn/nubia/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    if-eqz v0, :cond_2

    .line 270
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 271
    iget p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput p2, p1, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 276
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 277
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->skipToFinalPosition()V

    :cond_3
    return-void
.end method

.method public skipAnimation()V
    .locals 7

    .line 481
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 483
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 484
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    :cond_0
    const/4 v0, -0x3

    move v1, v0

    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_2

    .line 487
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 488
    iget-wide v5, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_1

    .line 489
    :cond_1
    iget v5, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mToY:I

    iput v5, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 490
    iget v5, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v5, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 491
    iput-wide v2, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v4, :cond_4

    .line 494
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 495
    iget-wide v5, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    goto :goto_3

    .line 496
    :cond_3
    iget v5, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v5, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 497
    iput-wide v2, v1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 499
    :cond_4
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .line 507
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->stopAnimation()V

    .line 508
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 509
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/PositionController;->skipAnimation()V

    return-void
.end method

.method public snapback()V
    .locals 0

    .line 503
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->snapAndRedraw()V

    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 7

    .line 592
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 593
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 594
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    .line 596
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v4, v3, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    const/16 v6, 0x9

    invoke-static {v3, v4, v5, v6}, Lcn/nubia/gallery3d/ui/PositionController$Platform;->access$400(Lcn/nubia/gallery3d/ui/PositionController$Platform;III)Z

    .line 598
    iget v3, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v0, v1, v3, v6}, Lcn/nubia/gallery3d/ui/PositionController$Box;->access$500(Lcn/nubia/gallery3d/ui/PositionController$Box;IFI)Z

    .line 599
    iget v0, v2, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v2, v1, v0, v6}, Lcn/nubia/gallery3d/ui/PositionController$Box;->access$500(Lcn/nubia/gallery3d/ui/PositionController$Box;IFI)Z

    .line 600
    iget v0, p1, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {p1, v0, v6}, Lcn/nubia/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 601
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/PositionController;->redraw()V

    return-void
.end method

.method public startHorizontalSlide()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 584
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v2, v1, v0, v3}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .line 471
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const/4 v0, -0x3

    move v3, v0

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 473
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/ui/PositionController$Box;

    iput-wide v1, v4, Lcn/nubia/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v4, :cond_1

    .line 476
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/PositionController;->mGaps:Lcn/nubia/gallery3d/util/RangeArray;

    invoke-virtual {v3, v0}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/ui/PositionController$Gap;

    iput-wide v1, v3, Lcn/nubia/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .line 1288
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 1289
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mShareMode:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1290
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mFromX:I

    return-void
.end method

.method public zoomIn(FFF)V
    .locals 3

    .line 517
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 518
    iget v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 519
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoxes:Lcn/nubia/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/PositionController$Box;

    .line 522
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mPlatform:Lcn/nubia/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcn/nubia/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p1, v1

    .line 523
    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr p2, v1

    neg-float p1, p1

    mul-float/2addr p1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    neg-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 528
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 529
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {p1, v1, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 530
    iget v1, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundTop:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {p2, v1, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(III)I

    move-result p2

    .line 531
    iget v1, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v0, v0, Lcn/nubia/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v1, v0}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    const/4 v0, 0x4

    .line 533
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    return-void
.end method
