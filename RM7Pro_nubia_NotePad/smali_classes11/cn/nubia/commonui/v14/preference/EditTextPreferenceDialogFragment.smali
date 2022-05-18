.class public Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;
.super Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;
.source "EditTextPreferenceDialogFragment.java"


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getEditTextPreference()Lcn/nubia/commonui/v7/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->getPreference()Lcn/nubia/commonui/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/EditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v1, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;

    invoke-direct {v1}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 39
    .local v1, "fragment":Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 40
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 65
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Lcn/nubia/commonui/v7/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Lcn/nubia/commonui/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Lcn/nubia/commonui/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 97
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "EditTextPreferenceDialogFragment.text"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
