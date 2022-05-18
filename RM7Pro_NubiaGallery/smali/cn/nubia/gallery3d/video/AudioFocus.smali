.class public Lcn/nubia/gallery3d/video/AudioFocus;
.super Ljava/lang/Object;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/video/AudioFocus$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManagerFocus:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mIslossFocusduck:Z

.field private mListener:Lcn/nubia/gallery3d/video/AudioFocus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/video/AudioFocus$Listener;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioFocus"

    .line 10
    iput-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    .line 14
    iput v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mCurrentVolume:I

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mIslossFocusduck:Z

    .line 43
    new-instance v0, Lcn/nubia/gallery3d/video/AudioFocus$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/AudioFocus$1;-><init>(Lcn/nubia/gallery3d/video/AudioFocus;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 22
    iput-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mListener:Lcn/nubia/gallery3d/video/AudioFocus$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/video/AudioFocus;)Lcn/nubia/gallery3d/video/AudioFocus$Listener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mListener:Lcn/nubia/gallery3d/video/AudioFocus$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/video/AudioFocus;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mIslossFocusduck:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/video/AudioFocus;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mIslossFocusduck:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/video/AudioFocus;)I
    .locals 0

    .line 8
    iget p0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mCurrentVolume:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/gallery3d/video/AudioFocus;I)I
    .locals 0

    .line 8
    iput p1, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/video/AudioFocus;)Landroid/media/AudioManager;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method public getAudioFocus()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "AudioFocus"

    const-string v1, "getAudioFocus"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    .line 30
    iget-object v1, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method public releaseAudioFocus()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v0, "AudioFocus"

    const-string v1, "releaseAudioFocus"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method
