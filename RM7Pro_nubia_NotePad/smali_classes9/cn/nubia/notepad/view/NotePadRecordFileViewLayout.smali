.class public Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;
.super Landroid/widget/LinearLayout;
.source "NotePadRecordFileViewLayout.java"

# interfaces
.implements Ljava/util/Observer;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;
    }
.end annotation


# instance fields
.field private MAX_WAIT_COUNT:I

.field private final MSG_ADD_AMP:I

.field private count:I

.field private degrees:D

.field private mAmplitudeArray:[I

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsPlayingIndicatorVisible:Z

.field private mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayerResourceFile:Ljava/io/File;

.field private mRecordFileName:Landroid/widget/TextView;

.field private mRecordFileTime:Landroid/widget/TextView;

.field public mRecordFileViewBodyLayout:Landroid/widget/LinearLayout;

.field mRecordHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

.field private random:Ljava/util/Random;

.field private step:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MSG_ADD_AMP:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    .line 48
    const/16 v0, 0x12

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    .line 49
    iget v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->count:I

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->random:Ljava/util/Random;

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->step:I

    .line 93
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MSG_ADD_AMP:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    .line 48
    const/16 v0, 0x12

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    .line 49
    iget v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->count:I

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->random:Ljava/util/Random;

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->step:I

    .line 93
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MSG_ADD_AMP:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    .line 48
    const/16 v0, 0x12

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    .line 49
    iget v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->count:I

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->random:Ljava/util/Random;

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->step:I

    .line 93
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$1;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$3;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mPlayerResourceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->addAmplitudeAction()V

    return-void
.end method

.method private declared-synchronized addAmplitudeAction()V
    .locals 6

    .prologue
    const/16 v5, 0x78

    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    if-nez v2, :cond_0

    .line 250
    const/16 v2, 0x78

    new-array v2, v2, [I

    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    .line 252
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 253
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    aget v4, v4, v0

    aput v4, v2, v3

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    const/16 v3, 0x77

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->getMaxAmplitude()I

    move-result v4

    aput v4, v2, v3

    .line 256
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 257
    const/16 v1, 0xc8

    .line 258
    .local v1, "scale":I
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    invoke-virtual {v2, v3, v1}, Lcn/nubia/notepad/view/VisualizerView;->updateVisualizerData([II)V

    .line 259
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/VisualizerView;->updateVisualizer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "i":I
    .end local v1    # "scale":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized cleanAmplitudeAction()V
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mAmplitudeArray:[I

    .line 244
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    .line 245
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/VisualizerView;->clearLines()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPlayerFileDateTitle(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "playerResourceFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 134
    const-string v8, ""

    .line 135
    .local v8, "time":Ljava/lang/String;
    const-string v4, ""

    .line 136
    .local v4, "playerFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "playerFilePath":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 138
    .local v7, "start":I
    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v2, v9, -0x6

    .line 139
    .local v2, "end":I
    if-eq v7, v10, :cond_0

    if-eq v2, v10, :cond_0

    .line 140
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 142
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMddHHmmss"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 145
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    .line 150
    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 151
    return-object v8

    .line 146
    .end local v3    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPausedIndicatorState()V
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 184
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mPlayerResourceFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    .line 188
    invoke-interface {v0}, Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;->getCurrentPlayingRecordFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    .line 189
    invoke-interface {v0}, Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;->getCurrentPlayingRecordFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mPlayerResourceFile:Ljava/io/File;

    if-ne v0, v1, :cond_3

    .line 191
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mIsPlayingIndicatorVisible:Z

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/VisualizerView;->setVisibility(I)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/VisualizerView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->cleanAmplitudeAction()V

    goto :goto_0
.end method

.method private setPlayingIndicatorState(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0xc8

    .line 155
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mPlayerResourceFile:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    .line 159
    invoke-interface {v0}, Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;->getCurrentPlayingRecordFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    .line 160
    invoke-interface {v0}, Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;->getCurrentPlayingRecordFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mPlayerResourceFile:Ljava/io/File;

    if-ne v0, v1, :cond_4

    .line 161
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mIsPlayingIndicatorVisible:Z

    if-eq v0, p1, :cond_2

    .line 162
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mIsPlayingIndicatorVisible:Z

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mIsPlayingIndicatorVisible:Z

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/VisualizerView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    invoke-virtual {v0, v3}, Lcn/nubia/notepad/view/VisualizerView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->cleanAmplitudeAction()V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    invoke-virtual {v0, v3}, Lcn/nubia/notepad/view/VisualizerView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->cleanAmplitudeAction()V

    goto :goto_0
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 6

    .prologue
    .line 263
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->count:I

    if-ltz v2, :cond_0

    .line 264
    iget-wide v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    .line 270
    :goto_0
    iget-wide v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->degrees:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 271
    .local v0, "radians":D
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->step:I

    mul-int/lit16 v2, v2, 0x251c

    div-int/lit8 v2, v2, 0xa

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .line 266
    .end local v0    # "radians":D
    :cond_0
    iget v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->MAX_WAIT_COUNT:I

    iput v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->count:I

    .line 267
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->random:Ljava/util/Random;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    iput v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->step:I

    goto :goto_0
.end method

.method public getRecordFileTotalTime(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "playerResourceFile"    # Ljava/io/File;

    .prologue
    .line 102
    const-string v1, ""

    .line 103
    .local v1, "totalTime":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 105
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 106
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 108
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 110
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 111
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initView(Ljava/io/File;Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;)V
    .locals 2
    .param p1, "playerResourceFile"    # Ljava/io/File;
    .param p2, "listener"    # Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    .prologue
    .line 69
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    .line 70
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mPlayerResourceFile:Ljava/io/File;

    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->getPlayerFileDateTitle(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;

    invoke-direct {v1, p0, p1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$TaskForSetTotalTime;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->getInstance()Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->addObserver(Ljava/util/Observer;)V

    .line 286
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 287
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->getInstance()Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->deleteObserver(Ljava/util/Observer;)V

    .line 292
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 296
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 220
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileName:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileTime:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/VisualizerView;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    .line 223
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordPlayingIndicator:Lcn/nubia/notepad/view/VisualizerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/VisualizerView;->setSoundEffectsEnabled(Z)V

    .line 224
    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileViewBodyLayout:Landroid/widget/LinearLayout;

    .line 225
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileViewBodyLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;-><init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mEditText:Landroid/widget/EditText;

    .line 237
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 238
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public showTime(I)Ljava/lang/String;
    .locals 7
    .param p1, "time"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 120
    div-int/lit16 p1, p1, 0x3e8

    .line 121
    div-int/lit8 v1, p1, 0x3c

    .line 122
    .local v1, "minute":I
    div-int/lit8 v0, v1, 0x3c

    .line 123
    .local v0, "hour":I
    rem-int/lit8 v2, p1, 0x3c

    .line 124
    .local v2, "second":I
    rem-int/lit8 v1, v1, 0x3c

    .line 125
    if-nez v0, :cond_0

    .line 126
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 128
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "59:59"

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/util/Observable;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 208
    move-object v0, p2

    check-cast v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 209
    .local v0, "mode":Lcn/nubia/notepad/enums/MediaPlayerState;
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_1

    .line 210
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->setPlayingIndicatorState(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_2

    .line 212
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->setPausedIndicatorState()V

    goto :goto_0

    .line 213
    :cond_2
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->setPlayingIndicatorState(Z)V

    goto :goto_0
.end method
