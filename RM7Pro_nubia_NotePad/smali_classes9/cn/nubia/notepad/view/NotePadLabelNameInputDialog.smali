.class public Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "NotePadLabelNameInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x50


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private mDialogTitle:Ljava/lang/String;

.field private mDismiss:Z

.field private mFileNameEdit:Landroid/widget/EditText;

.field private mInValideChars:[Ljava/lang/String;

.field private mInputListener:Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;

.field private mIsFile:Z

.field private mNewFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFileName"    # Ljava/lang/String;
    .param p3, "inputListener"    # Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "|"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uff1f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uff1a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uff0c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u300a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u300b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u300a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u300b"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mInValideChars:[Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mInputListener:Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;

    .line 53
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    .line 56
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "inputListener"    # Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;

    .prologue
    .line 60
    invoke-direct {p0, p1, p3, p4}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;)V

    .line 61
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mDialogTitle:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private checkNewName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->nameEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0071

    invoke-static {v1, v2}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    .line 181
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->nameInValide(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0073

    invoke-static {v1, v2}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->nameEqualsDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-static {v1, v2}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nameEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private nameEqualsDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private nameInValide(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mInValideChars:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 186
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    const/4 v1, 0x1

    .line 190
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return v1

    .line 185
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 131
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 127
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mDismiss:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 108
    :cond_0
    return-void
.end method

.method public isInMultiWin()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ss_multi_window_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 221
    .local v0, "isInMulWindow":Z
    :goto_1
    if-eqz v0, :cond_0

    move v1, v2

    .line 223
    goto :goto_0

    .end local v0    # "isInMulWindow":Z
    :cond_2
    move v0, v1

    .line 219
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mDismiss:Z

    .line 113
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onBackPressed()V

    .line 114
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 143
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 144
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->checkNewName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->closeInputMethod(Landroid/app/Activity;)V

    .line 149
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mDismiss:Z

    .line 150
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->dismiss()V

    .line 151
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mInputListener:Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;->onFinishFileNameInput(Ljava/lang/String;)V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 154
    iput-boolean v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mDismiss:Z

    .line 155
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->closeInputMethod(Landroid/app/Activity;)V

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 68
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->isInMultiWin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    .line 75
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_1

    .line 76
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x50

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 76
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    .line 79
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->setView(Landroid/view/View;)V

    .line 82
    const v1, 0x104000a

    invoke-direct {p0, v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1, p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 83
    const/4 v1, -0x2

    const v2, 0x7f0a0034

    invoke-direct {p0, v2}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->setButtonTextColor(II)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 165
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0074

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    return-void
.end method

.method public setIsFile(Z)V
    .locals 0
    .param p1, "isFile"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mIsFile:Z

    .line 135
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 92
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 93
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    iget-boolean v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mIsFile:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mNewFileName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "indexOfPostfix":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->mFileNameEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 101
    .end local v0    # "indexOfPostfix":I
    :cond_0
    return-void
.end method
