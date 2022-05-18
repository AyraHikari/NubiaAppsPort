.class public Lcn/nubia/image3d/Image3dPlayController;
.super Ljava/lang/Object;
.source "Image3dPlayController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mFrameIndex:I

.field private mFrameNum:I

.field private mIsFirstConversion:Z

.field private mLock:[B

.field private mOldPicIndex:I

.field private mRotation:I

.field private mSpeed:F

.field private mStartAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mStartAngle:F

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mIsFirstConversion:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mSpeed:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    .line 15
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mRotation:I

    .line 16
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameNum:I

    .line 17
    iput v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mOldPicIndex:I

    new-array v0, v0, [B

    .line 19
    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mLock:[B

    .line 22
    iput p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameNum:I

    .line 23
    iput p3, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    .line 24
    iput p4, p0, Lcn/nubia/image3d/Image3dPlayController;->mSpeed:F

    .line 25
    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private rejustDirection180()I
    .locals 5

    .line 105
    iget v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method private rejustDirection270()I
    .locals 5

    .line 124
    iget v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private rejustDirection90()I
    .locals 5

    .line 86
    iget v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public getCurrentFrameIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    return v0
.end method

.method public getIndexFromAngle(FF)I
    .locals 8

    .line 142
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mLock:[B

    monitor-enter v0

    const/4 v1, 0x0

    .line 146
    :try_start_0
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_6

    .line 148
    iget v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mRotation:I

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_2

    :goto_0
    move v2, v7

    goto/16 :goto_1

    .line 165
    :cond_0
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection90()I

    move-result v2

    goto/16 :goto_1

    .line 168
    :cond_1
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection270()I

    move-result v2

    goto/16 :goto_1

    .line 158
    :cond_2
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection180()I

    move-result v2

    goto :goto_1

    .line 161
    :cond_3
    iget v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    goto :goto_1

    .line 150
    :cond_4
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection270()I

    move-result v2

    goto :goto_1

    .line 153
    :cond_5
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection90()I

    move-result v2

    goto :goto_1

    .line 173
    :cond_6
    iget v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mRotation:I

    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_9

    goto :goto_0

    .line 190
    :cond_7
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 191
    iget v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    goto :goto_1

    .line 193
    :cond_8
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection180()I

    move-result v2

    goto :goto_1

    .line 183
    :cond_9
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 184
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection90()I

    move-result v2

    goto :goto_1

    .line 186
    :cond_a
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection270()I

    move-result v2

    goto :goto_1

    .line 175
    :cond_b
    iget-object v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 176
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayController;->rejustDirection180()I

    move-result v2

    goto :goto_1

    .line 178
    :cond_c
    iget v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    :goto_1
    if-eq v2, v6, :cond_10

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    const/4 p2, 0x3

    if-eq v2, p2, :cond_e

    const/4 p2, 0x4

    if-eq v2, p2, :cond_d

    goto :goto_3

    :cond_d
    neg-float p1, p1

    .line 209
    iget p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mSpeed:F

    goto :goto_2

    .line 206
    :cond_e
    iget p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mSpeed:F

    goto :goto_2

    .line 203
    :cond_f
    iget p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mSpeed:F

    mul-float v1, p2, p1

    goto :goto_3

    :cond_10
    neg-float p1, p2

    .line 200
    iget p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mSpeed:F

    :goto_2
    mul-float v1, p1, p2

    .line 217
    :goto_3
    iget-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mIsFirstConversion:Z

    if-eqz p1, :cond_11

    .line 218
    iput-boolean v7, p0, Lcn/nubia/image3d/Image3dPlayController;->mIsFirstConversion:Z

    .line 219
    iget p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    int-to-float p2, p1

    sub-float/2addr v1, p2

    iput v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mStartAngle:F

    .line 220
    monitor-exit v0

    return p1

    .line 222
    :cond_11
    iget p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mStartAngle:F

    cmpg-float p2, v1, p1

    if-gez p2, :cond_12

    .line 227
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mStartAngle:F

    .line 228
    iput v7, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    goto :goto_4

    .line 229
    :cond_12
    iget p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameNum:I

    int-to-float v2, p2

    add-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_13

    int-to-float p1, p2

    sub-float/2addr v1, p1

    add-float/2addr v1, v3

    .line 234
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mStartAngle:F

    sub-int/2addr p2, v6

    .line 235
    iput p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    goto :goto_4

    :cond_13
    sub-float/2addr v1, p1

    .line 237
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    .line 239
    :goto_4
    iget p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mOldPicIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_15

    iget v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    if-eq p1, v1, :cond_14

    goto :goto_5

    .line 246
    :cond_14
    monitor-exit v0

    return p2

    .line 240
    :cond_15
    :goto_5
    iget p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    iput p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mOldPicIndex:I

    .line 241
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIndexFromOffset(III)I
    .locals 4

    .line 61
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mLock:[B

    monitor-enter v0

    .line 64
    :try_start_0
    iget v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, p2

    .line 67
    div-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    sub-int/2addr p2, p3

    .line 65
    div-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    :goto_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 71
    :cond_2
    iget p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameNum:I

    if-lt p1, p2, :cond_3

    add-int/lit8 p1, p2, -0x1

    .line 74
    :cond_3
    :goto_2
    iget p2, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    .line 75
    monitor-exit v0

    return p1

    .line 77
    :cond_4
    iput-boolean v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mIsFirstConversion:Z

    .line 78
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    .line 79
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getNextIndex()I
    .locals 3

    .line 39
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mLock:[B

    monitor-enter v0

    .line 40
    :try_start_0
    iget v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    iget v2, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameNum:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    .line 43
    :cond_0
    iget v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreIndex()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mLock:[B

    monitor-enter v0

    .line 49
    :try_start_0
    iget v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 50
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    .line 52
    :cond_0
    iget v1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentFrameIndex(I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayController;->mLock:[B

    monitor-enter v0

    .line 30
    :try_start_0
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mFrameIndex:I

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mIsFirstConversion:Z

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRotation(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayController;->mRotation:I

    return-void
.end method
