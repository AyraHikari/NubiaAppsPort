.class public Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;
.super Landroid/widget/FrameLayout;
.source "MinuteAndSecondPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;,
        Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$OnMinuteAndSecondChangeListener;
    }
.end annotation


# instance fields
.field private mHourView:Lcn/nubia/commonui/widget/WheelView;

.field private mMinuteView:Lcn/nubia/commonui/widget/WheelView;

.field private mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mSecondView:Lcn/nubia/commonui/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x3b

    const/4 v4, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 45
    .local v1, "pressedTextColor":I
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    const-string v2, "layout_inflater"

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040052

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setBackgroundColor(I)V

    .line 51
    const v2, 0x7f120009

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/WheelView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    .line 52
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 53
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 54
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 55
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v3, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$1;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$1;-><init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;)V

    .line 56
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 64
    const v2, 0x7f12000b

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/WheelView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    .line 65
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 66
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 67
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 68
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v3, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$2;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$2;-><init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;)V

    .line 69
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 77
    const v2, 0x7f120128

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/WheelView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    .line 78
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v4}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 79
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 80
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 81
    iget-object v2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v3, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$3;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$3;-><init>(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;)V

    .line 82
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    .line 108
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentMinute()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentSecond()I

    move-result v3

    .line 107
    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;->onMinuteAndSecondChanged(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;III)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public final getCurrentMinute()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public final getCurrentSecond()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 98
    .local v7, "top":I
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 101
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v0, p1

    .line 175
    check-cast v0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;

    .line 176
    .local v0, "ss":Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;
    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    iget v1, v0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 178
    iget v1, v0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 179
    iget v1, v0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mSecond:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 180
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 185
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentMinute()I

    move-result v3

    .line 186
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->getCurrentMinute()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;-><init>(Landroid/os/Parcelable;III)V

    .line 185
    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 156
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 161
    return-void
.end method

.method public setCurrentSecond(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentSecond"    # Ljava/lang/Integer;

    .prologue
    .line 164
    iget-object v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mSecondView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 165
    return-void
.end method

.method public final setOnTimeChangedListener(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;)V
    .locals 0
    .param p1, "onTimeChangeListener"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;->mOnTimeChangeListener:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$MinuteAndSecondPickerOnTimeChangeListener;

    .line 170
    return-void
.end method
