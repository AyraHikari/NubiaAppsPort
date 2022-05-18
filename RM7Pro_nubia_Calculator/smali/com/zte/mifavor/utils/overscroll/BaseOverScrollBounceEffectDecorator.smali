.class public abstract Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;
.super Ljava/lang/Object;
.source "BaseOverScrollBounceEffectDecorator.java"

# interfaces
.implements Lcom/zte/mifavor/utils/overscroll/IOverScrollDecor;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;,
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;,
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;,
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;,
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;,
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;,
        Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOUCH_DRAG_MOVE_RATIO_BCK:F = 1.0f

.field public static final DEFAULT_TOUCH_DRAG_MOVE_RATIO_FWD:F = 1.5f

.field public static final TAG:Ljava/lang/String; = "QW-QScrollBaseDecorator"


# instance fields
.field protected final mBounceBackState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;

.field protected mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

.field protected final mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

.field private mIsBeingDragged:Z

.field protected final mOverScrollingState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;

.field private final mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field protected final mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

.field protected mStateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;

.field protected mUpdateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;

.field protected mVelocity:F

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field protected final mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;FFFLandroidx/dynamicanimation/animation/SpringAnimation;Landroid/view/VelocityTracker;)V
    .locals 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    invoke-direct {v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStartAttr:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollStartAttributes;

    .line 79
    new-instance v0, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollStateListenerStub;

    invoke-direct {v0}, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollStateListenerStub;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;

    .line 80
    new-instance v0, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollUpdateListenerStub;

    invoke-direct {v0}, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollUpdateListenerStub;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mUpdateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIsBeingDragged:Z

    .line 389
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    .line 390
    iput-object p5, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 391
    iput-object p6, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 392
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;

    invoke-direct {p1, p0, p2}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;-><init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;F)V

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mBounceBackState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BounceBackState;

    .line 393
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;

    invoke-direct {p1, p0, p3, p4}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;-><init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;FF)V

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mOverScrollingState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$OverScrollingState;

    .line 394
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;-><init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)V

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    .line 396
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    .line 398
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;

    invoke-direct {p2, p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$1;-><init>(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_0
    const-string p1, "QW-QScrollBaseDecorator"

    const-string p2, "Over Scroll Bounce Effect DecoratorBase error, mSpringAnimation is null."

    .line 409
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->attach()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIsBeingDragged:Z

    return p0
.end method

.method static synthetic access$002(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIsBeingDragged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Landroid/view/View;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->isSupprtSink(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;Landroid/view/View;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->isCollapsed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;)Landroid/view/VelocityTracker;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method private getIsUseSpring(Landroid/view/View;)Z
    .locals 0

    .line 529
    instance-of p0, p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 530
    check-cast p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 531
    invoke-virtual {p1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->getUseSpring()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 0

    .line 508
    instance-of p0, p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 509
    check-cast p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 510
    invoke-virtual {p1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->isCollapsed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupprtSink(Landroid/view/View;)Z
    .locals 0

    .line 487
    instance-of p0, p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 488
    check-cast p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 489
    invoke-virtual {p1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->isSupportSink()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected attach()V
    .locals 1

    .line 467
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 468
    invoke-virtual {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method protected abstract createAnimationAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseAnimationAttributes;
.end method

.method protected abstract createMotionAttributes()Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$BaseMotionAttributes;
.end method

.method public detach()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIdleState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IdleState;

    if-eq v0, p0, :cond_2

    const-string p0, "QW-QScrollBaseDecorator"

    const-string v0, "Decorator detached while over-scroll is in effect. You might want to add a precondition of that getCurrentState()==STATE_IDLE, first."

    .line 480
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getCurrentState()I
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    invoke-interface {p0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->getStateId()I

    move-result p0

    return p0
.end method

.method public getIsBeingDragged()Z
    .locals 0

    .line 457
    iget-boolean p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mIsBeingDragged:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {p0}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected issueStateTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    .line 462
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    .line 463
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    invoke-interface {p0, v0}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->handleEntryTransition(Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mViewAdapter:Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;

    invoke-interface {p1}, Lcom/zte/mifavor/utils/overscroll/adapters/IOverScrollDecoratorAdapter;->getView()Landroid/view/View;

    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->getIsUseSpring(Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "QW-QScrollBaseDecorator"

    const-string p1, "Animation is not supported."

    .line 419
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 425
    :pswitch_0
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    invoke-interface {p0, p2}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 428
    :pswitch_1
    iget-object p0, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mCurrentState:Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;

    invoke-interface {p0, p2}, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator$IDecoratorState;->handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOverScrollStateListener(Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollStateListenerStub;

    invoke-direct {p1}, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollStateListenerStub;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mStateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollStateListener;

    return-void
.end method

.method public setOverScrollUpdateListener(Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    new-instance p1, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollUpdateListenerStub;

    invoke-direct {p1}, Lcom/zte/mifavor/utils/overscroll/ListenerStubs$OverScrollUpdateListenerStub;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/zte/mifavor/utils/overscroll/BaseOverScrollBounceEffectDecorator;->mUpdateListener:Lcom/zte/mifavor/utils/overscroll/IOverScrollUpdateListener;

    return-void
.end method

.method protected abstract translateView(Landroid/view/View;F)V
.end method

.method protected abstract translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method
