.class public Lcn/nubia/music/activity/ArtistDetailActivity;
.super Lcn/nubia/music/activity/BaseDetailListActivity;
.source "ArtistDetailActivity.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;


# static fields
.field public static final ARTISTID:Ljava/lang/String; = "artistid"


# instance fields
.field private mArtistId:Ljava/lang/String;

.field protected mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mPresenter:Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;-><init>()V

    .line 109
    new-instance v0, Lcn/nubia/music/activity/ArtistDetailActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/ArtistDetailActivity$2;-><init>(Lcn/nubia/music/activity/ArtistDetailActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method

.method private setArtistInfo(Lcn/nubia/music/online/model/ArtistModel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p1, Lcn/nubia/music/online/model/ArtistModel;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    iget-object v2, p1, Lcn/nubia/music/online/model/ArtistModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0b0125

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/music/ui/RoundImageView2;

    .line 68
    new-instance v0, Lcn/nubia/music/activity/ArtistDetailActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/ArtistDetailActivity$1;-><init>(Lcn/nubia/music/activity/ArtistDetailActivity;)V

    invoke-virtual {v3, v0}, Lcn/nubia/music/ui/RoundImageView2;->setCurrentAlbumCallback(Lcn/nubia/music/app/listener/ICurrentAlbumCallback;)V

    .line 79
    const-string v2, ""

    .line 80
    iget-object v0, p1, Lcn/nubia/music/online/model/ArtistModel;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcn/nubia/music/online/model/ArtistModel;->mImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v2, p1, Lcn/nubia/music/online/model/ArtistModel;->mImageUrl:Ljava/lang/String;

    .line 86
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/activity/ArtistDetailActivity;->setDetailAlbum(ILjava/lang/String;Landroid/widget/ImageView;J)V

    .line 89
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v0, p1, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v0, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p1, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateTotalNum(I)V
    .locals 5

    .prologue
    .line 183
    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    const v1, 0x7f0b0125

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initActionBar()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initActionBar()V

    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090013

    iget-object v2, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 96
    return-void
.end method

.method protected initHeaer()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initHeaer()V

    .line 102
    const v0, 0x7f100069

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    const v1, 0x7f030079

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 107
    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->isActive()Z

    move-result v0

    return v0
.end method

.method protected loadData()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcn/nubia/music/activity/ArtistDetailActivity;->exitActionMode()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;->loadSongList(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected needChangeImage()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected nodataOption()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mIsStartedDeleteActivity:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcn/nubia/music/activity/ArtistDetailActivity;->finish()V

    .line 142
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-virtual {p0}, Lcn/nubia/music/activity/ArtistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-string v1, "artistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "artistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    .line 41
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mCurrentDetailType:I

    .line 42
    new-instance v0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;-><init>(Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;)V

    .line 43
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcn/nubia/music/activity/ArtistDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;->loadSummaryInfo(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setDelete(Z)V

    .line 49
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setIsLocalDetail(Z)V

    .line 51
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->onStop()V

    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;->stop()V

    .line 58
    return-void
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcn/nubia/music/activity/ArtistDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;

    .line 162
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/ArtistDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;)V

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
    .line 173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->onComplete(Ljava/util/List;)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/music/activity/ArtistDetailActivity;->updateTotalNum(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/ArtistDetailActivity;->onComplete(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showSummaryInfo(Lcn/nubia/music/online/model/ArtistModel;)V
    .locals 0

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/ArtistDetailActivity;->setArtistInfo(Lcn/nubia/music/online/model/ArtistModel;)V

    .line 169
    :cond_0
    return-void
.end method
