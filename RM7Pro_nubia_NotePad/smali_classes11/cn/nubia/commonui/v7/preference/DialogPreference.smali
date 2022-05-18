.class public abstract Lcn/nubia/commonui/v7/preference/DialogPreference;
.super Lcn/nubia/commonui/v7/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;
    }
.end annotation


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    sget v0, Lcn/nubia/commonui/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    sget-object v1, Lcn/nubia/commonui/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->DialogPreference_dialogTitle:I

    sget v2, Lcn/nubia/commonui/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 63
    sget v1, Lcn/nubia/commonui/R$styleable;->DialogPreference_dialogMessage:I

    sget v2, Lcn/nubia/commonui/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 66
    sget v1, Lcn/nubia/commonui/R$styleable;->DialogPreference_dialogIcon:I

    sget v2, Lcn/nubia/commonui/R$styleable;->DialogPreference_android_dialogIcon:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v1, Lcn/nubia/commonui/R$styleable;->DialogPreference_positiveButtonText:I

    sget v2, Lcn/nubia/commonui/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 73
    sget v1, Lcn/nubia/commonui/R$styleable;->DialogPreference_negativeButtonText:I

    sget v2, Lcn/nubia/commonui/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    sget v1, Lcn/nubia/commonui/R$styleable;->DialogPreference_dialogLayout:I

    sget v2, Lcn/nubia/commonui/R$styleable;->DialogPreference_android_dialogLayout:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogLayoutResId:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method


# virtual methods
.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->showDialog(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 259
    return-void
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 243
    iput p1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogLayoutResId:I

    .line 244
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 104
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 214
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 215
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 187
    return-void
.end method
