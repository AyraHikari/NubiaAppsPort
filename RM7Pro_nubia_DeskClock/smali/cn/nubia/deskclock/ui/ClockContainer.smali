.class public Lcn/nubia/deskclock/ui/ClockContainer;
.super Landroid/widget/FrameLayout;
.source "ClockContainer.java"


# static fields
.field public static final mClockMainIds:[I

.field public static final mClockMainInflateIds:[I


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainIds:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainInflateIds:[I

    return-void

    .line 35
    :array_0
    .array-data 4
        0x7f1200bc
        0x7f1200be
        0x7f1200c0
        0x7f1200c2
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x7f1200bd
        0x7f1200bf
        0x7f1200c1
        0x7f1200c3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockContainer;->initView(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockContainer;->initView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockContainer;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockContainer;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getMainClock(I)Landroid/view/ViewStub;
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 42
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 43
    :cond_0
    const/4 p1, 0x1

    .line 45
    :cond_1
    sget-object v0, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public setMainClockVisible(I)V
    .locals 3
    .param p1, "crrentPos"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 50
    sget-object v2, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainInflateIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/ClockContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "mainClockView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 52
    if-ne p1, v0, :cond_1

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 59
    .end local v1    # "mainClockView":Landroid/view/View;
    :cond_2
    return-void
.end method
