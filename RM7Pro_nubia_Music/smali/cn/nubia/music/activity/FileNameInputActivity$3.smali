.class Lcn/nubia/music/activity/FileNameInputActivity$3;
.super Ljava/lang/Object;
.source "FileNameInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/FileNameInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/FileNameInputActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/FileNameInputActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isWrongFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 121
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 124
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    const v1, 0x7f0b0146

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$000(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$100(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/FileNameInputActivity$3;->a:Lcn/nubia/music/activity/FileNameInputActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/FileNameInputActivity;->access$100(Lcn/nubia/music/activity/FileNameInputActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
