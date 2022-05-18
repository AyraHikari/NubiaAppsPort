.class public Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;
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

.field public mCheckedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActionModeState:Z

.field public mSongsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/music/activity/BaseDetailListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 1

    .prologue
    .line 818
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    .line 820
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    .line 821
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mIsActionModeState:Z

    return-void
.end method

.method private arrayContainItem(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity;->mAdapter:Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->getCheckedItemIds()[J

    move-result-object v2

    .line 992
    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v0

    .line 996
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-wide v4, v2, v1

    .line 997
    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 998
    const/4 v0, 0x1

    goto :goto_0

    .line 996
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCheckedItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 855
    iget-boolean v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 837
    iget-boolean v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-object v0

    .line 841
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 842
    new-array v2, v0, [J

    .line 843
    const/4 v0, 0x0

    .line 844
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 845
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 847
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 849
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 870
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 877
    :cond_0
    const/4 v0, 0x0

    .line 879
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 884
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const v11, 0x7f0f0043

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " base more get view positon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 906
    if-nez p2, :cond_3

    .line 908
    const-string v0, "base more new view"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 909
    new-instance v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;)V

    .line 910
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    const-string v2, "layout_inflater"

    .line 911
    invoke-virtual {v0, v2}, Lcn/nubia/music/activity/BaseDetailListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 912
    const v2, 0x7f03001a

    invoke-virtual {v0, v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 913
    const v0, 0x7f10005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 914
    const v0, 0x7f10005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 915
    const v0, 0x7f10005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    .line 917
    const v0, 0x7f100034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 918
    const v0, 0x7f10005e

    .line 919
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicPlayingIndicator;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

    .line 920
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    .line 925
    :goto_0
    invoke-virtual {p2, v8, v8}, Landroid/view/View;->measure(II)V

    .line 926
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseDetailListActivity;->mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/nubia/music/online/model/MediaModel;

    .line 929
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mCurrentDetailType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 931
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v2, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v3, v6, Lcn/nubia/music/online/model/MediaModel;->mImageUrl:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    .line 937
    :goto_1
    instance-of v0, v6, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 938
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v10, v0, :cond_5

    move-object v0, v6

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v0, :cond_5

    .line 940
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v11}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-static {v11}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 952
    :cond_0
    :goto_2
    iget-object v1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    invoke-virtual {v1, v0, v7}, Lcn/nubia/music/activity/BaseDetailListActivity;->setListItemTitle(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;)V

    .line 953
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    invoke-virtual {p0, v0, v7}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->setListItemImage(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;)V

    .line 956
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseDetailListActivity;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseDetailListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 957
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 959
    instance-of v0, v6, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v0, :cond_1

    move-object v0, v6

    .line 961
    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v10, v0, :cond_1

    move-object v0, v6

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v0, v0, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v0, :cond_1

    .line 963
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 964
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 967
    :cond_1
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->arrayContainItem(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 976
    :goto_3
    const-wide/16 v0, -0x1

    .line 977
    sget-boolean v2, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v2, :cond_2

    .line 978
    iget-boolean v2, v6, Lcn/nubia/music/online/model/MediaModel;->mIsLocal:Z

    if-eqz v2, :cond_2

    .line 979
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v0

    .line 982
    :cond_2
    iget-wide v2, v6, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 983
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v8}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setVisibility(I)V

    .line 987
    :goto_4
    return-object p2

    .line 922
    :cond_3
    const-string v0, "base more getTag"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;

    move-object v7, v0

    goto/16 :goto_0

    .line 934
    :cond_4
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 945
    :cond_5
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0f005f

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 947
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const v1, 0x7f0f005e

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 970
    :cond_6
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 973
    :cond_7
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 974
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 985
    :cond_8
    iget-object v0, v7, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;->playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v9}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setVisibility(I)V

    goto :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 889
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 890
    return-void
.end method

.method public setActionModeState(Z)V
    .locals 0

    .prologue
    .line 833
    iput-boolean p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter;->mIsActionModeState:Z

    .line 834
    return-void
.end method

.method protected setListItemImage(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseDetailListActivity$MusicAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 900
    return-void
.end method
