.class public abstract Lcn/nubia/commonui/preference/DialogPreference;
.super Landroid/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

.field private mDialog:Lcn/nubia/commonui/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    const-string v1, "DialogPreference"

    .line 78
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 77
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "DialogPreference_dialogTitle"

    .line 81
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 82
    iget-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 88
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 89
    const-string v1, "DialogPreference_dialogMessage"

    .line 90
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 91
    const-string v1, "DialogPreference_dialogIcon"

    .line 92
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    const-string v1, "DialogPreference_positiveButtonText"

    .line 94
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    const-string v1, "DialogPreference_negativeButtonText"

    .line 96
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 97
    const-string v1, "DialogPreference_dialogLayout"

    .line 98
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogLayoutResId:I

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/DialogPreference;->setPersistent(Z)V

    .line 102
    return-void
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/Class;

    .prologue
    .line 470
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 471
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 472
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 473
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestInputMethod(Lcn/nubia/commonui/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Lcn/nubia/commonui/app/Dialog;

    .prologue
    .line 346
    invoke-virtual {p1}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 347
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 348
    return-void
.end method


# virtual methods
.method public getDialog()Lcn/nubia/commonui/app/Dialog;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 376
    sget v3, Lcn/nubia/commonui/R$id;->nubia_message:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 381
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 383
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 385
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_0
    const/4 v2, 0x0

    .line 391
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 392
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 398
    iput p2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mWhichButtonClicked:I

    .line 399
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 364
    :goto_0
    return-object v1

    .line 363
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 364
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 418
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 403
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "unregisterOnActivityDestroyListener"

    const-class v2, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/commonui/preference/DialogPreference;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 407
    iget v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->onDialogClosed(Z)V

    .line 408
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    .line 280
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 455
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/preference/DialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 466
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 461
    check-cast v0, Lcn/nubia/commonui/preference/DialogPreference$SavedState;

    .line 462
    .local v0, "myState":Lcn/nubia/commonui/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 463
    iget-boolean v1, v0, Lcn/nubia/commonui/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, v0, Lcn/nubia/commonui/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 442
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 443
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 450
    :goto_0
    return-object v0

    .line 447
    :cond_1
    new-instance v0, Lcn/nubia/commonui/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 448
    .local v0, "myState":Lcn/nubia/commonui/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/nubia/commonui/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 449
    iget-object v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 188
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    iput-object p1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 262
    iput p1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogLayoutResId:I

    .line 263
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iput-object p1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 153
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 123
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 233
    iput-object p1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 234
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 205
    iput-object p1, p0, Lcn/nubia/commonui/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 206
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lcn/nubia/commonui/preference/DialogPreference;->mWhichButtonClicked:I

    .line 301
    new-instance v3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 302
    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 304
    invoke-virtual {v3, v4, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 305
    invoke-virtual {v3, v4, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/preference/DialogPreference;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 310
    iget-object v3, p0, Lcn/nubia/commonui/preference/DialogPreference;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 315
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/preference/DialogPreference;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/preference/DialogPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 317
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "registerOnActivityDestroyListener"

    const-class v5, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-direct {p0, v3, v4, v5}, Lcn/nubia/commonui/preference/DialogPreference;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 321
    iget-object v3, p0, Lcn/nubia/commonui/preference/DialogPreference;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 322
    .local v2, "dialog":Lcn/nubia/commonui/app/Dialog;
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {v2, p1}, Lcn/nubia/commonui/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    invoke-direct {p0, v2}, Lcn/nubia/commonui/preference/DialogPreference;->requestInputMethod(Lcn/nubia/commonui/app/Dialog;)V

    .line 328
    :cond_1
    invoke-virtual {v2, p0}, Lcn/nubia/commonui/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    invoke-virtual {v2}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 330
    return-void

    .line 312
    .end local v2    # "dialog":Lcn/nubia/commonui/app/Dialog;
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/preference/DialogPreference;->mBuilder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/commonui/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0
.end method
