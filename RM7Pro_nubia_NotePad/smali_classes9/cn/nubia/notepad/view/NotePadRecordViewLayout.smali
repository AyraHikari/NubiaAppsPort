.class public Lcn/nubia/notepad/view/NotePadRecordViewLayout;
.super Landroid/widget/LinearLayout;
.source "NotePadRecordViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/NotePadRecordViewLayout$AMRMode;,
        Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotePadRecordViewLayout"


# instance fields
.field private MAX_WAIT_COUNT:I

.field private final MSG_ADD_AMP:I

.field private final MSG_RECORD_INIT_FAILED:I

.field private final MSG_RECORD_STOP:I

.field private final MSG_UPDATE_NOTIFICATION:I

.field private final MSG_UPDATE_TIME:I

.field private final O_CHANNEL_ID:Ljava/lang/String;

.field private final RECORDING_NOTIFICATION:I

.field private final SAMPLE_RATE_IN_HZ:I

.field private count:I

.field private degrees:D

.field private filePath:Ljava/lang/String;

.field private finalRecordFile:Ljava/io/File;

.field private isKilled:Z

.field private isStoppedAndSave:Z

.field private isStoppedByDestroy:Z

.field private mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

.field private mAmplitudeArray:[I

.field private mAmr:Lcn/nubia/soundrecorder/encode/AMRNBEncoder;

.field private mBufferSizeInBytes:I

.field private mContext:Landroid/content/Context;

.field mFileOutputStream:Ljava/io/FileOutputStream;

.field private mIsFinish:Z

.field private mIsFromThird:Z

.field private mMaxAmplitude:I

.field private mNoteId:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

.field mRecordHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mRecordLeftButton:Landroid/widget/ImageView;

.field private mRecordRightButton:Landroid/widget/ImageView;

.field private mRecordRunnable:Ljava/lang/Runnable;

.field private mRecordThread:Ljava/lang/Thread;

.field private mRecordTime:Landroid/widget/TextView;

.field private mRecordWaveView:Lcn/nubia/notepad/view/VisualizerView;

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

.field private mSeagments:I

.field private mSoundRecorderFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimer:Ljava/util/Timer;

.field private mTrackMaxAmplitude:Z

.field private mView:Landroid/view/View;

.field private mWaveView:Lcn/nubia/notepad/view/WaveView;

.field private obj:Ljava/lang/Object;

.field private recordFileDir:Ljava/io/File;

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MSG_UPDATE_TIME:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MSG_ADD_AMP:I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MSG_UPDATE_NOTIFICATION:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->RECORDING_NOTIFICATION:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MSG_RECORD_INIT_FAILED:I

    .line 67
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MSG_RECORD_STOP:I

    .line 68
    const/16 v0, 0x3e80

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->SAMPLE_RATE_IN_HZ:I

    .line 69
    const-string v0, "notepad_record"

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->O_CHANNEL_ID:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    .line 79
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->filePath:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSeagments:I

    .line 82
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    .line 83
    iput-boolean v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTrackMaxAmplitude:Z

    .line 84
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFinish:Z

    .line 85
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFromThird:Z

    .line 86
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedByDestroy:Z

    .line 87
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedAndSave:Z

    .line 88
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isKilled:Z

    .line 89
    iput v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mMaxAmplitude:I

    .line 91
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    .line 93
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordThread:Ljava/lang/Thread;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->obj:Ljava/lang/Object;

    .line 95
    sget-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 97
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 98
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->degrees:D

    .line 104
    const/16 v0, 0x12

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MAX_WAIT_COUNT:I

    .line 105
    iget v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MAX_WAIT_COUNT:I

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->count:I

    .line 106
    iput v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->value:I

    .line 107
    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmr:Lcn/nubia/soundrecorder/encode/AMRNBEncoder;

    .line 193
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$1;-><init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 444
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$3;-><init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordRunnable:Ljava/lang/Runnable;

    .line 127
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    .line 128
    check-cast p1, Lcn/nubia/notepad/NotePadEditorActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFromThird:Z

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/notepad/view/NotePadRecordViewLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFromThird:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/notepad/view/NotePadRecordViewLayout;Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;)Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;
    .param p1, "x1"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    return-object p1
.end method

.method static synthetic access$1300(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->addAmplitudeAction()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->pauseRecording()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/view/NotePadRecordViewLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedByDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedAndSave:Z

    return v0
.end method

.method private addAmplitudeAction()V
    .locals 6

    .prologue
    const/16 v5, 0x78

    .line 413
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    if-nez v2, :cond_0

    .line 414
    new-array v2, v5, [I

    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    .line 416
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 417
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    aget v4, v4, v0

    aput v4, v2, v3

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    const/16 v3, 0x77

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getMaxAmplitude()I

    move-result v4

    aput v4, v2, v3

    .line 420
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    const/16 v1, 0xc8

    .line 422
    .local v1, "scale":I
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordWaveView:Lcn/nubia/notepad/view/VisualizerView;

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mAmplitudeArray:[I

    invoke-virtual {v2, v3, v1}, Lcn/nubia/notepad/view/VisualizerView;->updateVisualizerData([II)V

    .line 423
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordWaveView:Lcn/nubia/notepad/view/VisualizerView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/VisualizerView;->updateVisualizer()V

    .line 425
    return-void
.end method

.method private combineAllRecordFiles()V
    .locals 12

    .prologue
    .line 795
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 796
    .local v6, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 797
    .local v0, "curDate":Ljava/util/Date;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "record.var"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "finalRecordFileName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v10, v10, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v10, v10, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    .line 799
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 800
    .local v5, "finalRecordFilePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    .line 801
    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 803
    :try_start_0
    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v3, "filePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 814
    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 815
    .local v8, "tempFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 804
    .end local v3    # "filePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v8    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 817
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "filePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "i":I
    :cond_1
    invoke-static {v3, v5}, Lnubia/notepad/utils/PcmToWav;->mergePCMFilesToWAVFile(Ljava/util/List;Ljava/lang/String;)Z

    .line 818
    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 819
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 821
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    iget-object v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 822
    const/4 v9, 0x1

    iput v9, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSeagments:I

    .line 823
    return-void
.end method

.method private getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 400
    .local v1, "nowDate":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 401
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLargerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 381
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 383
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 388
    if-eqz v1, :cond_0

    .line 389
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-object v2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    if-eqz v1, :cond_0

    .line 389
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 391
    :catch_2
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 388
    if-eqz v1, :cond_1

    .line 389
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 394
    :cond_1
    :goto_1
    throw v3

    .line 391
    :catch_3
    move-exception v0

    .line 392
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private pauseRecording()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordLeftButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    .line 691
    :cond_0
    sget-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 692
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->updateNotificationRecordingState()V

    .line 696
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 267
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 269
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0035

    .line 270
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;-><init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V

    .line 269
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 285
    .local v0, "alertDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 286
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 287
    return-void
.end method

.method private showNotification(ILjava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    .line 326
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    .line 327
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v5, :cond_1

    .line 329
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_2

    .line 330
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v5, "notepad_record"

    const/4 v6, 0x2

    invoke-direct {v1, v5, p2, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 331
    .local v1, "channel":Landroid/app/NotificationChannel;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 332
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_0

    .line 333
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 335
    :cond_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const-string v7, "notepad_record"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 340
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-gt v5, v6, :cond_3

    .line 341
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v6, "Running"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "60"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    .line 342
    invoke-direct {p0, v6}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getLargerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 343
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 344
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "00:00"

    .line 345
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 347
    :try_start_0
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/notepad/utils/Util;->createIconNotification(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 366
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v4, "notificationIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const-class v6, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 373
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 374
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNoteId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 375
    return-void

    .line 337
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :cond_2
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 348
    :catch_0
    move-exception v3

    .line 349
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 352
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, "b1":Landroid/os/Bundle;
    const-string v5, "nubiaSort"

    const-string v6, "Running"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "70"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/notepad/utils/Util;->createIconNotification(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 355
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 356
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 357
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "00:00"

    .line 358
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 359
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 363
    .end local v0    # "b1":Landroid/os/Bundle;
    :pswitch_0
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private startRecording()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFinish:Z

    .line 657
    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFromThird:Z

    .line 658
    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedByDestroy:Z

    .line 659
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordRightButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200a8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordLeftButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200ac

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    .line 664
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_0
    sget-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 668
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordWaveView:Lcn/nubia/notepad/view/VisualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/VisualizerView;->setEnabled(Z)V

    .line 669
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordThread:Ljava/lang/Thread;

    .line 670
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 671
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$4;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout$4;-><init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 680
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x4

    .line 681
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 680
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 682
    return-void
.end method

.method private trackMaxAmplitude([SI)V
    .locals 3
    .param p1, "buffer"    # [S
    .param p2, "bufferLength"    # I

    .prologue
    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 605
    iget v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mMaxAmplitude:I

    aget-short v2, p1, v0

    if-ge v1, v2, :cond_0

    .line 606
    aget-short v1, p1, v0

    iput v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mMaxAmplitude:I

    .line 604
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_1
    return-void
.end method


# virtual methods
.method public Shorts2Bytes([S)[B
    .locals 7
    .param p1, "s"    # [S

    .prologue
    .line 617
    const/4 v0, 0x2

    .line 618
    .local v0, "bLength":B
    array-length v5, p1

    mul-int/2addr v5, v0

    new-array v1, v5, [B

    .line 619
    .local v1, "buf":[B
    const/4 v2, 0x0

    .local v2, "iLoop":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 620
    aget-short v5, p1, v2

    invoke-virtual {p0, v5}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getBytes(S)[B

    move-result-object v4

    .line 621
    .local v4, "temp":[B
    const/4 v3, 0x0

    .local v3, "jLoop":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 622
    mul-int v5, v2, v0

    add-int/2addr v5, v3

    aget-byte v6, v4, v3

    aput-byte v6, v1, v5

    .line 621
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 619
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v3    # "jLoop":I
    .end local v4    # "temp":[B
    :cond_1
    return-object v1
.end method

.method protected amrRecord()V
    .locals 15

    .prologue
    .line 460
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v12, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 461
    .local v12, "format":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 462
    .local v8, "curDate":Ljava/util/Date;
    invoke-virtual {v12, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 463
    .local v11, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSeagments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "record.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 464
    iget v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSeagments:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSeagments:I

    .line 465
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->recordFileDir:Ljava/io/File;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->recordFileDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->filePath:Ljava/lang/String;

    .line 467
    const-string v0, "NotePadRecordViewLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amrRecord: filePath= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v10, Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->filePath:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v10, "file":Ljava/io/File;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mBufferSizeInBytes:I

    .line 490
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mBufferSizeInBytes:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 501
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    .line 601
    :cond_1
    :goto_1
    return-void

    .line 474
    :catch_0
    move-exception v9

    .line 475
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 476
    const-string v0, "notepad_preset"

    const-string v1, "file1  error : "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 480
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 481
    :catch_1
    move-exception v9

    .line 482
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 483
    const-string v0, "notepad_preset"

    const-string v1, "file2  error : "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 493
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 494
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 495
    .local v13, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 497
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    const-string v0, "notepad_preset"

    const-string v1, "mRecorder  error : "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 505
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 506
    .local v14, "path":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    const-string v0, "notepad_preset"

    const-string v1, "mRecorder file path not correct or file not exists !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 511
    :cond_4
    iget v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mBufferSizeInBytes:I

    div-int/lit8 v0, v0, 0x2

    new-array v6, v0, [S

    .line 516
    .local v6, "amrTempBuffer":[S
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 521
    :goto_2
    :try_start_4
    const-string v0, "notepad_preset"

    const-string v1, "mRecorder begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 523
    const-string v0, "notepad_preset"

    const-string v1, "mRecorder end  "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 535
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 536
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 537
    .restart local v13    # "msg":Landroid/os/Message;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 517
    .end local v13    # "msg":Landroid/os/Message;
    :catch_3
    move-exception v9

    .line 518
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 524
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v9

    .line 525
    .local v9, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 526
    .restart local v13    # "msg":Landroid/os/Message;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 530
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .end local v13    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v9

    .line 531
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    const-string v0, "notepad_preset"

    const-string v1, "mRecorder error : "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 541
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_7

    .line 542
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mBufferSizeInBytes:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v7

    .line 544
    .local v7, "bufferRead":I
    if-ltz v7, :cond_5

    .line 545
    const-string v0, "notepad_preset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amrTempBuffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v0, "notepad_preset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrackMaxAmplitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTrackMaxAmplitude:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v6, :cond_5

    .line 548
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_5
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTrackMaxAmplitude:Z

    if-eqz v0, :cond_6

    .line 550
    invoke-direct {p0, v6, v7}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->trackMaxAmplitude([SI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 553
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->Shorts2Bytes([S)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    :goto_4
    :try_start_7
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 554
    :catch_6
    move-exception v9

    .line 555
    .local v9, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 566
    .end local v7    # "bufferRead":I
    .end local v9    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_9
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_8

    .line 567
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 572
    :cond_8
    :goto_5
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_a
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    .line 574
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 575
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 576
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    .line 580
    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 582
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 588
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 589
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isKilled:Z

    if-nez v0, :cond_a

    .line 590
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->combineAllRecordFiles()V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isKilled:Z

    .line 593
    :cond_a
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 594
    .restart local v13    # "msg":Landroid/os/Message;
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 569
    .end local v13    # "msg":Landroid/os/Message;
    :catch_7
    move-exception v9

    .line 570
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 580
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method

.method public cancleRecordNotification()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 410
    :cond_0
    return-void
.end method

.method public delRecording()Landroid/view/View;
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 782
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 784
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    .line 786
    :cond_1
    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 787
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 788
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 790
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mSoundRecorderFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 791
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mView:Landroid/view/View;

    return-object v1
.end method

.method public getBytes(S)[B
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 645
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->testCPU()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->getBytes(SZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(SZ)[B
    .locals 3
    .param p1, "s"    # S
    .param p2, "bBigEnding"    # Z

    .prologue
    .line 629
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 630
    .local v0, "buf":[B
    if-eqz p2, :cond_0

    .line 631
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 632
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 633
    shr-int/lit8 v2, p1, 0x8

    int-to-short p1, v2

    .line 631
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 636
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 637
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 638
    shr-int/lit8 v2, p1, 0x8

    int-to-short p1, v2

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 641
    :cond_1
    return-object v0
.end method

.method public getFinalRecordFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    return-object v0
.end method

.method public getMaxAmplitude()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-boolean v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTrackMaxAmplitude:Z

    if-eqz v2, :cond_0

    .line 429
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTrackMaxAmplitude:Z

    .line 430
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mMaxAmplitude:I

    iput v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->value:I

    .line 431
    iput v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mMaxAmplitude:I

    .line 434
    :cond_0
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->count:I

    if-ltz v2, :cond_1

    .line 435
    iget-wide v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->degrees:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->degrees:D

    .line 440
    :goto_0
    iget-wide v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->degrees:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 441
    .local v0, "radians":D
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->value:I

    mul-int/lit16 v2, v2, 0x251c

    div-int/lit16 v2, v2, 0x61a8

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .line 437
    .end local v0    # "radians":D
    :cond_1
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->MAX_WAIT_COUNT:I

    iput v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->count:I

    .line 438
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTrackMaxAmplitude:Z

    goto :goto_0
.end method

.method public initView(I)Landroid/view/View;
    .locals 4
    .param p1, "noteId"    # I

    .prologue
    .line 133
    iput p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNoteId:I

    .line 134
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordTime:Landroid/widget/TextView;

    .line 137
    const v1, 0x7f0f0093

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordRightButton:Landroid/widget/ImageView;

    .line 139
    const v1, 0x7f0f0092

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordLeftButton:Landroid/widget/ImageView;

    .line 141
    const v1, 0x7f0f0094

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/view/VisualizerView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordWaveView:Lcn/nubia/notepad/view/VisualizerView;

    .line 143
    const v1, 0x7f0f0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/view/WaveView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mWaveView:Lcn/nubia/notepad/view/WaveView;

    .line 144
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordWaveView:Lcn/nubia/notepad/view/VisualizerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/VisualizerView;->setSoundEffectsEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    new-instance v1, Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;-><init>(Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;)V

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    .line 150
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->startRecording()V

    .line 152
    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mView:Landroid/view/View;

    .line 153
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_1

    .line 161
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->startRecording()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_0

    .line 163
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->pauseRecording()V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_2

    .line 168
    invoke-virtual {p0, v2, v2}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecording(ZZ)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 171
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 174
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->combineAllRecordFiles()V

    .line 175
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->finalRecordFile:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->changeToPlayerView(Landroid/view/View;Ljava/io/File;)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0092
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKilled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 753
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->obj:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    .line 755
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 756
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 757
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorder:Landroid/media/AudioRecord;

    .line 761
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 766
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isKilled:Z

    .line 767
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->combineAllRecordFiles()V

    .line 769
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->destroyPlayerView(Landroid/view/View;)V

    .line 775
    return-void

    .line 761
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pausePlayingOrRecording()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->RECORDING:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->pauseRecording()V

    .line 187
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a008d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_0
    return-void
.end method

.method public saveRecord()V
    .locals 4

    .prologue
    .line 720
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 725
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    .line 727
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v2, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v1, v2, :cond_2

    .line 728
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 729
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 730
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->combineAllRecordFiles()V

    .line 731
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 735
    return-void
.end method

.method public stopRecording(ZZ)V
    .locals 4
    .param p1, "isFinish"    # Z
    .param p2, "fromThird"    # Z

    .prologue
    const/4 v3, 0x0

    .line 699
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFinish:Z

    .line 703
    iput-boolean p2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mIsFromThird:Z

    .line 704
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedByDestroy:Z

    .line 705
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 706
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 707
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    .line 709
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v2, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v1, v2, :cond_2

    .line 710
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 711
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 712
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->combineAllRecordFiles()V

    .line 713
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 714
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 717
    return-void
.end method

.method public stopRecordingByDestroy(Z)V
    .locals 3
    .param p1, "isDestory"    # Z

    .prologue
    .line 738
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedByDestroy:Z

    .line 742
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->isStoppedAndSave:Z

    .line 743
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 744
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 745
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mTimer:Ljava/util/Timer;

    .line 749
    :cond_1
    sget-object v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 750
    return-void
.end method

.method public testCPU()Z
    .locals 2

    .prologue
    .line 649
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 650
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateNotification(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 292
    const-string v0, ""

    .line 293
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mActivity:Lcn/nubia/notepad/NotePadEditorActivity;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-direct {p0, p1, v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->showNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected updateNotificationRecordingState()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecorderState:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->PAUSED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 318
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 319
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNoteId:I

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 322
    :cond_1
    return-void
.end method

.method protected updateNotificationRecordingTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0a008f

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 306
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 307
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNoteId:I

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 310
    :cond_0
    return-void
.end method
