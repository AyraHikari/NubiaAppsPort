.class public Lcn/nubia/gallery3d/ui/AlbumLabelMaker;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;,
        Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;,
        Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x70000000

.field private static final BORDER_SIZE:I = 0x1

.field private static FONT_COLOR_COUNT:I

.field private static FONT_COLOR_TITLE:I


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCloneIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mContext:Landroid/content/Context;

.field private final mCountPaint:Landroid/text/TextPaint;

.field private final mDngIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mDynamicPhotoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mElectronicFNOIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mFacesIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mFrontIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mHitchCock:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mIDPhotoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mImage3DIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mIntervalometerIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private mLabelWidth:I

.field private final mLightDrawIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mLikeIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mLocationIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMicrospurIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMonoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMoon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMultiCamera:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMultiExposureIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMultiShootIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPanoramaIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPhantom:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPhoto3DIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPortraitIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPrismaIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mRaw:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mRecycleIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSlomoVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSlowShutterIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSlowVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSnapShotIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mStarSky:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mStarTrailIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private mTheme:Ljava/lang/String;

.field private final mThingsIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mTitlePaint:Landroid/text/TextPaint;

.field private final mTrajectoryIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mVideomakerIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mVlog:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mZoomBlurIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mTheme:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 98
    iget p1, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZI)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    .line 99
    iget p1, p2, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    const/16 p2, 0xd9

    invoke-static {p1, v0, v1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZI)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    .line 101
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800a9

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mRecycleIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 102
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800ae

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSnapShotIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 103
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800a2

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMultiShootIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 104
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800a4

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPanoramaIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 105
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800ab

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlomoVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 106
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f080098

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mIntervalometerIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 107
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f080090

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mDynamicPhotoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 108
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800b4

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 109
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f08009a

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLikeIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 110
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800b3

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mTrajectoryIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 111
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800b5

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mVideomakerIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 112
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f080091

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mElectronicFNOIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 113
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800a1

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMultiExposureIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 114
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f08008e

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mCloneIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 115
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f08008f

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mDngIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 116
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f080099

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLightDrawIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 117
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800ac

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlowShutterIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 118
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f080094

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mFrontIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 119
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f08009d

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMicrospurIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 120
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800b0

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mStarTrailIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 121
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f080097

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mImage3DIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 122
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800b7

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mZoomBlurIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 123
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f08009e

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMonoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 124
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800a6

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPhoto3DIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 125
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800a7

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPortraitIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 126
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800a8

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPrismaIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 127
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f080096

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mIDPhotoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 128
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800ad

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlowVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 129
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f080092

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mFacesIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 130
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f08009b

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLocationIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 131
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800b1

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mThingsIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 132
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800b6

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mVlog:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 133
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800af

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mStarSky:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 134
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0800a0

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMultiCamera:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 135
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f08009f

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMoon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 136
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f080095

    invoke-direct {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mHitchCock:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 137
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mRaw:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 138
    new-instance p1, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const p2, 0x7f0800a5

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPhantom:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 1

    .line 280
    monitor-enter p5

    int-to-float p4, p4

    .line 281
    :try_start_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, p4, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    int-to-float p1, p1

    .line 282
    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p0, p3, p1, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getBorderSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 224
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPhantom:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 222
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mRaw:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 220
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlowVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 218
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMultiCamera:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 216
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mStarSky:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 214
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mHitchCock:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMoon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 210
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mVlog:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 202
    :pswitch_9
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlowVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 200
    :pswitch_a
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mIDPhotoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 208
    :pswitch_b
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mThingsIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 206
    :pswitch_c
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLocationIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 204
    :pswitch_d
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mFacesIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 198
    :pswitch_e
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPrismaIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_f
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPortraitIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 194
    :pswitch_10
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPhoto3DIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 192
    :pswitch_11
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMonoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 190
    :pswitch_12
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mZoomBlurIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 188
    :pswitch_13
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mImage3DIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 184
    :pswitch_14
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMicrospurIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_15
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mFrontIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_16
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlowShutterIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 186
    :pswitch_17
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mStarTrailIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 170
    :pswitch_18
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLightDrawIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_19
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mDngIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_1a
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mCloneIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 174
    :pswitch_1b
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMultiExposureIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 168
    :pswitch_1c
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mElectronicFNOIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_1d
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mVideomakerIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 176
    :pswitch_1e
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mTrajectoryIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 162
    :pswitch_1f
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLikeIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 160
    :pswitch_20
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 172
    :pswitch_21
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mDynamicPhotoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_22
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mIntervalometerIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 156
    :pswitch_23
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSlomoVideoIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 154
    :pswitch_24
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mPanoramaIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_25
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mMultiShootIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_26
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSnapShotIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 148
    :pswitch_27
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mRecycleIcon:Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getTextPaint(IIZI)Landroid/text/TextPaint;
    .locals 2

    .line 231
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p0, p0

    .line 232
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 233
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 235
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    const/high16 p1, 0x40000000    # 2.0f

    const/4 p3, 0x0

    const/high16 v1, -0x1000000

    .line 236
    invoke-virtual {v0, p1, p3, p3, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    if-eqz p2, :cond_0

    .line 238
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$ImprovedAlbumLabelJob;-><init>(Lcn/nubia/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 1

    monitor-enter p0

    .line 262
    :try_start_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 263
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    .line 265
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I

    .line 266
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p1, p1, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
