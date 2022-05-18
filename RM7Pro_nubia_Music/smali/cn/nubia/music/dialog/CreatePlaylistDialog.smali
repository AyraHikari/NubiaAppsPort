.class public Lcn/nubia/music/dialog/CreatePlaylistDialog;
.super Lcn/nubia/music/dialog/PlaylistActionBaseDialog;
.source "CreatePlaylistDialog.java"


# instance fields
.field private mGetPlaylistTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/dialog/CreatePlaylistDialog$1;-><init>(Lcn/nubia/music/dialog/CreatePlaylistDialog;)V

    iput-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 25
    invoke-direct {p0}, Lcn/nubia/music/dialog/CreatePlaylistDialog;->makePlaylistName()V

    .line 26
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->disallowShowMagnifier(Landroid/widget/TextView;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/dialog/CreatePlaylistDialog;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method private makePlaylistName()V
    .locals 4

    .prologue
    .line 90
    const-string v0, ""

    .line 92
    new-instance v1, Lcn/nubia/music/dialog/CreatePlaylistDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/dialog/CreatePlaylistDialog$2;-><init>(Lcn/nubia/music/dialog/CreatePlaylistDialog;)V

    iput-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    .line 151
    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method


# virtual methods
.method public insertContentValue(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 156
    const-string v0, "playlist_type"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mDialogActionCallback:Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;->onPlaylistActionSuccess(Landroid/content/Intent;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 41
    :cond_0
    iput-object v2, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mGetPlaylistTask:Landroid/os/AsyncTask;

    .line 42
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    iput-object v2, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 44
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 47
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 48
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lcn/nubia/music/dialog/PlaylistActionBaseDialog;->show()V

    .line 33
    iget-object v0, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mOKButton:Landroid/widget/Button;

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 34
    return-void
.end method

.method public showSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcn/nubia/music/dialog/CreatePlaylistDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0033

    :goto_0
    invoke-static {v1, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 167
    return-void

    .line 165
    :cond_0
    const v0, 0x7f0b00cd

    goto :goto_0
.end method
