.class public Lcn/nubia/music/activity/PlayListDetailActivity;
.super Lcn/nubia/music/activity/BaseDetailListActivity;
.source "PlayListDetailActivity.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;
.implements Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;


# static fields
.field private static final ADD_SONGS:I = 0x21

.field public static final PLAYLISTID:Ljava/lang/String; = "playlistid"

.field public static final PLAYLISTNETID:Ljava/lang/String; = "playlistnetid"

.field public static final PLAYLISTTITLE:Ljava/lang/String; = "playlisttitle"

.field public static final PLAYLISTTYPE:Ljava/lang/String; = "playlisttype"

.field private static final RENAME_PLAYLIST:I = 0x1b


# instance fields
.field protected mNodataPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mPlaylistName:Ljava/lang/String;

.field protected mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;-><init>()V

    .line 124
    new-instance v0, Lcn/nubia/music/activity/PlayListDetailActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/PlayListDetailActivity$2;-><init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 260
    new-instance v0, Lcn/nubia/music/activity/PlayListDetailActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/PlayListDetailActivity$5;-><init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mNodataPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/PlayListDetailActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->renamePlaylist()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/PlayListDetailActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->deletePlayList()V

    return-void
.end method

.method private deletePlayList()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 161
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 167
    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    const v0, 0x7f10008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    const v2, 0x7f0b0045

    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/PlayListDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f0b0120

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0027

    new-instance v3, Lcn/nubia/music/activity/PlayListDetailActivity$3;

    invoke-direct {v3, p0}, Lcn/nubia/music/activity/PlayListDetailActivity$3;-><init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V

    .line 176
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 182
    new-instance v2, Lcn/nubia/music/activity/PlayListDetailActivity$4;

    invoke-direct {v2, p0, v1}, Lcn/nubia/music/activity/PlayListDetailActivity$4;-><init>(Lcn/nubia/music/activity/PlayListDetailActivity;Lcn/nubia/commonui/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private renamePlaylist()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Lcn/nubia/music/dialog/RenamePlaylistDialog;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcn/nubia/music/dialog/RenamePlaylistDialog;-><init>(Landroid/content/Context;J)V

    .line 233
    invoke-virtual {v0, p0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->setCallback(Lcn/nubia/music/dialog/PlaylistActionBaseDialog$DialogActionCallback;)V

    .line 234
    invoke-virtual {v0}, Lcn/nubia/music/dialog/RenamePlaylistDialog;->show()V

    .line 235
    return-void
.end method

.method private setPlayListInfo(Lcn/nubia/music/online/model/PlaylistModel;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->getResources()Landroid/content/res/Resources;

    .line 80
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playListModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/music/online/model/PlaylistModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 82
    iget-object v1, p1, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0b0125

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcn/nubia/music/online/model/PlaylistModel;->numMusic:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/music/ui/RoundImageView2;

    .line 86
    invoke-virtual {v3, v4}, Lcn/nubia/music/ui/RoundImageView2;->setRoundEffect(Z)V

    .line 87
    new-instance v0, Lcn/nubia/music/activity/PlayListDetailActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/PlayListDetailActivity$1;-><init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V

    invoke-virtual {v3, v0}, Lcn/nubia/music/ui/RoundImageView2;->setCurrentAlbumCallback(Lcn/nubia/music/app/listener/ICurrentAlbumCallback;)V

    .line 98
    const-string v2, ""

    .line 99
    iget-object v0, p1, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v2, p1, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrl:Ljava/lang/String;

    .line 105
    :cond_0
    :goto_0
    const/4 v1, 0x2

    iget-wide v4, p1, Lcn/nubia/music/online/model/PlaylistModel;->mMediaId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/activity/PlayListDetailActivity;->setDetailAlbum(ILjava/lang/String;Landroid/widget/ImageView;J)V

    .line 106
    return-void

    .line 101
    :cond_1
    iget-object v0, p1, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v0, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p1, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected addSongToPlaylist()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v1, "playlist_name"

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "playlist_id"

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-class v0, Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-class v0, Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initActionBar()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initActionBar()V

    .line 111
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090016

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 112
    return-void
.end method

.method protected initHeaer()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initHeaer()V

    .line 116
    const v0, 0x7f100069

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const v1, 0x7f030079

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 121
    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->isActive()Z

    move-result v0

    return v0
.end method

.method protected loadData()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;->loadSummaryInfo(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;->loadSongList(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/music/activity/BaseDetailListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 205
    sparse-switch p1, :sswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 207
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;->loadSummaryInfo(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/PlayListDetailActivity;->setResult(I)V

    goto :goto_0

    .line 211
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 212
    const-string v0, "add songs result"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->afterCreatePlaylistLoadData()V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string v1, "playlistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "playlistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    .line 56
    :cond_0
    const-string v1, "playlisttype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "playlisttype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mType:I

    .line 60
    :cond_1
    const-string v1, "playlisttitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "playlisttitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistName:Ljava/lang/String;

    .line 64
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mCurrentDetailType:I

    .line 65
    new-instance v0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;-><init>(Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;)V

    .line 66
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/music/activity/PlayListDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/playlistDatas"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    return-void
.end method

.method public onPlaylistActionSuccess(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPlaylistId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;->loadSummaryInfo(Ljava/lang/String;)V

    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->setResult(I)V

    .line 241
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->onStop()V

    .line 75
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;->stop()V

    .line 76
    return-void
.end method

.method protected setLocalNodata()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->setLocalNodata()V

    .line 257
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090015

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mNodataPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 258
    return-void
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    .line 296
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/PlayListDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;)V

    return-void
.end method

.method public showSongListSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->onComplete(Ljava/util/List;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/PlayListDetailActivity;->onComplete(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showSummaryInfo(Lcn/nubia/music/online/model/PlaylistModel;)V
    .locals 0

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/PlayListDetailActivity;->setPlayListInfo(Lcn/nubia/music/online/model/PlaylistModel;)V

    .line 303
    :cond_0
    return-void
.end method

.method protected updateMorePopupItems()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090016

    iget-object v2, p0, Lcn/nubia/music/activity/PlayListDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 286
    return-void
.end method
