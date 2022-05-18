.class public Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;
.super Landroid/widget/BaseAdapter;
.source "BasePlayListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BasePlayListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayManagerTrackAdpter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;
    }
.end annotation


# instance fields
.field public mCheckedPosition:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActionModeState:Z

.field final synthetic this$0:Lcn/nubia/music/fragment/BasePlayListFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/BasePlayListFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 410
    iput-object p1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->this$0:Lcn/nubia/music/fragment/BasePlayListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedSet:Ljava/util/Set;

    .line 337
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mIsActionModeState:Z

    .line 411
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mInflater:Landroid/view/LayoutInflater;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedSet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public bindViewData(ILandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;

    .line 459
    if-eqz v1, :cond_0

    .line 460
    iget-object v2, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcn/nubia/music/online/model/MediaModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v2, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcn/nubia/music/online/model/MediaModel;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->this$0:Lcn/nubia/music/fragment/BasePlayListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment;->mActionModManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->d:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 475
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->this$0:Lcn/nubia/music/fragment/BasePlayListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->c:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/music/fragment/BasePlayListFragment;->setPlayIndicator(Landroid/view/View;I)V

    .line 478
    :cond_0
    return-void

    .line 468
    :cond_1
    iget-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 472
    iget-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->d:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public clearCheckedItem()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 369
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 394
    iget-boolean v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedSet:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-boolean v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 381
    new-array v2, v0, [J

    .line 382
    const/4 v0, 0x0

    .line 383
    iget-object v1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 384
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 386
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 388
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 429
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 440
    if-nez p2, :cond_0

    .line 441
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 442
    new-instance v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;-><init>(Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;)V

    .line 444
    const v0, 0x7f10005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->a:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f10017f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->b:Landroid/widget/TextView;

    .line 446
    const v0, 0x7f10005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicPlayingIndicator;

    iput-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->c:Lcn/nubia/music/ui/MusicPlayingIndicator;

    .line 447
    const v0, 0x7f10005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter$a;->d:Landroid/widget/CheckBox;

    .line 448
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->bindViewData(ILandroid/view/View;)V

    .line 451
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public setActionModeState(Z)V
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mIsActionModeState:Z

    .line 373
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
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
    .line 344
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->this$0:Lcn/nubia/music/fragment/BasePlayListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/nubia/music/fragment/BasePlayListFragment;->mIsLoading:Z

    .line 345
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 347
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 348
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->this$0:Lcn/nubia/music/fragment/BasePlayListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment;->exitActionMode()V

    .line 350
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->this$0:Lcn/nubia/music/fragment/BasePlayListFragment;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/BasePlayListFragment;->showNoData()V

    .line 354
    :cond_1
    if-nez p1, :cond_2

    .line 355
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->notifyDataSetChanged()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    invoke-virtual {p0}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->notifyDataSetChanged()V

    goto :goto_0
.end method
