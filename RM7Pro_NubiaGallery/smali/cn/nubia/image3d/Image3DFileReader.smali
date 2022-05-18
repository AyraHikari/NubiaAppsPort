.class public Lcn/nubia/image3d/Image3DFileReader;
.super Ljava/lang/Object;
.source "Image3DFileReader.java"

# interfaces
.implements Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;
    }
.end annotation


# static fields
.field private static final DISPLAY_FRAME_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "Image3DFileReader"


# instance fields
.field decoder:Lcn/nubia/image3d/H264Decoder;

.field private mBufSize:I

.field private mCacheFile:Landroid/os/MemoryFile;

.field private mCacheOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFormat:I

.field private mCurIndex:I

.field private mDataInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/image3d/DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDecoderService:Ljava/util/concurrent/ExecutorService;

.field private mDecoderWork:Ljava/lang/Runnable;

.field private mDisplayAction:Ljava/lang/Runnable;

.field private mFrameNum:I

.field private mHandler:Landroid/os/Handler;

.field private mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

.field private mImage3dDataStartAddress:J

.field private mIndex:I

.field private mIsDebug:Z

.field private mIsNeedDisplayAction:Z

.field private mJpgFile:Ljava/io/RandomAccessFile;

.field private mListener:Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

.field private mNubiaFileHeader:Lcn/nubia/nubiafile/NubiaFileHeader;

.field private mPath:Ljava/lang/String;

.field private mRender:Lcn/nubia/video/player/common/VideoRender;

.field private mTempInBuf:[B

.field private mTempOutBuf:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Image3DFileReader"

    const/4 v0, 0x2

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mIsDebug:Z

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mNubiaFileHeader:Lcn/nubia/nubiafile/NubiaFileHeader;

    .line 38
    new-instance v0, Lcn/nubia/image3d/Image3DFileHeader;

    invoke-direct {v0}, Lcn/nubia/image3d/Image3DFileHeader;-><init>()V

    iput-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    .line 39
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheOffsetList:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    .line 43
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mListener:Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

    .line 44
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    .line 45
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempOutBuf:[B

    .line 47
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;

    .line 48
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDecoderService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3dDataStartAddress:J

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    .line 51
    iput v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mFrameNum:I

    const/16 v1, 0x13

    .line 52
    iput v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mColorFormat:I

    .line 53
    iput v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCurIndex:I

    .line 54
    iput v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mIndex:I

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mIsNeedDisplayAction:Z

    .line 56
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance p1, Lcn/nubia/image3d/Image3DFileReader$1;

    invoke-direct {p1, p0}, Lcn/nubia/image3d/Image3DFileReader$1;-><init>(Lcn/nubia/image3d/Image3DFileReader;)V

    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDecoderWork:Ljava/lang/Runnable;

    .line 232
    new-instance p1, Lcn/nubia/image3d/Image3DFileReader$2;

    invoke-direct {p1, p0}, Lcn/nubia/image3d/Image3DFileReader$2;-><init>(Lcn/nubia/image3d/Image3DFileReader;)V

    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDisplayAction:Ljava/lang/Runnable;

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Image3dDebugH264Out()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "Image3DFileReader"

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mPath:Ljava/lang/String;

    const-string v2, "jpg"

    const-string v3, "h264"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 358
    :goto_0
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 359
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/image3d/DataInfo;

    .line 360
    iget v3, v2, Lcn/nubia/image3d/DataInfo;->length:I

    new-array v3, v3, [B

    .line 361
    iget-object v4, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    iget-wide v5, v2, Lcn/nubia/image3d/DataInfo;->offset:J

    iget-wide v7, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3dDataStartAddress:J

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 362
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 363
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 366
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/image3d/Image3DFileReader;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/image3d/Image3DFileReader;->onDecoder()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/image3d/Image3DFileReader;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/image3d/Image3DFileReader;->mIndex:I

    return p0
.end method

.method static synthetic access$108(Lcn/nubia/image3d/Image3DFileReader;)I
    .locals 2

    .line 26
    iget v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/image3d/Image3DFileReader;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/image3d/Image3DFileReader;->mFrameNum:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/image3d/Image3DFileReader;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCurIndex:I

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/image3d/Image3DFileReader;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mCurIndex:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/image3d/Image3DFileReader;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/image3d/Image3DFileReader;->mDisplayAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/image3d/Image3DFileReader;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/image3d/Image3DFileReader;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/image3d/Image3DFileReader;)Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/image3d/Image3DFileReader;->mListener:Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

    return-object p0
.end method

.method private onDecoder()V
    .locals 11

    .line 154
    new-instance v0, Lcn/nubia/image3d/H264Decoder;

    invoke-direct {v0}, Lcn/nubia/image3d/H264Decoder;-><init>()V

    iput-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    .line 155
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v1, v1, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/image3d/H264Decoder;->create(II)V

    .line 156
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    invoke-virtual {v0, p0}, Lcn/nubia/image3d/H264Decoder;->setListener(Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    invoke-virtual {v0}, Lcn/nubia/image3d/H264Decoder;->start()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataInfoList.size()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image3DFileReader"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mIsDebug:Z

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/image3d/Image3DFileReader;->Image3dDebugH264Out()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 167
    :goto_1
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/image3d/DataInfo;

    .line 169
    iget v5, v2, Lcn/nubia/image3d/DataInfo;->length:I

    new-array v5, v5, [B

    .line 171
    :try_start_1
    iget-object v6, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    iget-wide v7, v2, Lcn/nubia/image3d/DataInfo;->offset:J

    iget-wide v9, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3dDataStartAddress:J

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    iget-object v6, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v5}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 175
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :goto_2
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 178
    iget v7, v2, Lcn/nubia/image3d/DataInfo;->length:I

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 179
    iput v4, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 180
    iput v0, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 181
    iget v2, v2, Lcn/nubia/image3d/DataInfo;->index:I

    int-to-long v7, v2

    iput-wide v7, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 182
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    invoke-virtual {v2, v6, v5, v3}, Lcn/nubia/image3d/H264Decoder;->queueInputBuffer(Landroid/media/MediaCodec$BufferInfo;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v4, [B

    .line 186
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 187
    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x4

    .line 188
    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 189
    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 190
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    invoke-virtual {v0, v2, v1, v3}, Lcn/nubia/image3d/H264Decoder;->queueInputBuffer(Landroid/media/MediaCodec$BufferInfo;[BI)V

    .line 192
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mListener:Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;->onDecoderComplete()V

    :cond_2
    return-void
.end method


# virtual methods
.method public closeDisplayAction()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDisplayAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized create(Ljava/lang/String;)I
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 76
    monitor-exit p0

    return v2

    .line 78
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    .line 79
    invoke-static {v1}, Lcn/nubia/nubiafile/NubiaFileHeader;->parser(Ljava/io/RandomAccessFile;)Lcn/nubia/nubiafile/NubiaFileHeader;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mNubiaFileHeader:Lcn/nubia/nubiafile/NubiaFileHeader;

    if-nez v1, :cond_1

    const-string p1, "Image3DFileReader"

    const-string v1, "not nubia file."

    .line 81
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return v2

    .line 84
    :cond_1
    :try_start_2
    invoke-virtual {v1, v0}, Lcn/nubia/nubiafile/NubiaFileHeader;->getValue(I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const-string p1, "Image3DFileReader"

    const-string v1, "not image3d file."

    .line 85
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit p0

    return v2

    .line 88
    :cond_2
    :try_start_3
    new-instance v1, Lcn/nubia/video/player/common/VideoRender;

    invoke-direct {v1}, Lcn/nubia/video/player/common/VideoRender;-><init>()V

    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;

    .line 89
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mPath:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mNubiaFileHeader:Lcn/nubia/nubiafile/NubiaFileHeader;

    invoke-virtual {p1}, Lcn/nubia/nubiafile/NubiaFileHeader;->print()V

    .line 92
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sget p1, Lcn/nubia/nubiafile/NubiaFileHeader;->NUBIA_FILE_HEAD_SIZE:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v6, p1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x20

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    .line 94
    monitor-exit p0

    return v2

    .line 96
    :cond_3
    :try_start_4
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 98
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    iput-wide v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->datasize:J

    .line 99
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->dataNum:I

    .line 100
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->direction:I

    .line 101
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->directionMaxOffset:I

    .line 102
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    .line 103
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    .line 104
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    const-string p1, "Image3DFileReader"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-wide v6, v2, Lcn/nubia/image3d/Image3DFileHeader;->datasize:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Image3DFileReader"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->dataNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Image3DFileReader"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Image3DFileReader"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directionMaxOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->directionMaxOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Image3DFileReader"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Image3DFileReader"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Image3DFileReader"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v2, v2, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget p1, p1, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v1, v1, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    mul-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x3

    div-int/2addr p1, v3

    iput p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    .line 115
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget-wide v1, p1, Lcn/nubia/image3d/Image3DFileHeader;->datasize:J

    sub-long v1, v4, v1

    iput-wide v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3dDataStartAddress:J

    .line 116
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v1, v1, Lcn/nubia/image3d/Image3DFileHeader;->dataNum:I

    mul-int/lit8 v1, v1, 0x10

    int-to-long v1, v1

    sub-long/2addr v4, v1

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move p1, v0

    .line 119
    :goto_0
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v1, v1, Lcn/nubia/image3d/Image3DFileHeader;->dataNum:I

    if-ge p1, v1, :cond_4

    .line 120
    new-instance v1, Lcn/nubia/image3d/DataInfo;

    invoke-direct {v1}, Lcn/nubia/image3d/DataInfo;-><init>()V

    .line 121
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, v1, Lcn/nubia/image3d/DataInfo;->index:I

    .line 122
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/nubia/image3d/DataInfo;->offset:J

    .line 123
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, v1, Lcn/nubia/image3d/DataInfo;->length:I

    .line 124
    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 126
    :cond_4
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mFrameNum:I

    .line 127
    iget p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    new-array v1, p1, [B

    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    .line 128
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempOutBuf:[B

    .line 129
    new-instance p1, Landroid/os/MemoryFile;

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    iget v3, p0, Lcn/nubia/image3d/Image3DFileReader;->mFrameNum:I

    mul-int/2addr v2, v3

    invoke-direct {p1, v1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/MemoryFile;->allowPurging(Z)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 135
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 255
    iget v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCurIndex:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->direction:I

    return v0
.end method

.method public getFrameNum()I
    .locals 1

    .line 320
    iget v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mFrameNum:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 333
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    return v0

    .line 335
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    return v0
.end method

.method public getMaxOffsetOnDiretion()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->directionMaxOffset:I

    return v0
.end method

.method public getRotaion()I
    .locals 1

    .line 342
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 324
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    return v0

    .line 326
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    return v0
.end method

.method public onH264DecoderBufferCallback(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .line 210
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 212
    :try_start_0
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mNubiaFileHeader:Lcn/nubia/nubiafile/NubiaFileHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/nubiafile/NubiaFileHeader;->getValue(I)I

    move-result p1

    const/16 v0, 0x2711

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 214
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget p1, p1, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v0, v0, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    mul-int/2addr p1, v0

    .line 215
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    iget v3, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    int-to-long v3, v3

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 216
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    div-int/lit8 v3, p1, 0x4

    add-int/2addr v3, p1

    iget v4, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    int-to-long v4, v4

    iget-wide v6, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v4, p1

    div-int/lit8 v5, p1, 0x4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 217
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    iget v3, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    int-to-long v3, v3

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v3, p1

    div-int/lit8 v4, p1, 0x4

    add-int/2addr v3, v4

    div-int/lit8 v4, p1, 0x4

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempInBuf:[B

    iget v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    int-to-long v2, v2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 221
    :goto_0
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheOffsetList:Ljava/util/ArrayList;

    iget v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    int-to-long v2, v0

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v2, v4

    long-to-int p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-boolean p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mIsNeedDisplayAction:Z

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/image3d/Image3DFileReader;->mDisplayAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    iput-boolean v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mIsNeedDisplayAction:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onH264DecoderOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "color-format"

    .line 203
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mColorFormat:I

    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 5

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcn/nubia/image3d/H264Decoder;->stop()V

    .line 284
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    invoke-virtual {v0}, Lcn/nubia/image3d/H264Decoder;->release()V

    .line 285
    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->decoder:Lcn/nubia/image3d/H264Decoder;

    .line 287
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mDecoderService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 289
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mDecoderService:Ljava/util/concurrent/ExecutorService;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 292
    :cond_1
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mDataInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0, v2}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 296
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 298
    :cond_2
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 300
    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mJpgFile:Ljava/io/RandomAccessFile;

    .line 302
    :cond_3
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {v0}, Lcn/nubia/video/player/common/VideoRender;->release()V

    .line 304
    iput-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;

    :cond_4
    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mFrameNum:I

    .line 307
    iput v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mIndex:I

    .line 308
    iput-boolean v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mIsNeedDisplayAction:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 315
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekTo(I)V
    .locals 6

    monitor-enter p0

    if-ltz p1, :cond_3

    .line 263
    :try_start_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mCacheFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempOutBuf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/image3d/Image3DFileReader;->mBufSize:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 271
    :cond_1
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mTempOutBuf:[B

    if-eqz v1, :cond_2

    .line 272
    iget v2, p0, Lcn/nubia/image3d/Image3DFileReader;->mColorFormat:I

    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v3, p1, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    iget-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v4, p1, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/video/player/common/VideoRender;->renderFrame([BIIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 264
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setListener(Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader;->mListener:Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

    return-void
.end method

.method public declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mRender:Lcn/nubia/video/player/common/VideoRender;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mImage3DFileHeader:Lcn/nubia/image3d/Image3DFileHeader;

    iget v1, v1, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    invoke-virtual {v0, p1, v1}, Lcn/nubia/video/player/common/VideoRender;->setSurface(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/image3d/Image3DFileReader;->mDecoderService:Ljava/util/concurrent/ExecutorService;

    .line 142
    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader;->mDecoderWork:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
