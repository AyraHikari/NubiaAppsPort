.class public abstract Lcn/nubia/videogenerator/local/VideoSourceBase;
.super Ljava/lang/Object;
.source "VideoSourceBase.java"


# static fields
.field protected static final TRIM_MODE_INNER:I = 0x0

.field protected static final TRIM_MODE_OUTER:I = 0x1


# instance fields
.field protected IFramePts:J

.field protected mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

.field protected mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

.field protected mEndMs:J

.field protected mExistVideoHead:Z

.field protected mExistVideoTail:Z

.field protected mExtractor:Landroid/media/MediaExtractor;

.field protected mFormat:Landroid/media/MediaFormat;

.field protected mFps:I

.field protected mIsReading:Z

.field protected mListener:Lcn/nubia/videogenerator/common/OutputListener;

.field protected mMimetype:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field protected mPreciseTrim:Z

.field protected mStartMs:J

.field protected mTrimType:I

.field protected mVideoDuration:J

.field protected mVideoPts:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mIsReading:Z

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mExistVideoTail:Z

    .line 19
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mExistVideoHead:Z

    .line 20
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mPreciseTrim:Z

    const-wide/16 v1, -0x1

    .line 22
    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mStartMs:J

    .line 23
    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mEndMs:J

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mVideoDuration:J

    .line 25
    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mVideoPts:J

    .line 26
    iput v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mFps:I

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mTrimType:I

    .line 28
    iput-wide v1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->IFramePts:J

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;Lcn/nubia/videogenerator/common/CodecListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    .line 36
    iput-object p2, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    .line 37
    iput-object p3, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    return-void
.end method

.method public setFirstPts(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mVideoPts:J

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mFps:I

    return-void
.end method

.method public setPreciseTrim(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mPreciseTrim:Z

    return-void
.end method

.method public setTrimType(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mTrimType:I

    return-void
.end method

.method public setVideoHeadFlag(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mExistVideoHead:Z

    return-void
.end method

.method public setVideoTailFlag(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mExistVideoTail:Z

    return-void
.end method

.method public setVideoTrimParmas(JJJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 61
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mStartMs:J

    mul-long/2addr p3, v0

    .line 62
    iput-wide p3, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mEndMs:J

    mul-long/2addr p5, v0

    .line 63
    iput-wide p5, p0, Lcn/nubia/videogenerator/local/VideoSourceBase;->mVideoDuration:J

    return-void
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
