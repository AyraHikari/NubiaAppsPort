.class Lcn/nubia/music/activity/RenamePlaylistActivity$2;
.super Ljava/lang/Object;
.source "RenamePlaylistActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/RenamePlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/RenamePlaylistActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/RenamePlaylistActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isWrongFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_2
    :goto_2
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 118
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 120
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 123
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;->a:Lcn/nubia/music/activity/RenamePlaylistActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->access$000(Lcn/nubia/music/activity/RenamePlaylistActivity;)V

    .line 101
    return-void
.end method
