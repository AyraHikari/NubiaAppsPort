.class public Lcn/nubia/video/editor/VideoEditorHelper;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;
    }
.end annotation


# static fields
.field private static final ERR_INVALID:I = 0x3e9

.field private static final ERR_IO:I = 0x3ec

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_ERROR:I = 0x2

.field private static final M_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "VideoEditorHelper"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'EDIT\'_yyyyMMdd_HHmmss"

.field private static final WALLPAPER_STAMP_NAME:Ljava/lang/String; = "\'Wallpaper\'_yyyyMMdd_HHmmss"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

.field private mEditorUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

.field private mIsComplete:Z

.field private mIsWallPaper:Z

.field private mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

.field private mProgress:Lcn/nubia/commonui/app/ProgressDialog;

.field private mVideoDuration:J

.field private mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/video/editor/VideoEditorInfo;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;Z)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    .line 45
    iput-wide v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoDuration:J

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsComplete:Z

    .line 49
    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    .line 50
    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mEditorUri:Landroid/net/Uri;

    .line 51
    iput-boolean v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    .line 55
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    .line 58
    iput-object p3, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    .line 59
    iput-boolean p5, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    .line 60
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->init()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/video/editor/VideoEditorHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->addSlowFlag()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mProgress:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1102(Lcn/nubia/video/editor/VideoEditorHelper;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mProgress:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/net/Uri;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mEditorUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/video/editor/VideoEditorHelper;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mEditorUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/video/editor/VideoEditorHelper;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/editor/VideoEditorHelper;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SaveVideoFileInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/video/editor/VideoEditorHelper;)Lcn/nubia/video/editor/SlomoVideoEditor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/editor/VideoEditorHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->cleanProgressDialog()V

    return-void
.end method

.method static synthetic access$902(Lcn/nubia/video/editor/VideoEditorHelper;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsComplete:Z

    return p1
.end method

.method private addSlowFlag()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-boolean v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->isSlomoVideo:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    iget-object v0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 119
    new-instance v1, Lcn/nubia/video/editor/VideoTrimInfo;

    invoke-direct {v1}, Lcn/nubia/video/editor/VideoTrimInfo;-><init>()V

    .line 120
    invoke-static {v0, v1}, Lcn/nubia/video/editor/SaveVideoFileUtils;->writeSlomoVideoFlag(Ljava/io/File;Lcn/nubia/video/editor/VideoTrimInfo;)V

    :cond_0
    return-void
.end method

.method private cleanProgressDialog()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mProgress:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mProgress:Lcn/nubia/commonui/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private getAvailableSpace(Ljava/lang/String;)J
    .locals 5

    const/16 v0, 0x2f

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 285
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 286
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

    .line 288
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private hwVideoEditor()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->release()V

    .line 131
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    invoke-interface {v0}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onFinish()V

    return-void

    .line 134
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v1, v1, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v3, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v3, v3, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7918

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 135
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/editor/VideoEditorHelper$1;

    invoke-direct {v1, p0}, Lcn/nubia/video/editor/VideoEditorHelper$1;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    invoke-virtual {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->release()V

    return-void

    .line 144
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v1, v0}, Lcn/nubia/video/editor/VideoEditorHelper;->isLowSpace(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->release()V

    return-void

    .line 151
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->showProgressDialog()V

    .line 152
    new-instance v1, Lcn/nubia/video/editor/SlomoVideoEditor;

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-boolean v4, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcn/nubia/video/editor/SlomoVideoEditor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/video/editor/VideoEditorInfo;Z)V

    iput-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    .line 153
    new-instance v0, Lcn/nubia/video/editor/VideoEditorHelper$2;

    invoke-direct {v0, p0}, Lcn/nubia/video/editor/VideoEditorHelper$2;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;)V

    invoke-virtual {v1, v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->setOnErrorListener(Lcn/nubia/videogenerator/common/Generator$OnErrorListener;)V

    .line 174
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    iget-wide v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoDuration:J

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/editor/SlomoVideoEditor;->setMaxDuration(J)V

    .line 175
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-virtual {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->setVideoParams()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    iget-object v1, v1, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/editor/SlomoVideoEditor;->setOutputPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    new-instance v1, Lcn/nubia/video/editor/VideoEditorHelper$3;

    invoke-direct {v1, p0}, Lcn/nubia/video/editor/VideoEditorHelper$3;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/editor/SlomoVideoEditor;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    new-instance v1, Lcn/nubia/video/editor/VideoEditorHelper$4;

    invoke-direct {v1, p0}, Lcn/nubia/video/editor/VideoEditorHelper$4;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/editor/SlomoVideoEditor;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    .line 235
    :try_start_1
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-virtual {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->startEdit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private init()V
    .locals 9

    .line 66
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mSlomoSkipCount:I

    const-wide/16 v1, 0x0

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v3, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v3, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mSlomoSkipCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 68
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mSlomoSkipCount:I

    int-to-long v7, v0

    div-long/2addr v5, v7

    goto :goto_1

    :cond_1
    move-wide v5, v1

    goto :goto_1

    :cond_2
    move-wide v3, v1

    move-wide v5, v3

    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    cmp-long v7, v5, v1

    if-lez v7, :cond_3

    .line 72
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    :goto_2
    sub-long/2addr v0, v7

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    cmp-long v7, v5, v1

    if-lez v7, :cond_4

    .line 74
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    cmp-long v7, v5, v1

    if-nez v7, :cond_5

    .line 76
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    cmp-long v0, v5, v1

    if-nez v0, :cond_6

    .line 78
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    goto :goto_2

    .line 80
    :cond_6
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mEndSpeedChange:J

    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v7, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mStartSpeedChange:J

    goto :goto_2

    :goto_3
    add-long/2addr v3, v0

    add-long/2addr v3, v5

    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    .line 82
    iput-wide v3, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoDuration:J

    .line 83
    iget-boolean v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    if-eqz v0, :cond_7

    .line 84
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    const-string v3, "\'Wallpaper\'_yyyyMMdd_HHmmss"

    invoke-static {v3, v0, v1, v2}, Lcn/nubia/video/editor/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    goto :goto_4

    .line 88
    :cond_7
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mIsWallPaper:Z

    const-string v3, "\'EDIT\'_yyyyMMdd_HHmmss"

    invoke-static {v3, v0, v1, v2}, Lcn/nubia/video/editor/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcn/nubia/video/editor/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mDstFileInfo:Lcn/nubia/video/editor/SaveVideoFileInfo;

    .line 92
    :goto_4
    new-instance v0, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/editor/VideoEditorHelper$MyHandler;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;Lcn/nubia/video/editor/VideoEditorHelper$1;)V

    iput-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isLowSpace(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 297
    iget-object p1, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget p1, p1, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    if-lez p1, :cond_1

    .line 298
    invoke-direct {p0, p2}, Lcn/nubia/video/editor/VideoEditorHelper;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide p1

    .line 299
    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mTrimMode:I

    if-nez v2, :cond_0

    .line 300
    iget-object v2, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v2, v2, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v4, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v4, v4, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, v0

    iget-object v4, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v4, v4, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v4, v4, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    int-to-long v4, v4

    iget-object v6, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v6, v6, Lcn/nubia/video/editor/VideoEditorInfo;->mEndClip:J

    iget-object v8, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget-wide v8, v8, Lcn/nubia/video/editor/VideoEditorInfo;->mStartClip:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    iget-object v4, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mInfo:Lcn/nubia/video/editor/VideoEditorInfo;

    iget v4, v4, Lcn/nubia/video/editor/VideoEditorInfo;->mDuration:I

    mul-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const-wide/32 v0, 0x200000

    add-long/2addr v2, v0

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private showProgressDialog()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/video/editor/VideoEditorHelper$5;

    invoke-direct {v1, p0}, Lcn/nubia/video/editor/VideoEditorHelper$5;-><init>(Lcn/nubia/video/editor/VideoEditorHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/editor/VideoEditorHelper;->mVideoEditor:Lcn/nubia/video/editor/SlomoVideoEditor;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->stop()V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->cleanProgressDialog()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 256
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public startEditVideo()V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcn/nubia/video/editor/VideoEditorHelper;->hwVideoEditor()V

    return-void
.end method
