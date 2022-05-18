.class public Lcn/nubia/deskclock/ui/ClockBottomLayout;
.super Landroid/widget/FrameLayout;
.source "ClockBottomLayout.java"


# static fields
.field private static final sBottomIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/deskclock/ui/ClockBottomLayout;->sBottomIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1200ae
        0x7f1200b0
        0x7f1200b2
        0x7f1200b6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getClockBottom(I)Landroid/view/View;
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 36
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 39
    :cond_1
    sget-object v0, Lcn/nubia/deskclock/ui/ClockBottomLayout;->sBottomIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setClockBottomVisibility(I)V
    .locals 3
    .param p1, "tab"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcn/nubia/deskclock/ui/ClockBottomLayout;->sBottomIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 44
    if-eq v0, p1, :cond_0

    .line 45
    sget-object v1, Lcn/nubia/deskclock/ui/ClockBottomLayout;->sBottomIds:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/ClockBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v1, Lcn/nubia/deskclock/ui/ClockBottomLayout;->sBottomIds:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/ClockBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 51
    :cond_1
    return-void
.end method
