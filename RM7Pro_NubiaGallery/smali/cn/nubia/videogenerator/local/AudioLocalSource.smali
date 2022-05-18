.class public Lcn/nubia/videogenerator/local/AudioLocalSource;
.super Ljava/lang/Object;
.source "AudioLocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;
    }
.end annotation


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_AAC:Ljava/lang/String; = "audio/aac"

.field private static final AUDIO_AMR_NB:Ljava/lang/String; = "audio/amr"

.field private static final AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field private static final AUDIO_M4A:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final CHANGEAUDIO:I = 0x2

.field private static final LOCALAUDIO:I = 0x0

.field private static final MUTEAUDIO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioLocalSource"

.field private static final TRIM_MODE_INNER:I = 0x0

.field private static final TRIM_MODE_OUTER:I = 0x1

.field private static final sNoNeedDecode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioHeadLength:J

.field private mAudioMode:I

.field private mAudioPts:J

.field private mAudiotrick:J

.field private mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

.field private mEndMs:J

.field private mFormat:Landroid/media/MediaFormat;

.field private mIsNeedDecode:Z

.field private mIsReading:Z

.field private mMimetype:Ljava/lang/String;

.field private mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

.field private mPath:Ljava/lang/String;

.field private mReadTask:Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;

.field private mSampleRate:I

.field private mStartMs:J

.field private mTrimType:I

.field private mVideoDuration:J

.field private mVideoEditorDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcn/nubia/videogenerator/local/AudioLocalSource$1;

    invoke-direct {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;-><init>()V

    sput-object v0, Lcn/nubia/videogenerator/local/AudioLocalSource;->sNoNeedDecode:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsReading:Z

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsNeedDecode:Z

    .line 45
    iput-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoDuration:J

    .line 47
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    const-wide/16 v4, -0x1

    .line 48
    iput-wide v4, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mStartMs:J

    .line 49
    iput-wide v4, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mEndMs:J

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mTrimType:I

    .line 51
    iput v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioMode:I

    const v0, 0xac44

    .line 52
    iput v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mSampleRate:I

    .line 53
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioPts:J

    .line 54
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudiotrick:J

    .line 55
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioHeadLength:J

    .line 59
    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mPath:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoDuration:J

    .line 61
    new-instance p1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;

    invoke-direct {p1, p0}, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;-><init>(Lcn/nubia/videogenerator/local/AudioLocalSource;)V

    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mReadTask:Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;

    .line 62
    invoke-virtual {p0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->isNeedToDecoder()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsNeedDecode:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioPts:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcn/nubia/videogenerator/local/AudioLocalSource;J)J
    .locals 0

    .line 16
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioPts:J

    return-wide p1
.end method

.method static synthetic access$102(Lcn/nubia/videogenerator/local/AudioLocalSource;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mFormat:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoDuration:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioHeadLength:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudiotrick:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mEndMs:J

    return-wide v0
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioMode:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsNeedDecode:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/videogenerator/local/AudioLocalSource;Lcn/nubia/videogenerator/common/OutputListener;)Lcn/nubia/videogenerator/common/OutputListener;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mMimetype:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mTrimType:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/videogenerator/local/AudioLocalSource;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mStartMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsReading:Z

    return p0
.end method

.method static synthetic access$802(Lcn/nubia/videogenerator/local/AudioLocalSource;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsReading:Z

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/videogenerator/local/AudioLocalSource;Lcn/nubia/videogenerator/common/DecoderDataListener;)Lcn/nubia/videogenerator/common/DecoderDataListener;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    return-object p1
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public isNeedToDecoder()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "mime"

    .line 127
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mMimetype:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToDecoer mimetype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioLocalSource"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lcn/nubia/videogenerator/local/AudioLocalSource;->sNoNeedDecode:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public setAudioHeadLength(J)V
    .locals 2

    .line 99
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioHeadLength:J

    .line 100
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    return-void
.end method

.method public setAudioMode(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioMode:I

    return-void
.end method

.method public setAudioTailLength(J)V
    .locals 2

    .line 105
    iget v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudioMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    :cond_0
    return-void
.end method

.method public setAudioTrimParmas(JJJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 87
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mStartMs:J

    mul-long/2addr p3, v0

    .line 88
    iput-wide p3, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mEndMs:J

    sub-long/2addr p3, p1

    .line 89
    iput-wide p3, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mAudiotrick:J

    mul-long/2addr p5, v0

    .line 90
    iput-wide p5, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoDuration:J

    .line 91
    iget p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mTrimType:I

    if-nez p1, :cond_0

    .line 92
    iput-wide p3, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    sub-long/2addr p5, p3

    .line 94
    iput-wide p5, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mVideoEditorDuration:J

    :cond_1
    :goto_0
    return-void
.end method

.method public setDataListener(Lcn/nubia/videogenerator/common/DecoderDataListener;Lcn/nubia/videogenerator/common/OutputListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    .line 67
    iput-object p2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mSampleRate:I

    return-void
.end method

.method public setTrimType(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mTrimType:I

    return-void
.end method

.method public start()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsNeedDecode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mOutputListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {v1, v0}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mReadTask:Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;

    const-string v2, "AudioLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource;->mIsReading:Z

    return-void
.end method
