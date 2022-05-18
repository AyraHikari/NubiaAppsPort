.class public Lcn/nubia/videogenerator/codec/VideoParams;
.super Ljava/lang/Object;
.source "VideoParams.java"


# static fields
.field public static final MIME_TYPE_AVC:Ljava/lang/String; = "video/avc"


# instance fields
.field private mBitRate:I

.field private mColorFormat:I

.field private mFps:I

.field private mHeight:I

.field private mIFrameInter:I

.field private mIsMtkHigh:Z

.field private mIsMtkSlow:Z

.field private mMimeType:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/VideoParams;->initDefault()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mMimeType:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mBitRate:I

    .line 30
    iput p3, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mColorFormat:I

    return-void
.end method

.method private initDefault()V
    .locals 1

    const-string v0, "video/avc"

    .line 35
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mMimeType:Ljava/lang/String;

    const v0, 0x7f000789

    .line 36
    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mColorFormat:I

    const/16 v0, 0x280

    .line 37
    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    const/16 v0, 0x1e0

    .line 38
    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    const/high16 v0, 0xf00000

    .line 39
    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mBitRate:I

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mFps:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIFrameInter:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIsMtkHigh:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIsMtkSlow:Z

    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mBitRate:I

    return v0
.end method

.method public getColorFormat()I
    .locals 1

    .line 109
    iget v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mColorFormat:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 67
    iget v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mFps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 99
    iget v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    return v0
.end method

.method public getIFrameInter()I
    .locals 1

    .line 79
    iget v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIFrameInter:I

    return v0
.end method

.method public getMediaFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 128
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 129
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mMimeType:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 131
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    const-string v2, "stride"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 132
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 133
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    const-string v2, "slice-height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaFormat   mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mColorFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "woo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mBitRate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 137
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mFps:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 138
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mColorFormat:I

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 140
    iget v1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIFrameInter:I

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMtkHighFlag()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIsMtkHigh:Z

    return v0
.end method

.method public getMtkSlowFlag()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIsMtkSlow:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 95
    iget v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    return v0
.end method

.method public initByMediaFormat(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "mime"

    .line 117
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mMimeType:Ljava/lang/String;

    const-string v0, "width"

    .line 119
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    const-string v0, "height"

    .line 120
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mBitRate:I

    return-void
.end method

.method public setColorFormat(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mColorFormat:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mFps:I

    return-void
.end method

.method public setIFrameInter(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIFrameInter:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setMtkHighFlag(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIsMtkHigh:Z

    return-void
.end method

.method public setMtkSlowFlag(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mIsMtkSlow:Z

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput p1, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mWidth:I

    .line 105
    iput p2, p0, Lcn/nubia/videogenerator/codec/VideoParams;->mHeight:I

    return-void
.end method
