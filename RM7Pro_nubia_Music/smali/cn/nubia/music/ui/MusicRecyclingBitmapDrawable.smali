.class public Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "MusicRecyclingBitmapDrawable.java"


# instance fields
.field private mCacheRefCount:I

.field private mDisplayRefCount:I

.field private mHasBeenDisplayed:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 11
    iput v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mCacheRefCount:I

    .line 12
    iput v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 17
    return-void
.end method

.method private declared-synchronized checkState()V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mCacheRefCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mDisplayRefCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->hasValidBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No longer being used or cached so recycling. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasValidBitmap()Z
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public setIsCached(Z)V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    iget v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mCacheRefCount:I

    .line 41
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->checkState()V

    .line 44
    return-void

    .line 38
    :cond_0
    :try_start_1
    iget v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mCacheRefCount:I

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIsDisplayed(Z)V
    .locals 1

    .prologue
    .line 20
    monitor-enter p0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    :try_start_0
    iget v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mDisplayRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->checkState()V

    .line 31
    return-void

    .line 25
    :cond_0
    :try_start_1
    iget v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mDisplayRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/music/ui/MusicRecyclingBitmapDrawable;->mDisplayRefCount:I

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
