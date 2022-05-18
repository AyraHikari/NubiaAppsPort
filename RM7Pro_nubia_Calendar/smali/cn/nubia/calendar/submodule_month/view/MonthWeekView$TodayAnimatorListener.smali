.class Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MonthWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/MonthWeekView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    .prologue
    .line 378
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 387
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 388
    monitor-exit p0

    .line 411
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 393
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 395
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$002(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 397
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mFadingIn:Z

    .line 399
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 401
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$000(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 410
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 403
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$102(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;Z)Z

    .line 404
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$202(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;I)I

    .line 405
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 407
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->access$002(Lcn/nubia/calendar/submodule_month/view/MonthWeekView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 408
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_month/view/MonthWeekView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/MonthWeekView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 395
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 414
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 415
    return-void
.end method

.method public setFadingIn(Z)V
    .locals 0
    .param p1, "fadingIn"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_month/view/MonthWeekView$TodayAnimatorListener;->mFadingIn:Z

    .line 419
    return-void
.end method
