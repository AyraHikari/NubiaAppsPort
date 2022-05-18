.class Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TodayAnimatorListener"
.end annotation


# instance fields
.field private volatile mAnimator:Landroid/animation/Animator;

.field private volatile mFadingIn:Z

.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 324
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mFadingIn:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    if-eq v0, p1, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 333
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 334
    monitor-exit p0

    .line 357
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mFadingIn:Z

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 339
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const-string v2, "animateTodayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 343
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 345
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 356
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$602(Lcn/nubia/calendar/submodule_day/view/DayView;Z)Z

    .line 350
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$702(Lcn/nubia/calendar/submodule_day/view/DayView;I)I

    .line 351
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 353
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/calendar/submodule_day/view/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 354
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 341
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
    .line 360
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mAnimator:Landroid/animation/Animator;

    .line 361
    return-void
.end method

.method public setFadingIn(Z)V
    .locals 0
    .param p1, "fadingIn"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$TodayAnimatorListener;->mFadingIn:Z

    .line 365
    return-void
.end method
