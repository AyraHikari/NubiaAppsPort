.class public Lcn/nubia/video/player/MovieSnapshot;
.super Ljava/lang/Object;
.source "MovieSnapshot.java"


# static fields
.field private static TAG:Ljava/lang/String; = "MovieSnapshot"


# instance fields
.field private final MAX_TEMPFILE_SIZE:I

.field mCameraSound:Landroid/media/MediaActionSound;

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mFlotingWindowView:Lcn/nubia/gallery3d/app/FlotingWindowView;

.field private mImagePath:Ljava/lang/String;

.field private mIsSnapshotting:Z

.field private mProjectPath:Ljava/lang/String;

.field private mSavePath:Ljava/lang/String;

.field private mTempFile:Ljava/lang/String;

.field private mTimeMS:I

.field private mToast:Lcn/nubia/gallery3d/video/VideoToast;

.field private mUri:Landroid/net/Uri;

.field private mbRelease:Z

.field private mbSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mFileName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mbSupport:Z

    .line 50
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbRelease:Z

    const v0, 0x64000

    .line 51
    iput v0, p0, Lcn/nubia/video/player/MovieSnapshot;->MAX_TEMPFILE_SIZE:I

    .line 60
    iput-object p1, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/video/player/MovieSnapshot;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/video/player/MovieSnapshot;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->startSaveFrameThread()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/video/player/MovieSnapshot;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->makePathName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/MovieSnapshot;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/video/player/MovieSnapshot;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/video/player/MovieSnapshot;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/video/player/MovieSnapshot;->mTimeMS:I

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/video/player/MovieSnapshot;I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/video/player/MovieSnapshot;->getRotation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/video/player/MovieSnapshot;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/video/player/MovieSnapshot;)Lcn/nubia/gallery3d/app/FlotingWindowView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/video/player/MovieSnapshot;->mFlotingWindowView:Lcn/nubia/gallery3d/app/FlotingWindowView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/player/MovieSnapshot;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->showNotSupportSnapshot()V

    return-void
.end method

.method private checkSavePath(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-void
.end method

.method private createTempFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mTempFile:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1400

    new-array v4, v4, [B

    .line 118
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    .line 119
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 122
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    .line 123
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 125
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-object v0
.end method

.method private getFileName()Ljava/lang/String;
    .locals 5

    .line 130
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, v0}, Lcn/nubia/video/player/MovieSnapshot;->isContainSuffix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x64000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 135
    invoke-direct {p0, v0}, Lcn/nubia/video/player/MovieSnapshot;->createTempFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getRotation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    return p1
.end method

.method private isContainSuffix(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2e

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz v0, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSupport(Landroid/net/Uri;)Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mbSupport:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private makePathName()Ljava/lang/String;
    .locals 4

    .line 215
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mSavePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/MovieSnapshot;->checkSavePath(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/video/player/MovieSnapshot;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[\\s-:]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showNotSupportSnapshot()V
    .locals 2

    .line 183
    iget-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbRelease:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    const v1, 0x7f100279

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    .line 186
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbSupport:Z

    :cond_0
    return-void
.end method

.method private showSnapshotFailed()V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbRelease:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    :cond_0
    return-void
.end method

.method private showSnapshotSuccess()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    :cond_0
    return-void
.end method

.method private showSystemBusy()V
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbRelease:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    const v1, 0x7f100281

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    :cond_0
    return-void
.end method

.method private startImportVideoFileThread()V
    .locals 1

    .line 197
    new-instance v0, Lcn/nubia/video/player/MovieSnapshot$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/MovieSnapshot$1;-><init>(Lcn/nubia/video/player/MovieSnapshot;)V

    .line 202
    invoke-virtual {v0}, Lcn/nubia/video/player/MovieSnapshot$1;->start()V

    return-void
.end method

.method private startSaveFrameThread()V
    .locals 1

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    .line 240
    new-instance v0, Lcn/nubia/video/player/MovieSnapshot$2;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/MovieSnapshot$2;-><init>(Lcn/nubia/video/player/MovieSnapshot;)V

    .line 290
    invoke-virtual {v0}, Lcn/nubia/video/player/MovieSnapshot$2;->start()V

    .line 291
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->showSnapshotSuccess()V

    :cond_0
    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    return-void
.end method

.method private startSnapshot()V
    .locals 2

    .line 145
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->showNotSupportSnapshot()V

    return-void

    .line 150
    :cond_0
    iput-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mFileName:Ljava/lang/String;

    .line 151
    new-instance v0, Lcn/nubia/gallery3d/app/FlotingWindowView;

    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/app/FlotingWindowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mFlotingWindowView:Lcn/nubia/gallery3d/app/FlotingWindowView;

    .line 152
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->startSaveFrameThread()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 299
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 300
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbRelease:Z

    .line 157
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mTempFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mTempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    :cond_1
    return-void
.end method

.method public snapshot(Landroid/net/Uri;I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast;

    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/video/player/common/Utils;->getMainStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->showSnapshotFailed()V

    return-void

    .line 77
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mProjectPath:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/MovieSnapshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mTempFile:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Screenshots/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mSavePath:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/MovieSnapshot;->isSupport(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/video/player/MovieSnapshot;->mbSupport:Z

    .line 86
    iput-object p1, p0, Lcn/nubia/video/player/MovieSnapshot;->mUri:Landroid/net/Uri;

    .line 87
    iput p2, p0, Lcn/nubia/video/player/MovieSnapshot;->mTimeMS:I

    .line 89
    iget-boolean p1, p0, Lcn/nubia/video/player/MovieSnapshot;->mIsSnapshotting:Z

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 92
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->startSnapshot()V

    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->showNotSupportSnapshot()V

    goto :goto_0

    .line 97
    :cond_4
    invoke-direct {p0}, Lcn/nubia/video/player/MovieSnapshot;->showSystemBusy()V

    :goto_0
    return-void
.end method
