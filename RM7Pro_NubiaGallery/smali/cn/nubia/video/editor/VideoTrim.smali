.class public Lcn/nubia/video/editor/VideoTrim;
.super Ljava/lang/Object;
.source "VideoTrim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;
    }
.end annotation


# static fields
.field public static final ERR_INVALID:I = 0x3e9

.field public static final ERR_IO:I = 0x3ec

.field public static final ERR_NOSPACE:I = 0x3ed

.field public static final SAVE_TYPE_NEWFILE:I = 0x1

.field public static final SAVE_TYPE_OVERWRITE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "meeeeVideoTrim"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'TRIM\'_yyyyMMdd_HHmmss"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

.field private mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

.field private mSrcVideoPath:Ljava/lang/String;

.field private mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/video/editor/VideoTrimInfo;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    .line 57
    iput-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcn/nubia/video/editor/VideoTrim;->mUri:Landroid/net/Uri;

    .line 59
    iput-object p3, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrimInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/SaveVideoFileInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoTrim;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/video/editor/VideoTrim;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoTrim;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/editor/VideoTrim;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoTrim;->mSrcVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/video/editor/VideoTrim;)Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/editor/VideoTrim;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/video/editor/VideoTrim;->deleteDstFile(Ljava/lang/String;)V

    return-void
.end method

.method private deleteDstFile(Ljava/lang/String;)V
    .locals 1

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getAvailableSpace(Ljava/lang/String;)J
    .locals 5

    const/16 v0, 0x2f

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 81
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, p1

    mul-long/2addr v1, v3

    return-wide v1

    :catch_0
    move-exception p1

    const-string v0, "VideoTrim"

    const-string v1, "Fail to access sd storage"

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private isLowSpace(Ljava/lang/String;)Z
    .locals 8

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 93
    iget-object v2, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget v2, v2, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    if-lez v2, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/video/editor/VideoTrim;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    .line 95
    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget p1, p1, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    int-to-long v4, p1

    div-long/2addr v0, v4

    const-wide/32 v4, 0x200000

    add-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isValidTrim(III)Z
    .locals 1

    if-le p3, p2, :cond_2

    .line 70
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget-boolean v0, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    if-nez v0, :cond_0

    sub-int v0, p3, p2

    if-lt v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget-boolean v0, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    if-eqz v0, :cond_2

    sub-int/2addr p3, p2

    if-gt p3, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public setListener(Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    if-eq v0, p1, :cond_0

    .line 64
    iput-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    :cond_0
    return-void
.end method

.method public trimVideo(I)V
    .locals 9

    .line 105
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    .line 106
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget-wide v1, v1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    long-to-int v7, v1

    .line 107
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim;->mTrimInfo:Lcn/nubia/video/editor/VideoTrimInfo;

    iget-wide v1, v1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    long-to-int v8, v1

    .line 109
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    if-nez v1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-direct {p0, v0, v7, v8}, Lcn/nubia/video/editor/VideoTrim;->isValidTrim(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    const/16 v0, 0x3e9

    invoke-interface {p1, v0}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim;->mUri:Landroid/net/Uri;

    const-string v2, "\'TRIM\'_yyyyMMdd_HHmmss"

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcn/nubia/video/editor/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    .line 117
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mSrcVideoPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mSrcVideoPath:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcn/nubia/video/editor/VideoTrim;->mContext:Landroid/content/Context;

    const v4, 0x7f100268

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcn/nubia/video/editor/SaveVideoFileUtils;->getSaveMp4FileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    .line 122
    :cond_2
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/video/editor/VideoTrim;->isLowSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object p1, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    const/16 v0, 0x3ed

    invoke-interface {p1, v0}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimError(I)V

    return-void

    .line 129
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/editor/VideoTrim;->mListener:Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;

    invoke-interface {v0, v3}, Lcn/nubia/video/editor/VideoTrim$VideoTrimListener;->onVideoTrimProgress(I)V

    .line 130
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/video/editor/VideoTrim$1;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcn/nubia/video/editor/VideoTrim$1;-><init>(Lcn/nubia/video/editor/VideoTrim;ILjava/io/File;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
