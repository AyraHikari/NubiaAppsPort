.class public Lcn/nubia/deskclock/fragment/AlarmClockFragment;
.super Lcn/nubia/deskclock/fragment/BaseFragment;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;
    }
.end annotation


# static fields
.field private static final ALARM_HANDLER_DO_UPDATEDAY:I = 0x325

.field private static final OPEN_ALARM_KEY_UMENG:Ljava/lang/String; = "open_alarm"

.field private static final SUPPORT_POWEROFF_ALARM:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "AlarmClockFragment"


# instance fields
.field private mAddAlarmBtn:Landroid/widget/TextView;

.field private mAddAlarmBtnListener:Landroid/view/View$OnClickListener;

.field private mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

.field private mAlarmClockHandler:Landroid/os/Handler;

.field private mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

.field private mAlarmFragmentTask:Landroid/os/AsyncTask;

.field private mAlarmList:Landroid/widget/ListView;

.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mApplicationContext:Landroid/content/Context;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteButton:Landroid/widget/Button;

.field private mEnabelDeleteButton:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsInActionMode:Z

.field private mSelectCount:Landroid/widget/TextView;

.field private mSelectImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mEnabelDeleteButton:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$2;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAddAlarmBtnListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$6;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p1, "x1"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p1, "x1"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->updateList(Lcn/nubia/deskclock/DeskClock;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->deleteSelectedAlarm()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmFragmentTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mEnabelDeleteButton:Z

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->selectAllAlarm()V

    return-void
.end method

.method private checkedListItem(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 308
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .line 309
    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 310
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 314
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 315
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    .line 316
    .local v0, "alamrId":J
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v3, v0, v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->addDeletedCity(J)V

    .line 317
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->updateActionModeViews()V

    .line 318
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private clearAsyncTaskIfPossiable()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmFragmentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmFragmentTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmFragmentTask:Landroid/os/AsyncTask;

    .line 463
    :cond_0
    return-void
.end method

.method private deleteSelectedAlarm()V
    .locals 6

    .prologue
    .line 324
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mEnabelDeleteButton:Z

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040035

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "contentView":Landroid/view/View;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020058

    .line 328
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcn/nubia/deskclock/fragment/AlarmClockFragment$4;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$4;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    .line 329
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$3;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    .line 335
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 359
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 360
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 361
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    new-instance v3, Lcn/nubia/deskclock/fragment/AlarmClockFragment$5;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$5;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 367
    const v2, 0x7f1200e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 368
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mEnabelDeleteButton:Z

    .line 371
    return-void
.end method

.method private getMyActivity()Lcn/nubia/deskclock/DeskClock;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/DeskClock;

    iput-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    .line 154
    const v3, 0x7f12007d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    .line 155
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 156
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 157
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v3, v7}, Lcn/nubia/deskclock/DeskClock;->getMainBottom(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "mButtonView":Landroid/view/View;
    const v3, 0x7f1200b1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAddAlarmBtn:Landroid/widget/TextView;

    .line 160
    new-instance v3, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment$1;-><init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)V

    iput-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmFragmentTask:Landroid/os/AsyncTask;

    .line 177
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmFragmentTask:Landroid/os/AsyncTask;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 178
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 181
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getSupportPowerOffAlarm()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "poweroffAlarmSupport":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 183
    .local v1, "orientation":I
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v1, v7, :cond_0

    .line 185
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAddAlarmBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAddAlarmBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAddAlarmBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_1
    return-void
.end method

.method private selectAllAlarm()V
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->isSelectAll()Z

    move-result v0

    .line 434
    .local v0, "isAllSelect":Z
    if-eqz v0, :cond_1

    .line 435
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->unSelectall()V

    .line 436
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 437
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0200a7

    .line 438
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 437
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :goto_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->updateActionModeViews()V

    .line 446
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->notifyDataSetChanged()V

    .line 448
    .end local v0    # "isAllSelect":Z
    :cond_0
    return-void

    .line 440
    .restart local v0    # "isAllSelect":Z
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->selectAll()V

    .line 442
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0200a9

    .line 443
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 442
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setAlarmClockTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/model/AlarmClockModel;->setDeleteStateString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateActionModeViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 374
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->isSelectAll()Z

    move-result v0

    .line 376
    .local v0, "isSelectAll":Z
    if-eqz v0, :cond_1

    .line 377
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0200a7

    .line 378
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 377
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    .end local v0    # "isSelectAll":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getSelectCount()I

    move-result v1

    .line 385
    .local v1, "size":I
    const v2, 0x7f0d00e1

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->setAlarmClockTitle(Ljava/lang/String;)V

    .line 386
    if-gtz v1, :cond_2

    .line 387
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    :goto_1
    return-void

    .line 380
    .end local v1    # "size":I
    .restart local v0    # "isSelectAll":Z
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0200a9

    .line 381
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 380
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 389
    .end local v0    # "isSelectAll":Z
    .restart local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateList(Lcn/nubia/deskclock/DeskClock;)V
    .locals 4
    .param p1, "clock"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 104
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 105
    .local v1, "mDeskClock":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcn/nubia/deskclock/DeskClock;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    .line 106
    .local v0, "clock1":Lcn/nubia/deskclock/DeskClock;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 107
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public createActionMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 268
    iget-boolean v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    if-eqz v2, :cond_0

    .line 289
    :goto_0
    return v4

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 273
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "custom":Landroid/view/View;
    const v2, 0x7f120109

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mSelectImageView:Landroid/widget/ImageView;

    .line 275
    const v2, 0x7f120106

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCancelImageView:Landroid/widget/ImageView;

    .line 276
    const v2, 0x7f12010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mDeleteButton:Landroid/widget/Button;

    .line 278
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mSelectImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCancelImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mDeleteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/DeskClock;->setActionCustomView(Landroid/view/View;)V

    .line 282
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/DeskClock;->setActionBarLayoutDelete(Z)V

    .line 283
    iput-boolean v4, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    .line 284
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v2, v4}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setDeleteMode(Z)V

    .line 287
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-boolean v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->setInActionMode(Z)V

    .line 288
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->unSelectall()V

    goto :goto_0
.end method

.method public destroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iput-boolean v2, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    .line 294
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mPagerListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-interface {v0, v2}, Lcn/nubia/deskclock/inter/IViewPagerEnableListener;->setDeleteMode(Z)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    iget-boolean v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->setInActionMode(Z)V

    .line 299
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->notifyDataSetChanged()V

    .line 302
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->setActionBarLayoutDelete(Z)V

    .line 303
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->removeActionCustomView()V

    .line 304
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->setAlarmClockTitle(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public doBackPressed()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->destroyActionMode()V

    .line 474
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMotionContentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    .line 119
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getAlarmClockModel()Lcn/nubia/deskclock/model/AlarmClockModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    .line 146
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getAlarmClockHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->initView(Landroid/view/View;)V

    .line 149
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDestroyView()V

    .line 232
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mCursor:Landroid/database/Cursor;

    .line 236
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    if-eqz v0, :cond_1

    .line 237
    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .line 239
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 241
    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    .line 243
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 244
    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    .line 246
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    :cond_4
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->clearAsyncTaskIfPossiable()V

    .line 250
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDetach()V

    .line 129
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 134
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 254
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mIsInActionMode:Z

    if-eqz v3, :cond_0

    .line 255
    invoke-direct {p0, p3}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->checkedListItem(I)V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 259
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 260
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    .line 261
    :cond_1
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 262
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
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
    .line 403
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->isAlarmKlaxonRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->createActionMode()Z

    .line 405
    invoke-direct {p0, p3}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->checkedListItem(I)V

    .line 407
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onPause()V

    .line 218
    const-string v0, "AlarmClockFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onResume()V

    .line 206
    const-string v0, "AlarmClockFragment"

    const-string v1, "OnResume"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmAdapter:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->notifyDataSetChanged()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 213
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onStop()V

    .line 224
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mAlarmClockHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    :cond_0
    return-void
.end method
