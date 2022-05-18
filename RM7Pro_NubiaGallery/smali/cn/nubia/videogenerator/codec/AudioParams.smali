.class public Lcn/nubia/videogenerator/codec/AudioParams;
.super Ljava/lang/Object;
.source "AudioParams.java"


# static fields
.field private static final DEFAULT_AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final MAX_INPUT_SIZE:I = 0x4800


# instance fields
.field private mAudioFormat:I

.field private mBitRate:I

.field private mChannelCount:I

.field private mChannelLayout:I

.field private mMimeType:Ljava/lang/String;

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/AudioParams;->initDefault()V

    return-void
.end method

.method private initDefault()V
    .locals 1

    const-string v0, "audio/mp4a-latm"

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mMimeType:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mAudioFormat:I

    const v0, 0x1f400

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mBitRate:I

    const v0, 0xac44

    .line 28
    iput v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mSampleRate:I

    const/16 v0, 0x10

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelLayout:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelCount:I

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 57
    iget v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mAudioFormat:I

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .line 65
    iget v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mBitRate:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 73
    iget v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelCount:I

    return v0
.end method

.method public getChannelLayout()I
    .locals 1

    .line 77
    iget v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelLayout:I

    return v0
.end method

.method public getMediaFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 81
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 82
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mMimeType:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mMimeType:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const-string v2, "aac-profile"

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 87
    :cond_0
    iget v1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mBitRate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 88
    iget v1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mSampleRate:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    iget v1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelCount:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v1, 0x4800

    const-string v2, "max-input-size"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mSampleRate:I

    return v0
.end method

.method public setAudioFormat(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mAudioFormat:I

    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mBitRate:I

    return-void
.end method

.method public setChannelCount(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelCount:I

    return-void
.end method

.method public setChannelLayout(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mChannelLayout:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setaudioSampleRate(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/videogenerator/codec/AudioParams;->mSampleRate:I

    return-void
.end method
