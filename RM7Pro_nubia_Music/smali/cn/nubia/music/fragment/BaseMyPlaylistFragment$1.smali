.class Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;
.super Lcn/nubia/music/adapter/CustomRecycleAdapter;
.source "BaseMyPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BaseMyPlaylistFragment;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    invoke-direct {p0, p2, p3}, Lcn/nubia/music/adapter/CustomRecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public displayItemContent(Lcn/nubia/music/adapter/CustomViewHolderHelper;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const v3, 0x7f1000af

    const v1, 0x7f1000a3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f10005f

    .line 72
    check-cast p2, Lcn/nubia/music/online/model/MediaModel;

    .line 73
    if-nez p2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p2, Lcn/nubia/music/online/model/MediaModel;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setText(ILjava/lang/String;)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    .line 78
    iget v0, p2, Lcn/nubia/music/online/model/MediaModel;->mType:I

    if-eq v0, v8, :cond_1

    iget v0, p2, Lcn/nubia/music/online/model/MediaModel;->mType:I

    if-eqz v0, :cond_1

    iget v0, p2, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p2, Lcn/nubia/music/online/model/MediaModel;->mType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 82
    :cond_1
    iget-object v0, p2, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 83
    const v2, 0x7f0f003e

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setTextColor(II)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    .line 84
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    .line 85
    const/4 v2, 0x0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    const v2, 0x7f0b022d

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImagerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    iget-object v3, v0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mContext:Landroid/content/Context;

    iget-wide v4, p2, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setImageBitmap(ILjava/lang/String;Landroid/content/Context;J)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    .line 92
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    iget-boolean v0, v0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMode:Z

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p1, v6, v7}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setIsVisible(II)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    .line 94
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p1, v6, v8}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setIsChecked(IZ)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1, v6, v7}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setIsChecked(IZ)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p1, v6, v7}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setIsChecked(IZ)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    .line 102
    const/16 v0, 0x8

    invoke-virtual {p1, v6, v0}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->setIsVisible(II)Lcn/nubia/music/adapter/CustomViewHolderHelper;

    goto :goto_0
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    iget-boolean v0, v0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->mActionMode:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->actionModeItemClick(Landroid/view/View;I)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    invoke-virtual {v0, p2}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->itemClick(I)V

    goto :goto_0
.end method

.method public onLongItemClick(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseMyPlaylistFragment$1;->a:Lcn/nubia/music/fragment/BaseMyPlaylistFragment;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/fragment/BaseMyPlaylistFragment;->itemLongClick(Landroid/view/View;I)V

    .line 118
    return-void
.end method
