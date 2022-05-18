.class public Lcn/nubia/commonui/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const-string v2, "ProgressBar"

    .line 24
    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    .line 23
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v2, "ProgressBar_max"

    invoke-static {v2}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 28
    iget v2, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/preference/SeekBarPreference;->setMax(I)V

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_preference_widget_seekbar:I

    .line 31
    .local v1, "layoutResId":I
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 32
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 72
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 73
    iget p1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 75
    :cond_0
    if-gez p1, :cond_1

    .line 76
    const/4 p1, 0x0

    .line 78
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 79
    iput p1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    .line 80
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference;->persistInt(I)Z

    .line 81
    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->notifyChanged()V

    .line 85
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    sget v1, Lcn/nubia/commonui/R$id;->nubia_seekbar:I

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 52
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    iget v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 109
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 162
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 157
    check-cast v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    .line 158
    .local v0, "myState":Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 159
    iget v1, v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    .line 160
    iget v1, v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 161
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 136
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 142
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 143
    .local v0, "myState":Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;
    iget v2, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->progress:I

    .line 144
    iget v2, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 145
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 117
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 122
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 61
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 62
    iput p1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 63
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->notifyChanged()V

    .line 65
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;->setProgress(IZ)V

    .line 69
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 97
    .local v0, "progress":I
    iget v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/preference/SeekBarPreference;->setProgress(IZ)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
