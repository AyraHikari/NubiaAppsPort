.class public Lcn/nubia/deskclock/ui/ActionBarLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;,
        Lcn/nubia/deskclock/ui/ActionBarLayout$TabState;,
        Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;
    }
.end annotation


# instance fields
.field private mActionDeleteMode:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mLastClickTime:J

.field private mListener:Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;

.field private mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mLastClickTime:J

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mCurrentTab:I

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mLastClickTime:J

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mCurrentTab:I

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mLastClickTime:J

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mCurrentTab:I

    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/ActionBarLayout;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ActionBarLayout;

    .prologue
    .line 18
    iget-wide v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/ui/ActionBarLayout;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ActionBarLayout;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mLastClickTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/ActionBarLayout;)Lcn/nubia/deskclock/ui/DeskClockViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ActionBarLayout;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mCurrentTab:I

    return v0
.end method

.method public initialize(Lcn/nubia/deskclock/ui/DeskClockViewPager;)V
    .locals 1
    .param p1, "pg"    # Lcn/nubia/deskclock/ui/DeskClockViewPager;

    .prologue
    .line 92
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    .line 93
    const v0, 0x7f1200c8

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mActionDeleteMode:Landroid/view/ViewGroup;

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public removeActionModeView()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mActionDeleteMode:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 141
    return-void
.end method

.method public setActionDeleteMode(Z)V
    .locals 4
    .param p1, "isDeleteMod"    # Z

    .prologue
    const v0, 0x7f1200c8

    const v3, 0x7f1200c7

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/ui/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/ui/ActionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActionModeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mActionDeleteMode:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setCurrentTab(IZ)V

    .line 71
    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 1
    .param p1, "tab"    # I
    .param p2, "notifyListener"    # Z

    .prologue
    .line 74
    iget v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mCurrentTab:I

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput p1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mCurrentTab:I

    .line 78
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mListener:Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mListener:Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;

    invoke-interface {v0}, Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;->onSelectedTabChanged()V

    goto :goto_0
.end method

.method public setListener(Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout;->mListener:Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;

    .line 89
    return-void
.end method
