.class public Lcn/nubia/music/activity/RenamePlaylistActivity;
.super Landroid/app/Activity;
.source "RenamePlaylistActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mPlaylistName:Landroid/widget/EditText;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcn/nubia/music/activity/RenamePlaylistActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/RenamePlaylistActivity$2;-><init>(Lcn/nubia/music/activity/RenamePlaylistActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 224
    new-instance v0, Lcn/nubia/music/activity/RenamePlaylistActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/RenamePlaylistActivity$5;-><init>(Lcn/nubia/music/activity/RenamePlaylistActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/RenamePlaylistActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/RenamePlaylistActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/RenamePlaylistActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getNameById(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/RenamePlaylistActivity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/RenamePlaylistActivity;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mRenameId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/RenamePlaylistActivity;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method private getIdByName(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 144
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "playlist_id"

    aput-object v2, v1, v5

    const-string v2, "playlist_name=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    const-string v4, "playlist_name"

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    const/4 v0, -0x1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 156
    :cond_0
    if-eqz v1, :cond_1

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_1
    return v0
.end method

.method private getNameById(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 183
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "playlist_name"

    aput-object v2, v1, v5

    const-string v2, "playlist_id=?"

    new-array v3, v3, [Ljava/lang/String;

    .line 186
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "playlist_name"

    .line 183
    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 188
    const/4 v0, 0x0

    .line 189
    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    return-object v0
.end method

.method private setPlaylistName(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcn/nubia/music/activity/RenamePlaylistActivity$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcn/nubia/music/activity/RenamePlaylistActivity$3;-><init>(Lcn/nubia/music/activity/RenamePlaylistActivity;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 179
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/RenamePlaylistActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method

.method private setSaveButton()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mSaveButton:Landroid/widget/Button;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 274
    invoke-virtual {p0, v0, v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->overridePendingTransition(II)V

    .line 275
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->setVolumeControlStream(I)V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 66
    const-string v0, "layout_inflater"

    .line 67
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mView:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 72
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    if-eqz p1, :cond_0

    const-string v0, "rename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mRenameId:J

    .line 77
    if-eqz p1, :cond_1

    const-string v0, "defaultname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_1
    iget-wide v2, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mRenameId:J

    invoke-direct {p0, v0, v2, v3}, Lcn/nubia/music/activity/RenamePlaylistActivity;->setPlaylistName(Ljava/lang/String;J)V

    .line 80
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0032

    iget-object v2, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/activity/RenamePlaylistActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/RenamePlaylistActivity$1;-><init>(Lcn/nubia/music/activity/RenamePlaylistActivity;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 89
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 90
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mSaveButton:Landroid/widget/Button;

    .line 91
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rename"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 269
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 258
    invoke-virtual {p0}, Lcn/nubia/music/activity/RenamePlaylistActivity;->finish()V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/nubia/music/activity/RenamePlaylistActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/RenamePlaylistActivity$4;-><init>(Lcn/nubia/music/activity/RenamePlaylistActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 201
    const-string v0, "defaultname"

    iget-object v1, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "rename"

    iget-wide v2, p0, Lcn/nubia/music/activity/RenamePlaylistActivity;->mRenameId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    return-void
.end method
