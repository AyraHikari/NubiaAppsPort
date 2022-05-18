.class public final Lcn/nubia/deskclock/model/CountDownConfiguration;
.super Ljava/lang/Object;
.source "CountDownConfiguration.java"


# static fields
.field public static final ENTER_ANIMATOR_COLOR_CIRCLE_TIME:I = 0x258

.field public static final ENTER_ANIMATOR_CUT_TIME:I = 0xfa

.field public static final ENTER_ANIMATOR_HANDLE_ALPHA_TIME:I = 0x64

.field public static final ENTER_ANIMATOR_HANDLE_ARC_TIME:I = 0xc8

.field public static final ENTER_ANIMATOR_TEXT_ALPHA_TIME:I = 0x258

.field public static final EXIT_ANIMATOR_TIME:I = 0x14

.field public static final MAX_TIME_CIRCLE_NUMBER:I = 0x64

.field public static final MESSAGE_RUNNABLE_DELAY:I = 0x12345

.field public static final MESSAGE_TIME_IS_OVER:I = 0x12341

.field public static final MESSAGE_TOUCH_DOWN:I = 0x12343

.field public static final MESSAGE_TOUCH_MOVE:I = 0x12344

.field public static final MESSAGE_TOUCH_UP:I = 0x123442

.field public static final OTHER_ANIMATOR_TIME:I = 0xc8


# instance fields
.field private mCircleGradDistance:F

.field private mCountdownFirstCircleClolor:[I

.field private mCountdownSecondCircleClolor:[I

.field private mCountdownThirdCircleClolor:[I

.field private mDrawCircleOriginX:F

.field private mDrawCircleOriginY:F

.field private mHandleOriginX:F

.field private mHandleOriginY:F

.field private mHandlePointChangedScale:F

.field private mHandlePointOriginX:F

.field private mHandlePointOriginY:F

.field private mHandlePointPaintWidth:F

.field private mInnerCircleRadiuo:F

.field private mMaxCutHandleDistance:F

.field private mMaxCutPlateDistance:F

.field private mMaxTouchRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v1, v2, [I

    iput-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownFirstCircleClolor:[I

    .line 43
    new-array v1, v2, [I

    iput-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownSecondCircleClolor:[I

    .line 44
    new-array v1, v2, [I

    iput-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownThirdCircleClolor:[I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mMaxCutPlateDistance:F

    .line 52
    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mMaxTouchRadius:F

    .line 54
    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandleOriginY:F

    .line 57
    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandleOriginX:F

    .line 60
    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mDrawCircleOriginX:F

    .line 62
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mDrawCircleOriginY:F

    .line 65
    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCircleGradDistance:F

    .line 68
    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointOriginY:F

    .line 70
    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointOriginX:F

    .line 72
    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mMaxCutHandleDistance:F

    .line 74
    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointChangedScale:F

    .line 76
    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointPaintWidth:F

    .line 78
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownFirstCircleClolor:[I

    const v2, 0x7f0f002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 79
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownFirstCircleClolor:[I

    const v2, 0x7f0f002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 80
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownFirstCircleClolor:[I

    const v2, 0x7f0f002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    .line 81
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownFirstCircleClolor:[I

    const v2, 0x7f0f002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    .line 82
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownSecondCircleClolor:[I

    const v2, 0x7f0f0030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 83
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownSecondCircleClolor:[I

    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 84
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownSecondCircleClolor:[I

    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    .line 85
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownSecondCircleClolor:[I

    const v2, 0x7f0f0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    .line 86
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownThirdCircleClolor:[I

    const v2, 0x7f0f0035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 87
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownThirdCircleClolor:[I

    const v2, 0x7f0f0037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 88
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownThirdCircleClolor:[I

    const v2, 0x7f0f0038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    .line 89
    iget-object v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownThirdCircleClolor:[I

    const v2, 0x7f0f0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v6

    .line 90
    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mInnerCircleRadiuo:F

    .line 92
    return-void
.end method


# virtual methods
.method public getCircleGradDistance()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCircleGradDistance:F

    return v0
.end method

.method public getCountdownFirstCircleClolor()[I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownFirstCircleClolor:[I

    return-object v0
.end method

.method public getCountdownSecondCircleClolor()[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownSecondCircleClolor:[I

    return-object v0
.end method

.method public getCountdownThridCircleClolor()[I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mCountdownThirdCircleClolor:[I

    return-object v0
.end method

.method public getDrawCircleOriginX()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mDrawCircleOriginX:F

    return v0
.end method

.method public getDrawCircleOriginY()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mDrawCircleOriginY:F

    return v0
.end method

.method public getHandleOriginX()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandleOriginX:F

    return v0
.end method

.method public getHandleOriginY()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandleOriginY:F

    return v0
.end method

.method public getHandlePointChangedScale()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointChangedScale:F

    return v0
.end method

.method public getHandlePointOriginX()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointOriginX:F

    return v0
.end method

.method public getHandlePointOriginY()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointOriginY:F

    return v0
.end method

.method public getHandlePointPaintWidth()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mHandlePointPaintWidth:F

    return v0
.end method

.method public getInnerCircleRaduio()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mInnerCircleRadiuo:F

    return v0
.end method

.method public getMaxCutHandleDistance()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mMaxCutHandleDistance:F

    return v0
.end method

.method public getMaxCutPlateDistance()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mMaxCutPlateDistance:F

    return v0
.end method

.method public getMaxTouchRadius()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcn/nubia/deskclock/model/CountDownConfiguration;->mMaxTouchRadius:F

    return v0
.end method
