.class public Lcn/nubia/music/activity/AlbumDetailActivity;
.super Lcn/nubia/music/activity/BaseDetailListActivity;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/AlbumDetailActivity$a;
    }
.end annotation


# static fields
.field public static final ALBUMID:Ljava/lang/String; = "albumid"


# instance fields
.field private mAddFavoriteInListView:Landroid/widget/ImageView;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mAudioIds:[J

.field private mIsAddingFavorite:Z

.field private mIsInFavorite:Z

.field protected mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    .line 36
    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsInFavorite:Z

    .line 70
    new-instance v0, Lcn/nubia/music/activity/AlbumDetailActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AlbumDetailActivity$1;-><init>(Lcn/nubia/music/activity/AlbumDetailActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/AlbumDetailActivity;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/music/activity/AlbumDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/AlbumDetailActivity;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsInFavorite:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/AlbumDetailActivity;)Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/AlbumDetailActivity;)[J
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAudioIds:[J

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method private getAudioId(Ljava/util/List;)V
    .locals 6
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
    .line 149
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAudioIds:[J

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 154
    iget-object v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAudioIds:[J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private setAlbumInfo(Lcn/nubia/music/online/model/AlbumModel;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 112
    const v0, 0x7f100057

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v2, p1, Lcn/nubia/music/online/model/AlbumModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    const v2, 0x7f0b0021

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcn/nubia/music/online/model/AlbumModel;->mSubTitle:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v0, 0x7f100034

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/music/ui/CustomImageView;

    .line 118
    new-instance v0, Lcn/nubia/music/activity/AlbumDetailActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AlbumDetailActivity$2;-><init>(Lcn/nubia/music/activity/AlbumDetailActivity;)V

    invoke-virtual {v3, v0}, Lcn/nubia/music/ui/CustomImageView;->setCurrentAlbumCallback(Lcn/nubia/music/app/listener/ICurrentAlbumCallback;)V

    .line 128
    const-string v2, ""

    .line 129
    iget-object v0, p1, Lcn/nubia/music/online/model/AlbumModel;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/music/online/model/AlbumModel;->mImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v2, p1, Lcn/nubia/music/online/model/AlbumModel;->mImageUrl:Ljava/lang/String;

    .line 135
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/activity/AlbumDetailActivity;->setDetailAlbum(ILjava/lang/String;Landroid/widget/ImageView;J)V

    .line 136
    return-void

    .line 131
    :cond_1
    iget-object v0, p1, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v0, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p1, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFavoriteImage()V
    .locals 3

    .prologue
    .line 159
    const v0, 0x7f10006b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    new-instance v1, Lcn/nubia/music/activity/AlbumDetailActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/activity/AlbumDetailActivity$a;-><init>(Lcn/nubia/music/activity/AlbumDetailActivity;Lcn/nubia/music/activity/AlbumDetailActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAddFavoriteInListView:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;->isLikeOfAlbum(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private setTotalNumAndDuration(Ljava/util/List;)V
    .locals 6
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
    const/4 v2, 0x0

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 268
    instance-of v5, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v5, :cond_1

    .line 269
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 270
    iget-object v5, v0, Lcn/nubia/music/online/model/MusicModel;->mMusicDurating:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    iget-object v0, v0, Lcn/nubia/music/online/model/MusicModel;->mMusicDurating:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 274
    goto :goto_0

    .line 276
    :cond_0
    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    const v4, 0x7f0b0013

    invoke-virtual {p0, v4}, Lcn/nubia/music/activity/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const v3, 0xea60

    div-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-class v0, Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initActionBar()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initActionBar()V

    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090012

    iget-object v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 68
    return-void
.end method

.method protected initHeaer()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->initHeaer()V

    .line 141
    const v0, 0x7f100069

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 145
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/activity/AlbumDetailActivity;->setFavoriteImage()V

    .line 146
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->isActive()Z

    move-result v0

    return v0
.end method

.method protected loadData()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcn/nubia/music/activity/AlbumDetailActivity;->exitActionMode()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;->loadSongList(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected needChangeImage()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected nodataOption()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsStartedDeleteActivity:Z

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcn/nubia/music/activity/AlbumDetailActivity;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onComplete(Ljava/util/List;)V
    .locals 0
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
    .line 107
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->onComplete(Ljava/util/List;)V

    .line 108
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/AlbumDetailActivity;->getAudioId(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0}, Lcn/nubia/music/activity/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-string v1, "albumid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "albumid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 47
    :cond_0
    iput v3, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mCurrentDetailType:I

    .line 48
    new-instance v0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;-><init>(Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;)V

    .line 49
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcn/nubia/music/activity/AlbumDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;->loadSummaryInfo(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setDelete(Z)V

    .line 54
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setIsLocalDetail(Z)V

    .line 56
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcn/nubia/music/activity/BaseDetailListActivity;->onStop()V

    .line 61
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;->stop()V

    .line 62
    return-void
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    .line 174
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/AlbumDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;)V

    return-void
.end method

.method public showIsLike(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsInFavorite:Z

    .line 224
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAddFavoriteInListView:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAddFavoriteInListView:Landroid/widget/ImageView;

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public showLikeFail()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    .line 205
    return-void
.end method

.method public showLikeSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAddFavoriteInListView:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsInFavorite:Z

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    .line 200
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
    .line 184
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->onComplete(Ljava/util/List;)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/AlbumDetailActivity;->setTotalNumAndDuration(Ljava/util/List;)V

    .line 188
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/AlbumDetailActivity;->onComplete(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showSummaryInfo(Lcn/nubia/music/online/model/AlbumModel;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p1, Lcn/nubia/music/online/model/AlbumModel;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAlbumName:Ljava/lang/String;

    .line 179
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/AlbumDetailActivity;->setAlbumInfo(Lcn/nubia/music/online/model/AlbumModel;)V

    .line 180
    return-void
.end method

.method public showUnLikeFail()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    .line 219
    return-void
.end method

.method public showUnLikeSuccess(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mAddFavoriteInListView:Landroid/widget/ImageView;

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iput-boolean v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsInFavorite:Z

    .line 213
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity;->mIsAddingFavorite:Z

    .line 214
    return-void
.end method
