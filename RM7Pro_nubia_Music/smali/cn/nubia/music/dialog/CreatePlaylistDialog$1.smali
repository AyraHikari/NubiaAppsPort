.class Lcn/nubia/music/dialog/CreatePlaylistDialog$1;
.super Ljava/lang/Object;
.source "CreatePlaylistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/dialog/CreatePlaylistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/dialog/CreatePlaylistDialog;


# direct methods
.method constructor <init>(Lcn/nubia/music/dialog/CreatePlaylistDialog;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isWrongFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    .line 72
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " afterTextChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    .line 74
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    .line 78
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 77
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 79
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 82
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0146

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;->a:Lcn/nubia/music/dialog/CreatePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
