.class Lcn/nubia/music/dialog/RenamePlaylistDialog$2;
.super Landroid/os/AsyncTask;
.source "RenamePlaylistDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/dialog/RenamePlaylistDialog;->setPlaylistName(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/nubia/music/dialog/RenamePlaylistDialog;


# direct methods
.method constructor <init>(Lcn/nubia/music/dialog/RenamePlaylistDialog;J)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iput-wide p2, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->a:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    invoke-static {v0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->access$100(Lcn/nubia/music/dialog/RenamePlaylistDialog;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-wide v2, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->a:J

    invoke-static {v0, v2, v3}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->access$200(Lcn/nubia/music/dialog/RenamePlaylistDialog;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    invoke-static {v0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->access$100(Lcn/nubia/music/dialog/RenamePlaylistDialog;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-wide v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 130
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v0, v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v1, v1, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->b:Lcn/nubia/music/dialog/RenamePlaylistDialog;

    invoke-static {v0, p1}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->access$302(Lcn/nubia/music/dialog/RenamePlaylistDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;->a(Ljava/lang/String;)V

    return-void
.end method
