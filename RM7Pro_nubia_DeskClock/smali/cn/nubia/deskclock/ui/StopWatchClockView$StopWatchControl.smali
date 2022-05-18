.class Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;
.super Ljava/lang/Object;
.source "StopWatchClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopWatchControl"
.end annotation


# static fields
.field public static final TIME_IS_MAX:I = 0x507


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsRun:Z

.field private mTimeRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V
    .locals 1

    .prologue
    .line 657
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mIsRun:Z

    .line 666
    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$1;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mHandler:Landroid/os/Handler;

    .line 658
    return-void
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    .prologue
    .line 652
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->clearTimeRunnable()V

    return-void
.end method

.method private clearTimeRunnable()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 681
    :cond_0
    return-void
.end method

.method private newTimeRunnable()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl$2;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 696
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public StopTiming()V
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mIsRun:Z

    .line 709
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->clearTimeRunnable()V

    .line 710
    return-void
.end method

.method public clearTimingAsync()V
    .locals 3

    .prologue
    .line 661
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 662
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x507

    iput v1, v0, Landroid/os/Message;->what:I

    .line 663
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 664
    return-void
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mIsRun:Z

    if-nez v0, :cond_0

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->mIsRun:Z

    .line 703
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->newTimeRunnable()V

    .line 705
    :cond_0
    return-void
.end method
