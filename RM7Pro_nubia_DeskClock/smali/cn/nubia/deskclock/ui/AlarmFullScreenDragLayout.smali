.class public Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
.super Landroid/widget/FrameLayout;
.source "AlarmFullScreenDragLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;,
        Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmFullScreenDragLayout"


# instance fields
.field private mAlarmFinishListener:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

.field public final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragRange:I

.field public mDragView2:Landroid/view/View;

.field private mDy:I

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/high16 v0, 0x3f000000    # 0.5f

    new-instance v1, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$DragHelperCallback;-><init>(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$1;)V

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .prologue
    .line 17
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mTop:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mTop:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .prologue
    .line 17
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragRange:I

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragRange:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mAlarmFinishListener:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .prologue
    .line 17
    iget v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDy:I

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDy:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mAlarmFinishListener:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mAlarmFinishListener:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;->onDismiss()V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->postInvalidateOnAnimation()V

    .line 32
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f120065

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragView2:Landroid/view/View;

    .line 54
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 114
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 119
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 120
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 121
    const/4 v1, 0x0

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragView2:Landroid/view/View;

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mTop:I

    iget v3, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mTop:I

    add-int/2addr v3, p5

    invoke-virtual {v0, v1, v2, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 139
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAlarmScreenLayoutListener(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;)V
    .locals 0
    .param p1, "alarmFinishListener"    # Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->mAlarmFinishListener:Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;

    .line 148
    return-void
.end method
