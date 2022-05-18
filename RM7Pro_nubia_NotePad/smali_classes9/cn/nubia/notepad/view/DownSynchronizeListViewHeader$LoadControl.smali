.class Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;
.super Ljava/lang/Object;
.source "DownSynchronizeListViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadControl"
.end annotation


# instance fields
.field private mIsRun:Z

.field private mTimeRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mIsRun:Z

    .line 338
    return-void
.end method

.method private clearTimeRunnable()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 345
    :cond_0
    return-void
.end method

.method private newTimeRunnable()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl$1;-><init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    .line 363
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->this$0:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public startLoading()V
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mIsRun:Z

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mIsRun:Z

    .line 370
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->newTimeRunnable()V

    .line 372
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->mIsRun:Z

    .line 376
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->clearTimeRunnable()V

    .line 377
    return-void
.end method
