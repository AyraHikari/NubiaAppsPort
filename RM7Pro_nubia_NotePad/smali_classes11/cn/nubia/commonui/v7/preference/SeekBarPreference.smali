.class public Lcn/nubia/commonui/v7/preference/SeekBarPreference;
.super Lcn/nubia/commonui/v7/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mAdjustable:Z

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    sget v0, Lcn/nubia/commonui/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance v1, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;-><init>(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 90
    new-instance v1, Lcn/nubia/commonui/v7/preference/SeekBarPreference$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference$2;-><init>(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 121
    sget-object v1, Lcn/nubia/commonui/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->SeekBarPreference_min:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    .line 130
    sget v1, Lcn/nubia/commonui/R$styleable;->SeekBarPreference_android_max:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->setMax(I)V

    .line 131
    sget v1, Lcn/nubia/commonui/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 132
    sget v1, Lcn/nubia/commonui/R$styleable;->SeekBarPreference_adjustable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mAdjustable:Z

    .line 133
    sget v1, Lcn/nubia/commonui/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/commonui/v7/preference/SeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/commonui/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "seekBarValue"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 259
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 260
    iget p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    .line 262
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 263
    iget p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    .line 266
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    .line 267
    iput p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 268
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->persistInt(I)Z

    .line 272
    if-eqz p2, :cond_3

    .line 273
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 276
    :cond_3
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 287
    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int v0, v1, v2

    .line 288
    .local v0, "seekBarValue":I
    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method public isAdjustable()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 152
    iget-object v0, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 153
    sget v0, Lcn/nubia/commonui/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 154
    sget v0, Lcn/nubia/commonui/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 155
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    .line 163
    const-string v0, "SeekBarPreference"

    const-string v1, "SeekBar view is null in onBindViewHolder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_1
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 167
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    iget v2, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 172
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 178
    :goto_2
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 179
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 175
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    goto :goto_2
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 328
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 322
    check-cast v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;

    .line 323
    .local v0, "myState":Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 324
    iget v1, v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 325
    iget v1, v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->min:I

    iput v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    .line 326
    iget v1, v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    .line 327
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 300
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 306
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 307
    .local v0, "myState":Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;
    iget v2, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iput v2, v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 308
    iget v2, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    iput v2, v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->min:I

    .line 309
    iget v2, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 310
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->setValue(I)V

    .line 189
    return-void

    .line 187
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .line 188
    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setAdjustable(Z)V
    .locals 0
    .param p1, "adjustable"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mAdjustable:Z

    .line 248
    return-void
.end method

.method public final setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 211
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 212
    iget p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    .line 214
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    .line 215
    iput p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    .line 216
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 218
    :cond_1
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 197
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 198
    iget p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    .line 200
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_1

    .line 201
    iput p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    .line 202
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 204
    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2
    .param p1, "seekBarIncrement"    # I

    .prologue
    .line 236
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 237
    iget v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 238
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 240
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "seekBarValue"    # I

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    .line 256
    return-void
.end method
