.class public Lcn/nubia/video/player/MediaSettings;
.super Ljava/lang/Object;
.source "MediaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/MediaSettings$ISettingCallback;
    }
.end annotation


# instance fields
.field private final MAX_VOLUME_LEVEL:I

.field private mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBrightness:F

.field private mCallback:Lcn/nubia/video/player/MediaSettings$ISettingCallback;

.field private mMaxVolume:I

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mVolume:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    const/16 v0, 0xf

    .line 15
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->MAX_VOLUME_LEVEL:I

    .line 31
    iput-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mActivity:Landroid/app/Activity;

    const-string v0, "audio"

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 33
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/MediaSettings;->mMaxVolume:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/video/player/MediaSettings$ISettingCallback;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mVolume:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    const/16 v0, 0xf

    .line 15
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->MAX_VOLUME_LEVEL:I

    .line 24
    iput-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mActivity:Landroid/app/Activity;

    const-string v0, "audio"

    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/MediaSettings;->mMaxVolume:I

    .line 27
    iput-object p2, p0, Lcn/nubia/video/player/MediaSettings;->mCallback:Lcn/nubia/video/player/MediaSettings$ISettingCallback;

    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcn/nubia/video/player/MediaSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcn/nubia/video/player/MediaSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mVolume:I

    .line 38
    iget-object v0, p0, Lcn/nubia/video/player/MediaSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    return-void
.end method

.method public setBrightness(F)V
    .locals 2

    .line 64
    iget v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .line 65
    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    .line 67
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    const v1, 0x46ea6000    # 30000.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    .line 70
    iput p1, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    goto :goto_0

    :cond_1
    const p1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 72
    iput p1, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    .line 74
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 75
    iget v0, p0, Lcn/nubia/video/player/MediaSettings;->mBrightness:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 76
    iget-object v0, p0, Lcn/nubia/video/player/MediaSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 46
    iget v0, p0, Lcn/nubia/video/player/MediaSettings;->mVolume:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 47
    iput v1, p0, Lcn/nubia/video/player/MediaSettings;->mVolume:I

    .line 49
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/MediaSettings;->mVolume:I

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 50
    iget p1, p0, Lcn/nubia/video/player/MediaSettings;->mMaxVolume:I

    if-le v0, p1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    move v0, v1

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 56
    iget-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mCallback:Lcn/nubia/video/player/MediaSettings$ISettingCallback;

    if-eqz p1, :cond_3

    .line 57
    iget-object p1, p0, Lcn/nubia/video/player/MediaSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xf

    .line 58
    iget v0, p0, Lcn/nubia/video/player/MediaSettings;->mMaxVolume:I

    div-int/2addr p1, v0

    .line 59
    iget-object v0, p0, Lcn/nubia/video/player/MediaSettings;->mCallback:Lcn/nubia/video/player/MediaSettings$ISettingCallback;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/MediaSettings$ISettingCallback;->onVolumeChange(I)V

    :cond_3
    return-void
.end method
