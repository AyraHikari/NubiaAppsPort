.class public abstract Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;
.super Landroid/app/DialogFragment;
.source "PreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"

.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "PreferenceDialogFragment.icon"

.field private static final SAVE_STATE_LAYOUT:Ljava/lang/String; = "PreferenceDialogFragment.layout"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "PreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.positiveText"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "PreferenceDialogFragment.title"


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 223
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 224
    return-void
.end method


# virtual methods
.method public getPreference()Lcn/nubia/commonui/v7/preference/DialogPreference;
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    if-nez v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;

    .line 193
    .local v0, "fragment":Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;
    invoke-interface {v0, v1}, Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/v7/preference/DialogPreference;

    iput-object v2, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    .line 195
    .end local v0    # "fragment":Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    return-object v2
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 252
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 255
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 256
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 258
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 260
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    const/4 v2, 0x0

    .line 266
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 267
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 274
    iput p2, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    .line 275
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    .line 84
    .local v5, "rawFragment":Landroid/app/Fragment;
    instance-of v6, v5, Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;

    if-nez v6, :cond_0

    .line 85
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Target fragment must implement TargetFragment interface"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v2, v5

    .line 89
    check-cast v2, Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;

    .line 92
    .local v2, "fragment":Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "key":Ljava/lang/String;
    if-nez p1, :cond_4

    .line 94
    invoke-interface {v2, v4}, Lcn/nubia/commonui/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/v7/preference/DialogPreference;

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    .line 95
    iget-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 96
    iget-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 97
    iget-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 98
    iget-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 99
    iget-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 101
    iget-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPreference:Lcn/nubia/commonui/v7/preference/DialogPreference;

    invoke-virtual {v6}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 102
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    .line 103
    :cond_1
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    iput-object v3, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    :cond_2
    :goto_0
    return-void

    .line 105
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 106
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v6, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 114
    const-string v6, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 115
    const-string v6, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 116
    const-string v6, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 117
    const-string v6, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 118
    const-string v6, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 119
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 120
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 143
    .local v2, "context":Landroid/content/Context;
    const/4 v4, -0x2

    iput v4, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    .line 145
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 147
    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {v4, v5, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {v4, v5, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 151
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 159
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 162
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v3

    .line 163
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    invoke-direct {p0, v3}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->requestInputMethod(Landroid/app/Dialog;)V

    .line 167
    :cond_0
    return-object v3

    .line 156
    .end local v3    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 235
    iget v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 236
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-object v2

    .line 240
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 280
    iget v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onDialogClosed(Z)V

    .line 281
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    .line 205
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "PreferenceDialogFragment.title"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 130
    const-string v0, "PreferenceDialogFragment.positiveText"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    const-string v0, "PreferenceDialogFragment.negativeText"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    const-string v0, "PreferenceDialogFragment.message"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 133
    const-string v0, "PreferenceDialogFragment.layout"

    iget v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "PreferenceDialogFragment.icon"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 173
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 174
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_land_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 176
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    return-void
.end method
