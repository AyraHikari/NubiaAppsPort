.class public Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseMoreListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;
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

.field final synthetic this$0:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 1

    .prologue
    .line 836
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    .line 838
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    .line 839
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mIsActionModeState:Z

    return-void
.end method

.method private arrayContainItem(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1024
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mAdapter:Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;

    invoke-virtual {v1}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->getCheckedItemIds()[J

    move-result-object v2

    .line 1025
    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v0

    .line 1029
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-wide v4, v2, v1

    .line 1030
    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 1031
    const/4 v0, 0x1

    goto :goto_0

    .line 1029
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public combineTextIndex(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    const-string v0, ""

    .line 925
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    :goto_0
    return-object v0

    .line 928
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 881
    iget-boolean v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 887
    :cond_0
    :goto_0
    return v0

    .line 885
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 856
    iget-boolean v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object v0

    .line 860
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 861
    new-array v2, v0, [J

    .line 862
    const/4 v0, 0x0

    .line 863
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mCheckedPosition:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 864
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 866
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 868
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 894
    const/4 v0, 0x0

    .line 896
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 903
    :cond_0
    const/4 v0, 0x0

    .line 905
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 910
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f0f0043

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 936
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

    .line 938
    if-nez p2, :cond_3

    .line 940
    const-string v0, "base more new view"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 941
    new-instance v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;)V

    .line 942
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    const-string v2, "layout_inflater"

    .line 943
    invoke-virtual {v0, v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 944
    const v2, 0x7f03008d

    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 945
    const v0, 0x7f10005b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 946
    const v0, 0x7f10005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 947
    const v0, 0x7f10005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    .line 948
    const v0, 0x7f10017e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->index:Landroid/widget/TextView;

    .line 951
    const v0, 0x7f100034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 952
    const v0, 0x7f10005e

    .line 953
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicPlayingIndicator;

    iput-object v0, v1, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

    .line 954
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 959
    :goto_0
    invoke-virtual {p2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 960
    iget-object v0, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object v0, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mBmpDefaultListDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 964
    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 965
    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v7, v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v1, :cond_4

    .line 967
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 969
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    :cond_0
    :goto_1
    iget-object v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/online/model/MediaModel;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->setListItemTitle(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;)V

    .line 980
    iget-object v3, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mSongsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/online/model/MediaModel;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/music/activity/BaseMoreListActivity;->setListItemImage(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;)V

    .line 982
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->index:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->combineTextIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->this$0:Lcn/nubia/music/activity/BaseMoreListActivity;

    iget-object v1, v1, Lcn/nubia/music/activity/BaseMoreListActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->isActionMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 985
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 987
    instance-of v1, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 989
    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    if-ne v7, v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcn/nubia/music/online/model/MusicModel;

    iget-boolean v1, v1, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    if-nez v1, :cond_1

    .line 991
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 992
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1000
    :cond_1
    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->arrayContainItem(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1001
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1009
    :goto_2
    const-wide/16 v4, -0x1

    .line 1010
    sget-boolean v1, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v1, :cond_2

    .line 1011
    iget-boolean v1, v0, Lcn/nubia/music/online/model/MediaModel;->mIsLocal:Z

    if-eqz v1, :cond_2

    .line 1012
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v4

    .line 1015
    :cond_2
    iget-wide v0, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_7

    .line 1016
    iget-object v0, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v6}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setVisibility(I)V

    .line 1020
    :goto_3
    return-object p2

    .line 956
    :cond_3
    const-string v0, "base more getTag"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;

    move-object v2, v0

    goto/16 :goto_0

    .line 972
    :cond_4
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0f005f

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 974
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const v3, 0x7f0f005e

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 1003
    :cond_5
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1006
    :cond_6
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1007
    iget-object v1, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 1018
    :cond_7
    iget-object v0, v2, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter$ViewHolder;->playIndicator:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v8}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setVisibility(I)V

    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 915
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 916
    return-void
.end method

.method public setActionModeState(Z)V
    .locals 0

    .prologue
    .line 852
    iput-boolean p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$MusicAdapter;->mIsActionModeState:Z

    .line 853
    return-void
.end method
