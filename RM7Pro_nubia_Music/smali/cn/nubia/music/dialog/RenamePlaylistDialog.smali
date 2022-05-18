.class public Lcn/nubia/music/dialog/RenamePlaylistDialog;
.super Lcn/nubia/music/dialog/PlaylistActionBaseDialog;
.source "RenamePlaylistDialog.java"


# instance fields
.field private mPreviousName:Ljava/lang/String;

.field private mRenameId:J

.field private mSetPlaylistTask:Landroid/os/AsyncTask;
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
.end field

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPreviousName:Ljava/lang/String;

    .line 58
    new-instance v0, Lcn/nubia/music/dialog/RenamePlaylistDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/dialog/RenamePlaylistDialog$1;-><init>(Lcn/nubia/music/dialog/RenamePlaylistDialog;)V

    iput-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 30
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 31
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 32
    iput-wide p2, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mRenameId:J

    .line 33
    invoke-direct {p0, p2, p3}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->setPlaylistName(J)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/dialog/RenamePlaylistDialog;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/dialog/RenamePlaylistDialog;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/dialog/RenamePlaylistDialog;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->getNameById(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/music/dialog/RenamePlaylistDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPreviousName:Ljava/lang/String;

    return-object p1
.end method

.method private getNameById(J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 139
    .line 141
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v6

    .line 144
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 148
    const-string v1, "content://nubia.music.preset/playlists"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "playlist_name"

    aput-object v4, v2, v3

    const-string v3, "playlist_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "playlist_name"

    .line 148
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 161
    :goto_1
    if-eqz v1, :cond_3

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object v6, v0

    .line 168
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    if-eqz v6, :cond_4

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v6

    .line 156
    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v1, v6

    goto :goto_1
.end method

.method private setPlaylistName(J)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/music/dialog/RenamePlaylistDialog$2;-><init>(Lcn/nubia/music/dialog/RenamePlaylistDialog;J)V

    iput-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    .line 135
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method private setSaveButton()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public insertContentValue(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    .line 174
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "playlist_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mRenameId:J

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 174
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;->onPlaylistActionSuccess(Landroid/content/Intent;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 47
    :cond_0
    iput-object v2, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mSetPlaylistTask:Landroid/os/AsyncTask;

    .line 48
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    iput-object v2, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 50
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 53
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 54
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->show()V

    .line 39
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 40
    return-void
.end method

.method public showSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPreviousName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00cd

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/dialog/RenamePlaylistDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d0

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method
