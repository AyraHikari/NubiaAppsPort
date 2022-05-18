.class public Lcn/nubia/deskclock/fragment/CountdownFragment;
.super Lcn/nubia/deskclock/fragment/BaseFragment;
.source "CountdownFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcn/nubia/deskclock/inter/ICountDownCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;
    }
.end annotation


# static fields
.field private static final BUTTON_RESTART:I = 0x234

.field private static final COMPENSATE_TIME:I = 0x1

.field public static final COUNTDOWN:Ljava/lang/String; = "COUNTDOWN"

.field public static final COUNTDOWN_ACTION:Ljava/lang/String; = "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

.field public static final COUNTDOWN_CLOSE_ACTION:Ljava/lang/String; = "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION"

.field public static final COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION:Ljava/lang/String; = "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION"

.field public static final COUNTDOWN_CLOSE_COUNTDOWN_ALERT_ACTIVITY:Ljava/lang/String; = "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_COUNTDOWN_ALERT_ACTIVITY"

.field public static final COUNTDOWN_RESET_ACTION:Ljava/lang/String; = "com.nubia.deskclock.countdown.action.COUNTDOWN_RESET_ACTION"

.field public static final COUNTDOWN_SHORTCUT_LABEL:Ljava/lang/String; = "countdown_shortcut"

.field public static final COUNT_HANDLER_ANIM:I = 0x231

.field private static final CUSTOM_COUNTDOWN:Ljava/lang/String; = "custom_countdown"

.field private static final DEBUG:Z = true

.field private static final DIALOG_CLICK_START:I = 0x233

.field private static final ITEM_CLICK_START:I = 0x232

.field public static final PLAY_STATE:Ljava/lang/String; = "PLAY_STATE"

.field private static final START_COUNTDOWN_KEY_UMENG:Ljava/lang/String; = "start_countdown"

.field public static final STATUS_INIT:I = -0x1

.field private static final STATUS_PAUSE:I = 0x1

.field private static final STATUS_PLAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CountdownFragment"


# instance fields
.field private isVisibility:Z

.field private mAction:Ljava/lang/String;

.field private mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mControlHandler:Landroid/os/Handler;

.field private mCountDownLv:Landroid/widget/ListView;

.field private mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

.field private mCountdownHandler:Landroid/os/Handler;

.field private mDeleteButton:Landroid/widget/Button;

.field private mEnabelDeleteButton:Z

.field private mFinalTime:J

.field private mIsCurrentFragment:Z

.field private mIsDialogClick:Z

.field private mIsInActionMode:Z

.field private mIsItemClick:Z

.field private mLastClickTime:J

.field private mLastItemClickTime:J

.field private mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

.field private mNewBtn:Landroid/widget/TextView;

.field private mNewBtnListener:Landroid/view/View$OnClickListener;

.field private mResetBtn:Landroid/widget/TextView;

.field private mResetBtnListener:Landroid/view/View$OnClickListener;

.field private mSelectImageView:Landroid/widget/ImageView;

.field private mStartSecond:I

.field private mStatus:I

.field private mStopBtn:Landroid/widget/TextView;

.field private mStopBtnListener:Landroid/view/View$OnClickListener;

.field private mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

.field private mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

.field private mhandler:Landroid/os/Handler;

.field private needAddList:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;-><init>()V

    .line 79
    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastClickTime:J

    .line 80
    iput-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    .line 81
    iput-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsDialogClick:Z

    .line 82
    iput-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsItemClick:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mEnabelDeleteButton:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 87
    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 89
    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastItemClickTime:J

    .line 109
    iput-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->isVisibility:Z

    .line 110
    new-instance v0, Lcn/nubia/deskclock/fragment/CountdownFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$1;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mhandler:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcn/nubia/deskclock/fragment/CountdownFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$2;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtnListener:Landroid/view/View$OnClickListener;

    .line 507
    new-instance v0, Lcn/nubia/deskclock/fragment/CountdownFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$3;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtnListener:Landroid/view/View$OnClickListener;

    .line 520
    new-instance v0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$4;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtnListener:Landroid/view/View$OnClickListener;

    .line 889
    new-instance v0, Lcn/nubia/deskclock/fragment/CountdownFragment$5;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$5;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private AssistantStartCountDown()V
    .locals 3

    .prologue
    .line 1183
    const-string v0, "CountdownFragment"

    const-string v1, " [AssistantStartCountDown] start "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v0, "AssistantStartCountDown"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1186
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1187
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resumeCountDown()V

    .line 1188
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1189
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resetCountdown()V

    .line 1196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readAssisTimeFromPref(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 1197
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [AssistantStartCountDown]  mStartSecond : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/fragment/CountdownFragment$9;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$9;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1226
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1227
    return-void

    .line 1190
    :cond_2
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-nez v0, :cond_0

    .line 1191
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStop()V

    .line 1192
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resetCountdown()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->itemStartCountdown()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->selectAllCountdown()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/adapter/CountDownAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mEnabelDeleteButton:Z

    return p1
.end method

.method static synthetic access$1700(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    return v0
.end method

.method static synthetic access$1702(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsDialogClick:Z

    return v0
.end method

.method static synthetic access$1802(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsDialogClick:Z

    return p1
.end method

.method static synthetic access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    return v0
.end method

.method static synthetic access$1902(Lcn/nubia/deskclock/fragment/CountdownFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->dialogStartCountdown()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/deskclock/fragment/CountdownFragment;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-wide v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcn/nubia/deskclock/fragment/CountdownFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->startCountdown()V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->isVisibility:Z

    return v0
.end method

.method static synthetic access$2400(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->startAlarmManager()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/model/CountDownModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    return-object v0
.end method

.method static synthetic access$2600(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->restartCountDown()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/fragment/CountdownFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->newCountdownDialog()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resetCountdown()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStop()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->pauseCountDown()V

    return-void
.end method

.method private addCountdownTime()V
    .locals 5

    .prologue
    .line 669
    const-string v2, "CountdownFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCountdownTime : second = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    if-nez v2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getCount()I

    move-result v1

    .line 675
    .local v1, "size":I
    const-string v2, "CountdownFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addCountdownTime: size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v0, Lcn/nubia/deskclock/model/CountItem;

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/model/CountItem;-><init>(II)V

    .line 677
    .local v0, "countdown":Lcn/nubia/deskclock/model/CountItem;
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->addCountdown(Lcn/nubia/deskclock/model/CountItem;)V

    .line 678
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private controlCountdownFromForceTouch()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 382
    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-nez v4, :cond_1

    .line 383
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopAlarm()V

    .line 384
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopCountdownService()V

    .line 385
    iput v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 386
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setRemainingTime()V

    .line 387
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStop()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v5, v4, :cond_0

    .line 389
    iput v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 390
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getColseNotificationIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/deskclock/DeskClock;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeFromPref(Landroid/content/Context;)I

    move-result v2

    .line 392
    .local v2, "second":I
    mul-int/lit16 v4, v2, 0x3e8

    int-to-long v0, v4

    .line 393
    .local v0, "deltaTime":J
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcn/nubia/deskclock/model/CountDownModel;->setStartSecondAndlistener(ILjava/lang/Object;)V

    .line 394
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readCountDownTotalTimeFromPref(Landroid/content/Context;)I

    move-result v3

    .line 395
    .local v3, "totalTime":I
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v4, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 396
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v5, 0xfa6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStart()V

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 400
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v4, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 401
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v6, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 402
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private dialogStartCountdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [dialogStartCountdown] mStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    const-string v0, "CountdownFragment"

    const-string v1, " [dialogStartCountdown] mCountdownHandler or mCountDownModel is null "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/model/CountDownModel;->setStartSecondAndlistener(ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v0, v3, v3, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 161
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfa9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 165
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v0, v3, v3, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 168
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v0, v3, v3, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 170
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    goto :goto_0
.end method

.method private getColseNotificationIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, "closeNotificationIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1236
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.deskclock.preset"

    const-string v3, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1238
    :cond_0
    return-object v0
.end method

.method private getCountDownActionIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v0, "countDownActionIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1249
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.deskclock.preset"

    const-string v3, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1252
    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 223
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/DeskClock;

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    .line 224
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsCurrentFragment:Z

    .line 225
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/DeskClock;->getMainBottom(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "mButtonView":Landroid/view/View;
    const v1, 0x7f1200b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f1200b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    .line 228
    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    .line 229
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void

    .line 224
    .end local v0    # "mButtonView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private itemStartCountdown()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    const-string v2, "CountdownFragment"

    const-string v3, " [itemStartCountdown] "

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-nez v2, :cond_1

    .line 135
    :cond_0
    const-string v2, "CountdownFragment"

    const-string v3, " [itemStartCountdown] mCountdownHandler or mCountDownModel is null "

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/nubia/deskclock/model/CountDownModel;->setStartSecondAndlistener(ILjava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 140
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v3, 0xfa6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastItemClickTime:J

    .line 142
    iput-boolean v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    .line 143
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 144
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v2, v5, v5, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 145
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 146
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v2, v5, v5, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 147
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 148
    .local v0, "deltaTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 149
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStart()V

    .line 150
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    goto :goto_0
.end method

.method private newCountdownDialog()V
    .locals 12

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 459
    .local v8, "time":J
    iget-wide v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastClickTime:J

    sub-long v10, v8, v0

    .line 460
    .local v10, "timeD":J
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeD ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastClickTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastClickTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-wide/16 v0, 0x3e8

    cmp-long v0, v10, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastClickTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 462
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    .line 463
    new-instance v0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mMinuteAndSecondListener:Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;III)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    .line 465
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 466
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->show()V

    .line 467
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v1, "custom_countdown"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    .line 469
    invoke-virtual {v0, v7}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 470
    .local v6, "startButton":Landroid/widget/Button;
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-virtual {v0, v6}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->setButton(Landroid/widget/Button;)V

    .line 471
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->setButtonTextColor(II)V

    .line 473
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 475
    .end local v6    # "startButton":Landroid/widget/Button;
    :cond_1
    iput-wide v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastClickTime:J

    .line 476
    return-void
.end method

.method private pauseCountDown()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 538
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 539
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStop()V

    .line 540
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 541
    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownModel;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 540
    invoke-static {v0, v6, v6, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 542
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 543
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    .line 544
    return-void
.end method

.method private resetCountdown()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 556
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 557
    const/4 v1, 0x1

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setIsResetCountDown(Z)V

    .line 558
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewReset()V

    .line 559
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDigitText(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v2, 0xfaa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v1, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 564
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v3, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 565
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 566
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 567
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v3, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 568
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, "newIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v2, "countdown_shortcut"

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 570
    invoke-static {v1, v2, v3, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 572
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 573
    return-void
.end method

.method private restartCountDown()V
    .locals 6

    .prologue
    .line 547
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 548
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeFromPref(Landroid/content/Context;)I

    move-result v0

    .line 549
    .local v0, "second":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 550
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v1, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 551
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewContinue()V

    .line 552
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    .line 553
    return-void
.end method

.method private resumeCountDown()V
    .locals 9

    .prologue
    const/16 v8, 0xfaa

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 355
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-nez v2, :cond_2

    .line 356
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopAlarmManagerAndRun()V

    .line 357
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopCountdownService()V

    .line 374
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    :cond_1
    return-void

    .line 358
    :cond_2
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 359
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeFromPref(Landroid/content/Context;)I

    move-result v1

    .line 360
    .local v1, "second":I
    if-lez v1, :cond_3

    .line 361
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/model/CountDownModel;->setPauseTime(I)V

    .line 362
    :cond_3
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v3, 0xfad

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/Utils;->formatCountDownSecond(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDigitText(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    .line 365
    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 366
    .end local v1    # "second":I
    :cond_4
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "mSecond":I
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/Utils;->formatCountDownSecond(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDigitText(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    .line 370
    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewReset()V

    .line 372
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v6, v6}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    goto :goto_0
.end method

.method private saveStateToSharedPre(Z)V
    .locals 5
    .param p1, "isPlay"    # Z

    .prologue
    .line 662
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v3, "COUNTDOWN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 663
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 664
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PLAY_STATE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 666
    return-void
.end method

.method private selectAllCountdown()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->isSelectAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->unSelectall()V

    .line 909
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0200a7

    .line 910
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 909
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetInvalidated()V

    .line 917
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateActionModeViews()V

    .line 918
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0200a9

    .line 913
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 912
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 914
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->selectAll()V

    goto :goto_0
.end method

.method private setBtnInitStatus()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 683
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnInitStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    return-void
.end method

.method private setBtnPauseStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 700
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 702
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setViewEnable(Landroid/widget/TextView;Z)V

    .line 704
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 706
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setViewEnable(Landroid/widget/TextView;Z)V

    .line 708
    return-void
.end method

.method private setBtnPlayStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 690
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setViewEnable(Landroid/widget/TextView;Z)V

    .line 693
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setViewEnable(Landroid/widget/TextView;Z)V

    .line 695
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 696
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 697
    return-void
.end method

.method private setCountdownTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 982
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/model/CountDownModel;->setDeleteStateString(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setInitStatus()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 602
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setBtnInitStatus()V

    .line 603
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/fragment/CountdownFragment;->saveStateToSharedPre(Z)V

    .line 604
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setCountdownStatus(Z)V

    .line 607
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 608
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setPauseBgVisibility(I)V

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "newIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v2, "countdown_shortcut"

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-static {v1, v2, v3, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 612
    return-void
.end method

.method private setPauseBgVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/model/CountDownModel;->setPauseBgVisibility(I)V

    goto :goto_0
.end method

.method private setPauseStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 615
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setBtnPauseStatus()V

    .line 616
    invoke-direct {p0, v5}, Lcn/nubia/deskclock/fragment/CountdownFragment;->saveStateToSharedPre(Z)V

    .line 617
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsCurrentFragment:Z

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setCountdownStatus(Z)V

    .line 619
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 623
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.RESUME_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, "resumeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v2, "countdown_shortcut"

    .line 626
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-static {v1, v2, v3, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 627
    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsCurrentFragment:Z

    if-eqz v1, :cond_1

    .line 628
    invoke-direct {p0, v5}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setPauseBgVisibility(I)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setPauseBgVisibility(I)V

    goto :goto_0
.end method

.method private setPlayStatus()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 635
    const-string v1, "CountdownFragment"

    const-string v2, " [setPlayStatus] "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setBtnPlayStatus()V

    .line 637
    invoke-direct {p0, v3}, Lcn/nubia/deskclock/fragment/CountdownFragment;->saveStateToSharedPre(Z)V

    .line 638
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsCurrentFragment:Z

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1, v3}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setCountdownStatus(Z)V

    .line 640
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 644
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.PAUSE_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "pauseIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcn/nubia/deskclock/DeskClock;

    .line 647
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v2, "countdown_shortcut"

    .line 649
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-static {v1, v2, v3, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 650
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setPauseBgVisibility(I)V

    .line 651
    return-void
.end method

.method private setRemainingTime()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 412
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v7, "time_pref"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "countdown_finaltime"

    const-wide/16 v8, 0x0

    .line 413
    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 415
    .local v0, "currentElapsedTime":J
    const-string v6, "CountdownFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setRemainingTime currentElapsedTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ;; mFinalTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 417
    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    sub-long v2, v6, v0

    .line 418
    .local v2, "deltaTime":J
    long-to-int v6, v2

    div-int/lit16 v4, v6, 0x3e8

    .line 419
    .local v4, "second":I
    const-string v6, "CountdownFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setRemainingTime second : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-lez v4, :cond_0

    .line 421
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v6, v4}, Lcn/nubia/deskclock/model/CountDownModel;->setPauseTime(I)V

    .line 422
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readCountDownTotalTimeFromPref(Landroid/content/Context;)I

    move-result v5

    .line 423
    .local v5, "totalTime":I
    const-string v6, "CountdownFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setRemainingTime totalTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v6, v5}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 425
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v7, 0xfad

    .line 426
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v10, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 434
    .end local v2    # "deltaTime":J
    .end local v4    # "second":I
    .end local v5    # "totalTime":I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v6, v7}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 435
    return-void

    .line 430
    :cond_1
    const/4 v6, -0x1

    iput v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 431
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewReset()V

    .line 432
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v10, v10}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    goto :goto_0
.end method

.method private setViewEnable(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "b"    # Z

    .prologue
    .line 1143
    if-eqz p2, :cond_0

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1150
    :goto_0
    return-void

    .line 1147
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method private startAlarmManager()V
    .locals 6

    .prologue
    .line 711
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStop()V

    .line 712
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getCountDownActionIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 714
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAlarmManager: mFinalTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 716
    return-void
.end method

.method private startCountdown()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 479
    const-string v2, "CountdownFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [startCountdown] mStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 481
    iput v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 482
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getColseNotificationIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/DeskClock;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 484
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v2, v5, v5, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 485
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-static {v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 486
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 488
    .local v0, "deltaTime":J
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStart()V

    .line 489
    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    if-eqz v2, :cond_0

    .line 490
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->addCountdownTime()V

    .line 491
    iput-boolean v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    .line 493
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v3, "start_countdown"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    .end local v0    # "deltaTime":J
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    .line 504
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v6}, Lcn/nubia/deskclock/DeskClock;->setEmptyLayoutVisible(Z)V

    .line 505
    return-void

    .line 496
    :cond_2
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v6, v2, :cond_1

    .line 497
    iput v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 498
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getCurrentTime()J

    move-result-wide v0

    .line 499
    .restart local v0    # "deltaTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 500
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 501
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewContinue()V

    goto :goto_0
.end method

.method private stopAlarm()V
    .locals 5

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v2

    if-nez v2, :cond_0

    .line 747
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.deskclock.preset"

    const-string v4, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 749
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x20000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 751
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    .line 752
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 753
    :cond_1
    return-void
.end method

.method private stopAlarmManagerAndRun()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 719
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopAlarm()V

    .line 720
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v9, "time_pref"

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "countdown_finaltime"

    const-wide/16 v10, 0x0

    .line 721
    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 723
    .local v0, "currentElapsedTime":J
    const-string v8, "CountdownFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " stopAlarmManagerAndRun mFinalTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  ;; currentElapsedTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 725
    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    sub-long v2, v8, v0

    .line 726
    .local v2, "deltaTime":J
    const-wide/16 v8, 0x3e8

    div-long v6, v2, v8

    .line 727
    .local v6, "tmp":J
    const-string v8, "CountdownFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " tmp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    long-to-int v8, v6

    add-int/lit8 v4, v8, 0x1

    .line 729
    .local v4, "second":I
    if-lez v4, :cond_0

    .line 730
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcn/nubia/deskclock/model/CountDownModel;->setStartSecondAndlistener(ILjava/lang/Object;)V

    .line 731
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readCountDownTotalTimeFromPref(Landroid/content/Context;)I

    move-result v5

    .line 732
    .local v5, "totalTime":I
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v8, v5}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 733
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v9, 0xfa6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 734
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStart()V

    .line 742
    .end local v2    # "deltaTime":J
    .end local v4    # "second":I
    .end local v5    # "totalTime":I
    .end local v6    # "tmp":J
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    const/4 v8, -0x1

    iput v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 738
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewReset()V

    .line 739
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v8, v9}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 740
    iget-object v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v12, v12}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    goto :goto_0
.end method

.method private stopCountdownService()V
    .locals 3

    .prologue
    .line 407
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/deskclock/CountDownService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v0, "mCountdown":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 409
    return-void
.end method

.method private thumbViewContinue()V
    .locals 2

    .prologue
    .line 772
    const-string v0, "CountdownFragment"

    const-string v1, "thumbViewContinue"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfa7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 776
    :cond_0
    return-void
.end method

.method private thumbViewReset()V
    .locals 2

    .prologue
    .line 786
    const-string v0, "CountdownFragment"

    const-string v1, "thumbViewReset"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 790
    :cond_0
    return-void
.end method

.method private thumbViewStart()V
    .locals 2

    .prologue
    .line 765
    const-string v0, "CountdownFragment"

    const-string v1, "thumbViewStart"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfa3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 769
    :cond_0
    return-void
.end method

.method private thumbViewStop()V
    .locals 2

    .prologue
    .line 779
    const-string v0, "CountdownFragment"

    const-string v1, "thumbViewStop"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfa4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 783
    :cond_0
    return-void
.end method

.method private updateActionModeViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 958
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->isSelectAll()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 960
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0200a7

    .line 961
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 960
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 967
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getSelectCount()I

    move-result v0

    .line 968
    .local v0, "size":I
    if-ne v0, v4, :cond_3

    .line 969
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 978
    :cond_1
    :goto_1
    const v1, 0x7f0d00e1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setCountdownTitle(Ljava/lang/String;)V

    .line 979
    return-void

    .line 963
    .end local v0    # "size":I
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0200a9

    .line 964
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 963
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 971
    .restart local v0    # "size":I
    :cond_3
    if-lez v0, :cond_4

    .line 972
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 975
    :cond_4
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateView()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 576
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView mStatus  == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 580
    :cond_0
    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 581
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/DeskClock;->setEmptyLayoutVisible(Z)V

    .line 585
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsCurrentFragment:Z

    .line 586
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 588
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setInitStatus()V

    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 591
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setPlayStatus()V

    goto :goto_0

    .line 594
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setPauseStatus()V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createActionMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 793
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    if-eqz v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v4

    .line 796
    :cond_1
    iput-boolean v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    .line 797
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDownViewCanScroll(Z)V

    .line 798
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v3, 0xfab

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 799
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 801
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 802
    .local v0, "custom":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    iget-boolean v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->setInActionMode(Z)V

    .line 803
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->unSelectall()V

    .line 804
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    if-eqz v2, :cond_2

    .line 805
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v2, v4}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setDeleteMode(Z)V

    .line 807
    :cond_2
    const v2, 0x7f120109

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    .line 808
    const v2, 0x7f120106

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCancelImageView:Landroid/widget/ImageView;

    .line 809
    const v2, 0x7f12010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    .line 810
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCancelImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mDeleteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/DeskClock;->setActionCustomView(Landroid/view/View;)V

    .line 814
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/DeskClock;->setActionBarLayoutDelete(Z)V

    goto :goto_0
.end method

.method public deleteSelection(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 921
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getSelectCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mEnabelDeleteButton:Z

    if-eqz v2, :cond_0

    .line 922
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040035

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 924
    .local v0, "contentView":Landroid/view/View;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcn/nubia/deskclock/fragment/CountdownFragment$7;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$7;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 925
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcn/nubia/deskclock/fragment/CountdownFragment$6;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$6;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 931
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    .line 942
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 943
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 944
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 945
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    new-instance v3, Lcn/nubia/deskclock/fragment/CountdownFragment$8;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/fragment/CountdownFragment$8;-><init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 951
    const v2, 0x7f1200e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 952
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mEnabelDeleteButton:Z

    .line 955
    return-void
.end method

.method public destroyActionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    iput-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    .line 820
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDownViewCanScroll(Z)V

    .line 821
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfab

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 822
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v0, v2}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setDeleteMode(Z)V

    .line 825
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->setInActionMode(Z)V

    .line 826
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-nez v0, :cond_1

    .line 827
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setBtnPlayStatus()V

    .line 833
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetInvalidated()V

    .line 834
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->setActionBarLayoutDelete(Z)V

    .line 835
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->removeActionCustomView()V

    .line 836
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setCountdownTitle(Ljava/lang/String;)V

    .line 837
    return-void

    .line 828
    :cond_1
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v0, v3, :cond_2

    .line 829
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setBtnPauseStatus()V

    goto :goto_0

    .line 831
    :cond_2
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setBtnInitStatus()V

    goto :goto_0
.end method

.method public doBackPressed()Z
    .locals 1

    .prologue
    .line 1159
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->destroyActionMode()V

    .line 1161
    const/4 v0, 0x0

    .line 1163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMotionContentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x0

    return v0
.end method

.method public onAjustTimeTo(III)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1044
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onAjustTimeTo STATUS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readStatusFromPref(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readStatusFromPref(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 1048
    :cond_0
    mul-int/lit16 v1, p1, 0xe10

    mul-int/lit8 v2, p2, 0x3c

    add-int/2addr v1, v2

    add-int v0, v1, p3

    .line 1049
    .local v0, "mSecond":I
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mNewBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1051
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mResetBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStopBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 1054
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v1, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 1055
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v4, v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 1056
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    goto :goto_0
.end method

.method public onAnimationIsEnd()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1110
    const-string v4, "CountdownFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [onAnimationIsEnd]  mIsItemClick : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsItemClick:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1113
    .local v2, "time":J
    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLastItemClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 1114
    const-string v4, "CountdownFragment"

    const-string v5, " [onAnimationIsEnd] time out"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iput-boolean v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsItemClick:Z

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    iget-boolean v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsItemClick:Z

    if-eqz v4, :cond_0

    .line 1119
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readCountDownTotalTimeFromPref(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    .line 1120
    .local v0, "deltaTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 1121
    const-string v4, "CountdownFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnimationIsEnd: mFinalTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ;; deltaTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v5, "time_pref"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "countdown_finaltime"

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 1123
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1124
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->startCountdown()V

    .line 1125
    iput-boolean v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsItemClick:Z

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 178
    return-void
.end method

.method public onCountDownOver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1061
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/CountDownModel;->getCurrentTime()J

    move-result-wide v0

    .line 1062
    .local v0, "current":J
    const-string v3, "CountdownFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCountDownOver current ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-wide/16 v4, 0x0

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    .line 1064
    const/4 v3, -0x1

    iput v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 1065
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v3, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 1066
    const/4 v3, 0x1

    invoke-static {v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setIsResetCountDown(Z)V

    .line 1067
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewReset()V

    .line 1068
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v6, v6}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 1069
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getCountDownActionIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1070
    const/4 v2, 0x0

    .line 1071
    .local v2, "mSecond":I
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcn/nubia/deskclock/model/CountDownModel;->setStartSecondAndlistener(ILjava/lang/Object;)V

    .line 1072
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v3, v2}, Lcn/nubia/deskclock/model/CountDownModel;->setmTotalTime(I)V

    .line 1074
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1075
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v4, 0xfa6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1077
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1078
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 1081
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    .line 1085
    .end local v2    # "mSecond":I
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    .line 184
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readStatusFromPref(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 185
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [onCreate]  mStatus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "CountdownFragment"

    const-string v1, " [onCreate]  getCountDownHandler "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getCountDownHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    .line 190
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 194
    const v1, 0x7f04002d

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "view":Landroid/view/View;
    const-string v1, "CountdownFragment"

    const-string v2, " [onCreateView] "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "CountdownFragment"

    const-string v2, " [onCreateView]  getCountDownModel "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getCountDownModel()Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 199
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v1, p0}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    .line 200
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v2, 0xfae

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    :cond_0
    const v1, 0x7f1200cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    .line 203
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 205
    new-instance v1, Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    .line 206
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 210
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/DeskClock;

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    .line 214
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->initView()V

    .line 215
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getVerticalMotion()Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .line 216
    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsCurrentFragment:Z

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownLv:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 219
    :cond_2
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDestroy()V

    .line 237
    const-string v0, "CountdownFragment"

    const-string v1, " [onDestroy] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    iput-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    .line 242
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDestroyView()V

    .line 247
    const-string v0, "CountdownFragment"

    const-string v1, "onDestroyView: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    if-eqz v0, :cond_0

    .line 250
    iput-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    .line 253
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    .line 257
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v6, 0x232

    const/4 v5, 0x1

    .line 842
    const-string v2, "CountdownFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: mIsInActionMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsInActionMode:Z

    if-eqz v2, :cond_2

    .line 845
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2, p3}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 846
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 847
    check-cast v0, Lcn/nubia/deskclock/model/CountItem;

    .line 848
    .local v0, "countItem":Lcn/nubia/deskclock/model/CountItem;
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->addDeletedCountdown(Lcn/nubia/deskclock/model/CountItem;)V

    .line 849
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateActionModeViews()V

    .line 850
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetInvalidated()V

    .line 852
    .end local v0    # "countItem":Lcn/nubia/deskclock/model/CountItem;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateActionModeViews()V

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 854
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2, p3}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 855
    .restart local v1    # "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 856
    check-cast v0, Lcn/nubia/deskclock/model/CountItem;

    .line 857
    .restart local v0    # "countItem":Lcn/nubia/deskclock/model/CountItem;
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v2, v5, :cond_1

    .line 858
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 859
    iput-boolean v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mIsItemClick:Z

    .line 860
    iget v2, v0, Lcn/nubia/deskclock/model/CountItem;->mSecounds:I

    iput v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 861
    const-string v2, "CountdownFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onItemClick mSecond "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v5}, Lcn/nubia/deskclock/DeskClock;->setEmptyLayoutVisible(Z)V

    .line 863
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 864
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 865
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mhandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 867
    :cond_4
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mhandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 877
    const-string v2, "CountdownFragment"

    const-string v3, "onItemLongClick"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2, p3}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 879
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 886
    :goto_0
    return v4

    :cond_0
    move-object v0, v1

    .line 881
    check-cast v0, Lcn/nubia/deskclock/model/CountItem;

    .line 882
    .local v0, "countItem":Lcn/nubia/deskclock/model/CountItem;
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->createActionMode()Z

    .line 883
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->addDeletedCountdown(Lcn/nubia/deskclock/model/CountItem;)V

    .line 884
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateActionModeViews()V

    .line 885
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public onMove()V
    .locals 2

    .prologue
    .line 1089
    const-string v0, "CountdownFragment"

    const-string v1, " [onMove] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/CountDownModel;->setPauseBgVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v1, 0xfac

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1092
    return-void
.end method

.method public onPageChanged(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 439
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 440
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 441
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->setInitStatus()V

    .line 443
    return-void
.end method

.method public onPause()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 261
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onPause()V

    .line 262
    iput-boolean v10, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->isVisibility:Z

    .line 263
    const-string v5, "CountdownFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onPause  == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v5, v6}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 266
    .local v2, "currentMillis":J
    iget v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-nez v5, :cond_1

    .line 267
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->startAlarmManager()V

    .line 268
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-eqz v5, :cond_1

    .line 269
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/CountDownModel;->getCurrentTime()J

    move-result-wide v6

    long-to-int v5, v6

    div-int/lit16 v4, v5, 0x3e8

    .line 270
    .local v4, "second":I
    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    sub-long/2addr v6, v2

    long-to-int v5, v6

    div-int/lit16 v0, v5, 0x3e8

    .line 271
    .local v0, "current":I
    const-string v5, "CountdownFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onPause  second == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; current : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-nez v4, :cond_0

    if-eq v4, v0, :cond_0

    .line 273
    move v4, v0

    .line 275
    :cond_0
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v10, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 276
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-string v6, "time_pref"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "countdown_finaltime"

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 277
    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    invoke-static {v10}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setmAssistantStartCountdownStatus(Z)V

    .line 279
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    const-class v6, Lcn/nubia/deskclock/CountDownService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v1, "mCountdown":Landroid/content/Intent;
    const-string v5, "bengin_time"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 285
    .end local v0    # "current":I
    .end local v1    # "mCountdown":Landroid/content/Intent;
    .end local v4    # "second":I
    :cond_1
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    if-eqz v5, :cond_2

    .line 286
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mTimePickerDialog:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog;->dismiss()V

    .line 288
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 292
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onResume()V

    .line 293
    iput-boolean v5, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->isVisibility:Z

    .line 294
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume mStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-nez v1, :cond_2

    .line 296
    const-string v1, "CountdownFragment"

    const-string v2, "onResume mLocalWorkingModel is null "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getCountDownModel()Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 300
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getCountDownHandle()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    .line 303
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v1, p0}, Lcn/nubia/deskclock/model/CountDownModel;->setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    .line 304
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    const/16 v2, 0xfae

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountdownHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-nez v1, :cond_4

    .line 352
    :cond_3
    :goto_0
    return-void

    .line 309
    :cond_4
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readStatusFromPref(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 310
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAction:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readAssisStatusFromPref(Landroid/content/Context;)I

    move-result v0

    .line 312
    .local v0, "assisStatus":I
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";; assisStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mStartSecond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    if-eqz v1, :cond_5

    .line 314
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAdapter:Lcn/nubia/deskclock/adapter/CountDownAdapter;

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/adapter/CountDownAdapter;->reloadData(Landroid/app/Activity;)V

    .line 316
    :cond_5
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 317
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.PAUSE_COUNTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.RESUME_COUNTDOWN"

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    :cond_6
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->controlCountdownFromForceTouch()V

    .line 351
    :goto_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    goto :goto_0

    .line 320
    :cond_7
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.assistant.NEW_COUNTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne v0, v5, :cond_8

    .line 322
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopCountdownService()V

    .line 323
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->AssistantStartCountDown()V

    .line 324
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    goto :goto_1

    .line 326
    :cond_8
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readAssisTimeFromPref(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 327
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:  mStartSecond111 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v1, v4, :cond_9

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    if-lez v1, :cond_9

    if-ne v0, v5, :cond_9

    .line 329
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopCountdownService()V

    .line 330
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->AssistantStartCountDown()V

    .line 331
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    goto :goto_1

    .line 333
    :cond_9
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readCountDownTotalTimeFromPref(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 334
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:  mStartSecond222 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resumeCountDown()V

    goto :goto_1

    .line 339
    :cond_a
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readAssisTimeFromPref(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 340
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:  mStartSecond333 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v1, v4, :cond_b

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    if-lez v1, :cond_b

    if-ne v0, v5, :cond_b

    .line 342
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->stopCountdownService()V

    .line 343
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->AssistantStartCountDown()V

    .line 344
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 346
    :cond_b
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readCountDownTotalTimeFromPref(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 347
    const-string v1, "CountdownFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume:  mStartSecond444 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resumeCountDown()V

    goto/16 :goto_1
.end method

.method public onTouchDown()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1131
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [onTouchDown]  mStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-nez v0, :cond_0

    .line 1133
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    .line 1134
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->thumbViewStop()V

    .line 1135
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 1136
    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownModel;->getCurrentTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 1135
    invoke-static {v0, v6, v6, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 1137
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 1138
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->updateView()V

    .line 1140
    :cond_0
    return-void
.end method

.method public onTouchUp(III)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 1096
    mul-int/lit16 v2, p1, 0xe10

    mul-int/lit8 v3, p2, 0x3c

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    iput v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    .line 1097
    const-string v2, "CountdownFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [onTouchUp]  mStartSecond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    if-lez v2, :cond_0

    .line 1099
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->needAddList:Z

    .line 1100
    iget v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStartSecond:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 1101
    .local v0, "deltaTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mFinalTime:J

    .line 1102
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->startCountdown()V

    .line 1106
    .end local v0    # "deltaTime":J
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->resetCountdown()V

    goto :goto_0
.end method

.method public onVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1168
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    if-nez v0, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    if-ne p1, v1, :cond_3

    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mStatus:I

    if-ne v0, v1, :cond_3

    .line 1172
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setCountdownStatus(Z)V

    .line 1173
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1174
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 1177
    :cond_3
    if-nez p1, :cond_0

    .line 1178
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment;->mVerticalMotion:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setCountdownStatus(Z)V

    goto :goto_0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 757
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->setUserVisibleHint(Z)V

    .line 758
    return-void
.end method
