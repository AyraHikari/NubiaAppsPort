.class Lcn/nubia/music/activity/CreatePlaylistActivity$2;
.super Ljava/lang/Object;
.source "CreatePlaylistActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/CreatePlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/CreatePlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isWrongFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    .line 100
    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " afterTextChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    .line 102
    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    .line 106
    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 105
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 107
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    const v1, 0x7f0b0146

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$100(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;->a:Lcn/nubia/music/activity/CreatePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->access$100(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
