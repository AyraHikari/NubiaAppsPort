.class public Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseLetterListFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcn/nubia/music/app/menu/MusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBrowseAdapter"
.end annotation


# instance fields
.field public mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

.field public mInflater:Landroid/view/LayoutInflater;

.field private mIsActionModeState:Z

.field public mMdeiaModeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field public mMediaModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 934
    iput-object p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    .line 935
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    .line 931
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    .line 932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mIsActionModeState:Z

    .line 936
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 937
    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 965
    iget-boolean v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 969
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 944
    iget-boolean v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-object v0

    .line 948
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 952
    new-array v2, v0, [J

    .line 953
    const/4 v0, 0x0

    .line 954
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 955
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v2, v1

    .line 957
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 959
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 989
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/MyAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 1112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/MyAlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 1120
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mCursorIndexer:Lcn/nubia/music/fragment/MyAlphabetIndexer;

    invoke-virtual {v0}, Lcn/nubia/music/fragment/MyAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const v9, 0x7f1000a6

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 996
    if-nez p2, :cond_3

    .line 997
    new-instance v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;

    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-direct {v1, v0, v5}, Lcn/nubia/music/fragment/BaseLetterListFragment$a;-><init>(Lcn/nubia/music/fragment/BaseLetterListFragment;Lcn/nubia/music/fragment/BaseLetterListFragment$1;)V

    .line 998
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002d

    invoke-virtual {v0, v2, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 999
    const v0, 0x7f1000a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->a:Landroid/view/View;

    .line 1000
    iget-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setLongClickable(Z)V

    .line 1001
    const v0, 0x7f1000a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->b:Landroid/widget/TextView;

    .line 1002
    const v0, 0x7f1000a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/RoundImageView2;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->c:Lcn/nubia/music/ui/RoundImageView2;

    .line 1003
    const v0, 0x7f1000a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->i:Landroid/widget/LinearLayout;

    .line 1004
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->d:Landroid/widget/TextView;

    .line 1005
    const v0, 0x7f1000a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->e:Landroid/widget/TextView;

    .line 1006
    const v0, 0x7f1000a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->f:Landroid/widget/TextView;

    .line 1007
    const v0, 0x7f10005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MusicPlayingIndicator;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->g:Lcn/nubia/music/ui/MusicPlayingIndicator;

    .line 1008
    const v0, 0x7f10005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->h:Landroid/widget/CheckBox;

    .line 1010
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v2, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-ne v0, v2, :cond_0

    .line 1012
    iget-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->c:Lcn/nubia/music/ui/RoundImageView2;

    invoke-virtual {v0, v10}, Lcn/nubia/music/ui/RoundImageView2;->setRoundEffect(Z)V

    .line 1013
    iget-object v0, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1600(Lcn/nubia/music/fragment/BaseLetterListFragment;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v3}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1600(Lcn/nubia/music/fragment/BaseLetterListFragment;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1015
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1016
    iget-object v2, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/BaseLetterListFragment;->access$1700(Lcn/nubia/music/fragment/BaseLetterListFragment;)I

    move-result v2

    invoke-virtual {v0, v10, v10, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1017
    iget-object v2, v1, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->c:Lcn/nubia/music/ui/RoundImageView2;

    invoke-virtual {v2, v0}, Lcn/nubia/music/ui/RoundImageView2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 1023
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 1025
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    sget-object v3, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    if-ne v1, v3, :cond_4

    iget-boolean v1, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v3, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-eq v1, v3, :cond_4

    .line 1027
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->a:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v4, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->b:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1033
    :goto_1
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcn/nubia/music/online/model/MediaModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->e:Landroid/widget/TextView;

    iget-object v3, v0, Lcn/nubia/music/online/model/MediaModel;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-boolean v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mIsActionModeState:Z

    if-eqz v1, :cond_6

    .line 1037
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1038
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMdeiaModeSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1039
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1047
    :goto_2
    invoke-virtual {p2, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1048
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v3, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_MUSIC:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-ne v1, v3, :cond_9

    .line 1051
    sget-boolean v1, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v1, :cond_1

    .line 1052
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v4

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sService.getAudioId()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1054
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1056
    iget-wide v0, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_8

    .line 1057
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1058
    iget-object v0, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->g:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v10}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setVisibility(I)V

    .line 1067
    :cond_1
    :goto_3
    iget-object v0, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->c:Lcn/nubia/music/ui/RoundImageView2;

    invoke-virtual {v0, v11}, Lcn/nubia/music/ui/RoundImageView2;->setVisibility(I)V

    .line 1098
    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView(),costTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1099
    return-object p2

    .line 1021
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/BaseLetterListFragment$a;

    move-object v2, v0

    goto/16 :goto_0

    .line 1031
    :cond_4
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->a:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1041
    :cond_5
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1044
    :cond_6
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1045
    iget-object v1, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 1060
    :cond_7
    iget-object v0, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->g:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setPauseDrawable()V

    goto :goto_3

    .line 1063
    :cond_8
    iget-object v0, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->g:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-virtual {v0, v11}, Lcn/nubia/music/ui/MusicPlayingIndicator;->setVisibility(I)V

    goto :goto_3

    .line 1071
    :cond_9
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v3, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ARTIST:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-ne v1, v3, :cond_b

    .line 1073
    const-string v1, ""

    .line 1074
    iget-object v1, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v1, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1075
    iget-object v0, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v3, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 1079
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " artist image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1080
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->c:Lcn/nubia/music/ui/RoundImageView2;

    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getArtistListAvatarOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto/16 :goto_4

    .line 1077
    :cond_a
    iget-object v3, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrl:Ljava/lang/String;

    goto :goto_5

    .line 1082
    :cond_b
    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    iget-object v1, v1, Lcn/nubia/music/fragment/BaseLetterListFragment;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v3, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    if-ne v1, v3, :cond_2

    .line 1084
    iget-object v3, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->f:Landroid/widget/TextView;

    const v1, 0x7f0b00b7

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcn/nubia/music/online/model/AlbumModel;

    iget v1, v1, Lcn/nubia/music/online/model/AlbumModel;->numMusic:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v10

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    const-string v3, ""

    .line 1087
    iget-object v1, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1088
    iget-object v3, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrl:Ljava/lang/String;

    .line 1093
    :cond_c
    :goto_6
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->this$0:Lcn/nubia/music/fragment/BaseLetterListFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v2, Lcn/nubia/music/fragment/BaseLetterListFragment$a;->c:Lcn/nubia/music/ui/RoundImageView2;

    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getAlbumListCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    goto/16 :goto_4

    .line 1089
    :cond_d
    iget-object v1, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v1, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1090
    iget-object v0, v0, Lcn/nubia/music/online/model/MediaModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v3, v0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    goto :goto_6
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x1

    return v0
.end method

.method public setActionModeState(Z)V
    .locals 0

    .prologue
    .line 940
    iput-boolean p1, p0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mIsActionModeState:Z

    .line 941
    return-void
.end method
