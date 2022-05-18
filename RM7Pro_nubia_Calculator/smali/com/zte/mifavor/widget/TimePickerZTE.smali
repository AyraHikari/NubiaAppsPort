.class public Lcom/zte/mifavor/widget/TimePickerZTE;
.super Landroid/widget/FrameLayout;
.source "TimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;,
        Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

.field private static final TAG:Ljava/lang/String; = "TimePickerZTE"


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private mEvenWhellPaintColor:I

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mInputSize:I

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

.field private mSelectorSize:I

.field private mSelectorWhellPaintColor:I

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mTimePickerLayout:Landroid/widget/LinearLayout;

.field private mUPdownWhellPaintColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/TimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 97
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    const p3, 0x8ed3

    .line 108
    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    const/high16 p3, -0x76000000

    .line 109
    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    const/high16 p3, 0x42000000    # 32.0f

    .line 110
    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mEvenWhellPaintColor:I

    const/16 p3, 0x14

    .line 111
    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mInputSize:I

    const/16 p3, 0x10

    .line 112
    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorSize:I

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 134
    sget p3, Lcom/zte/extres/R$layout;->time_picker_zte:I

    const-string v0, "layout_inflater"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 138
    invoke-virtual {v0, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/zte/extres/R$color;->mfv_common_date_time_txt_fc:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    .line 141
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/zte/extres/R$color;->mfv_common_pop_secondary_txt:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    .line 142
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/zte/extres/R$color;->mfv_common_tf_txt_watermark:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mEvenWhellPaintColor:I

    .line 144
    sget p3, Lcom/zte/extres/R$id;->timePickerLayout:I

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTimePickerLayout:Landroid/widget/LinearLayout;

    .line 146
    sget p3, Lcom/zte/extres/R$id;->hour:I

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 147
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mInputSize:I

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 148
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorSize:I

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 149
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mEvenWhellPaintColor:I

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {p3, v0, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 151
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$2;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 164
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v0, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 165
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 168
    sget p3, Lcom/zte/extres/R$id;->divider:I

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 169
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 170
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    const-string p3, ":"

    .line 171
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 172
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 173
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mInputSize:I

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 174
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getInputText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 175
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 176
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {p3, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 179
    sget p3, Lcom/zte/extres/R$id;->minute:I

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 180
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mInputSize:I

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 181
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorSize:I

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 182
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mEvenWhellPaintColor:I

    iget v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    iget v4, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {p3, v2, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 184
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 185
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v2, 0x3b

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 186
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const-wide/16 v2, 0x64

    invoke-virtual {p3, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 187
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    .line 188
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v2, Lcom/zte/mifavor/widget/TimePickerZTE$3;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$3;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 214
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p3, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 215
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 p3, 0x2

    .line 219
    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    .line 220
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    sget v0, Lcom/zte/extres/R$string;->am:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 221
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    sget v0, Lcom/zte/extres/R$string;->pm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    .line 225
    sget p1, Lcom/zte/extres/R$id;->amPm:I

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 226
    instance-of p3, p1, Landroid/widget/Button;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 227
    iput-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 228
    iput-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 229
    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 230
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$4;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$4;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 239
    :cond_0
    iput-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 240
    move-object p3, p1

    check-cast p3, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 241
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mInputSize:I

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 242
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorSize:I

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 243
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    iget v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mSelectorWhellPaintColor:I

    invoke-virtual {p3, v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 244
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 245
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p3, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 246
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 247
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$5;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$5;-><init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 256
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v0, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p3, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 257
    iget-object p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isAmPmAtStart()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 262
    sget p3, Lcom/zte/extres/R$id;->timePickerLayout:I

    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/TimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 263
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p3

    .line 269
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 272
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 279
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 280
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 281
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    .line 283
    sget-object p1, Lcom/zte/mifavor/widget/TimePickerZTE;->NO_OP_CHANGE_LISTENER:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V

    .line 286
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setHourMFV(I)V

    .line 287
    iget-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setMinuteMFV(I)V

    .line 289
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 290
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setEnabled(Z)V

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 298
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/TimePickerZTE;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/TimePickerZTE;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/widget/TimePickerZTE;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    return-void
.end method

.method private getHourFormatData()V
    .locals 5

    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 324
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 327
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    :goto_1
    if-ge v2, v1, :cond_3

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 335
    :cond_2
    :goto_2
    iput-char v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_3

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    .line 337
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 1

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "hm"

    .line 350
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "a"

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onTimeChanged()V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/NumberPickerZTE;->mIsMonkey:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 748
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->sendAccessibilityEvent(I)V

    const-string v0, "TimePickerZTE"

    const-string v1, "onTimeChanged, sendAccessibilityEvent, TYPE_VIEW_SELECTED"

    .line 749
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourMFV()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getMinuteMFV()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;->onTimeChanged(Lcom/zte/mifavor/widget/TimePickerZTE;II)V

    :cond_1
    return-void
.end method

.method private setContentDescriptions()V
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 761
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 764
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 766
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 769
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->increment:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_increment_set_pm_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 772
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->decrement:I

    sget v2, Lcom/zte/extres/R$string;->time_picker_decrement_set_am_button:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    .line 395
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private setDividerText()V
    .locals 0

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    .line 778
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 780
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 722
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourMFV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 729
    :cond_1
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 730
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 731
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 732
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    .line 733
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isAmPmAtStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    .line 743
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 4

    .line 687
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 689
    iget-char v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    .line 690
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 691
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 694
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 698
    :cond_1
    iget-char v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    .line 699
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 700
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    .line 703
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourWithTwoDigit:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getTwoDigitFormatter()Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setFormatter(Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 818
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 821
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 823
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 826
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 829
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMinuteControl()V
    .locals 2

    .line 710
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourMFV()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 711
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->isAmPmAtStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 716
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 653
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getAmView()Landroid/view/View;
    .locals 0

    .line 802
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getBaseline()I
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 426
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 428
    :cond_0
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    if-eqz p0, :cond_1

    .line 429
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 431
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getHour()I
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 444
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 446
    :cond_0
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    if-eqz p0, :cond_1

    .line 447
    rem-int/lit8 v0, v0, 0xc

    return v0

    .line 449
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getHourMFV()I
    .locals 2

    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHour()I

    move-result p0

    return p0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getHourView()Landroid/view/View;
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getMinute()I
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    return p0
.end method

.method public getMinuteMFV()I
    .locals 2

    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getMinute()I

    move-result p0

    return p0

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getPmView()Landroid/view/View;
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method public getTimePickerContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTimePickerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public is24Hour()Z
    .locals 0

    .line 547
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    return p0
.end method

.method public is24HourMFV()Z
    .locals 2

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24Hour()Z

    move-result p0

    return p0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result p0

    return p0
.end method

.method public is24HourView()Z
    .locals 0

    .line 543
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 357
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 382
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 676
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 677
    const-class p0, Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 682
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 683
    const-class p0, Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 659
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 662
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    .line 667
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourMFV()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 668
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getMinuteMFV()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 669
    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    .line 670
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 669
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    .line 671
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 406
    check-cast p1, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    .line 407
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 408
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setHourMFV(I)V

    .line 409
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->getMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setMinuteMFV(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 400
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourMFV()I

    move-result v2

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getMinuteMFV()I

    move-result v3

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourMFV()Z

    move-result p0

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIZ)V

    return-object v1
.end method

.method public setColor(I)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 305
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 306
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 307
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    return-void
.end method

.method public setColor(III)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 312
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 313
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 314
    iget-object p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2

    if-eqz p1, :cond_5

    .line 476
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourMFV()Z

    move-result v0

    if-nez v0, :cond_3

    .line 481
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    .line 483
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 484
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsAm:Z

    .line 488
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 492
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    if-eqz p2, :cond_4

    .line 496
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;Z)V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;Z)V
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    if-eqz p2, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mDividerSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mHourSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setEnabled(Z)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    .line 454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    return-void
.end method

.method public setHourMFV(I)V
    .locals 2

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 467
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setHour(I)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHour()I

    move-result v0

    .line 530
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    .line 531
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 532
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 534
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 535
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 536
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 506
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mIs24HourView:Z

    .line 513
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getHourFormatData()V

    .line 514
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateHourControl()V

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 519
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateMinuteControl()V

    .line 520
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    .line 592
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V

    return-void
.end method

.method public setMinuteMFV(I)V
    .locals 2

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 605
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setMinute(I)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE;->mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;

    return-void
.end method

.method public validateInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
