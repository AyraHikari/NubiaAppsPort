.class public Lcn/nubia/music/ui/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mInterval:J

    .line 112
    new-instance v0, Lcn/nubia/music/ui/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/RepeatingImageButton$1;-><init>(Lcn/nubia/music/ui/RepeatingImageButton;)V

    iput-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 47
    invoke-virtual {p0, v2}, Lcn/nubia/music/ui/RepeatingImageButton;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v2}, Lcn/nubia/music/ui/RepeatingImageButton;->setLongClickable(Z)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/RepeatingImageButton;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/ui/RepeatingImageButton;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 6

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 123
    iget-object v2, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mListener:Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mListener:Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-interface {v2, p0, v4, v5, v0}, Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 126
    :cond_0
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 86
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 91
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    sparse-switch p1, :sswitch_data_0

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-wide v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/RepeatingImageButton;->doRepeat(Z)V

    .line 106
    iput-wide v2, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    iget-wide v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, v2}, Lcn/nubia/music/ui/RepeatingImageButton;->doRepeat(Z)V

    .line 78
    iput-wide v4, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mStartTime:J

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mStartTime:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeatCount:I

    .line 67
    iget-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;J)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mListener:Lcn/nubia/music/ui/RepeatingImageButton$RepeatListener;

    .line 60
    iput-wide p2, p0, Lcn/nubia/music/ui/RepeatingImageButton;->mInterval:J

    .line 61
    return-void
.end method
