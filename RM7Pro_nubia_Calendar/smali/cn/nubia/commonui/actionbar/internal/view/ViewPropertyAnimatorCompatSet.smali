.class public Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field private mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 107
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet$1;-><init>(Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private onAnimationsEnded()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 74
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 77
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 81
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    goto :goto_1

    .line 83
    .end local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    goto :goto_0
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "animator"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method

.method public setDuration(J)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 87
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 88
    iput-wide p1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 90
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 104
    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 55
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 57
    .local v0, "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-wide v2, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 58
    iget-wide v2, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 60
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 63
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 69
    .end local v0    # "animator":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    goto :goto_0
.end method
