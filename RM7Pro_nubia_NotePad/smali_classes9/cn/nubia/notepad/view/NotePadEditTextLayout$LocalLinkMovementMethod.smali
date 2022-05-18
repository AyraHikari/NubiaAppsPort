.class Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "NotePadEditTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadEditTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalLinkMovementMethod"
.end annotation


# static fields
.field private static final TOUCH_SLOP:I = 0x14


# instance fields
.field private editTextLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isMoved:Z

.field private isReleased:Z

.field private mCounter:I

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 500
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 487
    new-instance v0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod$1;-><init>(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 501
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->editTextLayout:Ljava/lang/ref/WeakReference;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    .prologue
    .line 481
    iget v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mCounter:I

    return v0
.end method

.method static synthetic access$010(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    .prologue
    .line 481
    iget v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mCounter:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    .prologue
    .line 481
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isReleased:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    .prologue
    .line 481
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isMoved:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    .prologue
    .line 481
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->editTextLayout:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private dealWithLink(I[Landroid/text/style/ClickableSpan;Landroid/text/Spannable;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "link"    # [Landroid/text/style/ClickableSpan;
    .param p3, "buffer"    # Landroid/text/Spannable;
    .param p4, "widget"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 556
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 557
    aget-object v1, p2, v2

    invoke-virtual {v1, p4}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    if-nez p1, :cond_0

    .line 560
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    .line 561
    invoke-interface {p3, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 562
    invoke-interface {p3, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 560
    invoke-static {p3, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x14

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 507
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 508
    .local v0, "action":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    .line 509
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    add-int v4, v8, v9

    .line 510
    .local v4, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 511
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    add-int v5, v8, v9

    .line 512
    .local v5, "y":I
    packed-switch v0, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 514
    :pswitch_0
    iput v4, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mLastMotionX:I

    .line 515
    iput v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mLastMotionY:I

    .line 516
    iget v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mCounter:I

    .line 517
    iput-boolean v7, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isReleased:Z

    .line 518
    iput-boolean v7, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isMoved:Z

    .line 519
    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->editTextLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 520
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    int-to-long v8, v8

    .line 519
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 523
    :pswitch_1
    iget-boolean v8, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isMoved:Z

    if-nez v8, :cond_0

    .line 525
    iget v8, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mLastMotionX:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v10, :cond_1

    iget v8, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mLastMotionY:I

    sub-int/2addr v8, v5

    .line 526
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v10, :cond_2

    .line 527
    :cond_1
    iput-boolean v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isMoved:Z

    .line 530
    :cond_2
    :pswitch_2
    iput-boolean v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->isReleased:Z

    .line 531
    iget v8, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->mCounter:I

    if-lez v8, :cond_0

    .line 532
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 533
    .local v1, "line":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    int-to-float v9, v4

    .line 534
    invoke-virtual {v8, v1, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 535
    .local v3, "off":I
    const-class v8, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v3, v3, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 537
    .local v2, "link":[Landroid/text/style/ClickableSpan;
    array-length v8, v2

    if-eqz v8, :cond_3

    .line 538
    invoke-direct {p0, v0, v2, p2, p1}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;->dealWithLink(I[Landroid/text/style/ClickableSpan;Landroid/text/Spannable;Landroid/widget/TextView;)V

    goto :goto_1

    .line 541
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 542
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move v6, v7

    .line 543
    goto :goto_1

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
