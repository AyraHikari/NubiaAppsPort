.class public Lcn/nubia/deskclock/ui/SnoozePickerView;
.super Landroid/widget/FrameLayout;
.source "SnoozePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;,
        Lcn/nubia/deskclock/ui/SnoozePickerView$OnSnoozeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnoozePickerView"


# instance fields
.field private mInterValStrings:[Ljava/lang/String;

.field private mInterValView:Lcn/nubia/commonui/widget/WheelView;

.field private mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTimesStrings:[Ljava/lang/String;

.field private mTimesView:Lcn/nubia/commonui/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mPaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 47
    .local v1, "pressedTextColor":I
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    const-string v2, "layout_inflater"

    .line 50
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04006b

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setBackgroundColor(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesStrings:[Ljava/lang/String;

    .line 55
    const v2, 0x7f12014c

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/SnoozePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/WheelView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    .line 56
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 57
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 58
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesStrings:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v3, Lcn/nubia/deskclock/ui/SnoozePickerView$1;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/SnoozePickerView$1;-><init>(Lcn/nubia/deskclock/ui/SnoozePickerView;)V

    .line 61
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValStrings:[Ljava/lang/String;

    .line 73
    const v2, 0x7f12014d

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/SnoozePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/WheelView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    .line 74
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 75
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 76
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValStrings:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 78
    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v3, Lcn/nubia/deskclock/ui/SnoozePickerView$2;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/SnoozePickerView$2;-><init>(Lcn/nubia/deskclock/ui/SnoozePickerView;)V

    .line 79
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public final getCurrentInterVal()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public final getCurrentTimes()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 97
    .local v7, "top":I
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 100
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v0, p1

    .line 174
    check-cast v0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;

    .line 175
    .local v0, "ss":Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;
    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 176
    iget v1, v0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mTimes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 177
    iget v1, v0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mInterVal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/SnoozePickerView;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 178
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 183
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentTimes()I

    move-result v2

    .line 184
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentInterVal()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    .line 183
    return-object v1
.end method

.method public onTimeChanged()V
    .locals 3

    .prologue
    .line 105
    const-string v0, "SnoozePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeChanged    = +getCurrentTimes() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentTimes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentTimes()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setEnabled(Z)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentTimes()I

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozePickerView;->getCurrentInterVal()I

    move-result v2

    .line 113
    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;->onSnoozeChanged(Lcn/nubia/deskclock/ui/SnoozePickerView;II)V

    .line 116
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mTimesView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 160
    return-void
.end method

.method public setCurrentSecond(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentSecond"    # Ljava/lang/Integer;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 164
    return-void
.end method

.method public setInterValViewEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mInterValView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/WheelView;->setEnabled(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public final setOnTimeChangedListener(Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;)V
    .locals 0
    .param p1, "onTimeChangeListener"    # Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcn/nubia/deskclock/ui/SnoozePickerView;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/SnoozePickerDialog$SnoozePickerOnTimeChangeListener;

    .line 169
    return-void
.end method
