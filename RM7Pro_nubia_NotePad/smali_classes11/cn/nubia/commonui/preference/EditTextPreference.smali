.class public Lcn/nubia/commonui/preference/EditTextPreference;
.super Lcn/nubia/commonui/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 50
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 123
    sget v1, Lcn/nubia/commonui/R$id;->nubia_edittext_container:I

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 105
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 108
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 114
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onDialogClosed(Z)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v1, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 199
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 196
    check-cast v0, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;

    .line 197
    .local v0, "myState":Lcn/nubia/commonui/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 198
    iget-object v1, v0, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 178
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/EditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 183
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 184
    .local v0, "myState":Lcn/nubia/commonui/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 185
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 152
    return-void

    .line 151
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 81
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 85
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 86
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
