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

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const-string v0, "ProgressBar"

    .line 24
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 23
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 26
    const-string v0, "ProgressBar_max"

    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 28
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;->setMax(I)V

    .line 29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_preference_widget_seekbar:I

    .line 31
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 32
    return-void
.end method

.method private setProgress(IZ)V
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_2

    .line 73
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 75
    :goto_0
    if-gez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 79
    iput v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    .line 80
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;->persistInt(I)Z

    .line 81
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->notifyChanged()V

    .line 85
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
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

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    sget v0, Lcn/nubia/commonui/R$id;->nubia_seekbar:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 52
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
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    check-cast p1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    .line 158
    invoke-virtual {p1}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 159
    iget v0, p1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->a:I

    iput v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    .line 160
    iget v0, p1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->b:I

    iput v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    .line 161
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 143
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->a:I

    .line 144
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mMax:I

    iput v0, v1, Lcn/nubia/commonui/preference/SeekBarPreference$SavedState;->b:I

    move-object v0, v1

    .line 145
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 117
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

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

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/SeekBarPreference;->setProgress(IZ)V

    .line 69
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 97
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
    iget v0, p0, Lcn/nubia/commonui/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
