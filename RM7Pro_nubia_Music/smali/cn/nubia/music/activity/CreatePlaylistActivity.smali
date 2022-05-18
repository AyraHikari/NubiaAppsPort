.class public Lcn/nubia/music/activity/CreatePlaylistActivity;
.super Lcn/nubia/music/activity/BaseActivity;
.source "CreatePlaylistActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mPlaylistNameView:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcn/nubia/music/activity/CreatePlaylistActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/CreatePlaylistActivity$2;-><init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 211
    new-instance v0, Lcn/nubia/music/activity/CreatePlaylistActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/CreatePlaylistActivity$5;-><init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mPlaylistNameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/CreatePlaylistActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/CreatePlaylistActivity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/CreatePlaylistActivity;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 116
    const-string v0, "content://nubia.music.preset/playlist_infos"

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

    .line 121
    const/4 v0, -0x1

    .line 122
    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 127
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    return v0
.end method

.method private makePlaylistName(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const-string v0, "defaultname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    new-instance v1, Lcn/nubia/music/activity/CreatePlaylistActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/CreatePlaylistActivity$4;-><init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 207
    invoke-virtual {v1, v2}, Lcn/nubia/music/activity/CreatePlaylistActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void

    .line 158
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->finish()V

    .line 265
    invoke-virtual {p0, v0, v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->overridePendingTransition(II)V

    .line 266
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->setVolumeControlStream(I)V

    .line 59
    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    const v1, 0x7f030024

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mView:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mPlaylistNameView:Landroid/widget/EditText;

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/CreatePlaylistActivity;->makePlaylistName(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mPlaylistNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mPlaylistNameView:Landroid/widget/EditText;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->disallowShowMagnifier(Landroid/widget/TextView;)V

    .line 67
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    iget-object v2, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/activity/CreatePlaylistActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/CreatePlaylistActivity$1;-><init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 75
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 76
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mSaveButton:Landroid/widget/Button;

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 258
    :cond_0
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mPlaylistNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 260
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcn/nubia/music/activity/CreatePlaylistActivity;->finish()V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onResume()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/nubia/music/activity/CreatePlaylistActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/CreatePlaylistActivity$3;-><init>(Lcn/nubia/music/activity/CreatePlaylistActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    const-string v0, "defaultname"

    iget-object v1, p0, Lcn/nubia/music/activity/CreatePlaylistActivity;->mPlaylistNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method
