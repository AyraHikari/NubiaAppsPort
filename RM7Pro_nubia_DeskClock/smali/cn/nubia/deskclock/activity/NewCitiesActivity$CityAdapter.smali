.class Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/deskclock/util/PinnedHeaderListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;
    }
.end annotation


# static fields
.field private static final DELETED_ENTRY:Ljava/lang/String; = "C0"


# instance fields
.field private mFilter:Landroid/widget/Filter;

.field private mFilterAllCitiesList:[Ljava/lang/Object;

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIs24HoursMode:Z

.field final synthetic this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "factory"    # Landroid/view/LayoutInflater;

    .prologue
    .line 601
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .line 602
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 603
    invoke-direct {p0, p2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->loadCitiesDataBase(Landroid/content/Context;)V

    .line 604
    iput-object p3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 605
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1402(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 606
    invoke-static {p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1400(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 607
    invoke-virtual {p0, p2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 608
    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    .prologue
    .line 592
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mFilterAllCitiesList:[Ljava/lang/Object;

    return-object v0
.end method

.method private isMove(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 1038
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 1039
    .local v0, "currentEntity":Lcn/nubia/deskclock/model/City;
    const/4 v2, 0x0

    .line 1040
    .local v2, "nextEntity":Lcn/nubia/deskclock/model/City;
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v5}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1041
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nextEntity":Lcn/nubia/deskclock/model/City;
    check-cast v2, Lcn/nubia/deskclock/model/City;

    .line 1045
    .restart local v2    # "nextEntity":Lcn/nubia/deskclock/model/City;
    :goto_0
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    .line 1058
    :cond_0
    :goto_1
    return v4

    .line 1043
    :cond_1
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nextEntity":Lcn/nubia/deskclock/model/City;
    check-cast v2, Lcn/nubia/deskclock/model/City;

    .restart local v2    # "nextEntity":Lcn/nubia/deskclock/model/City;
    goto :goto_0

    .line 1049
    :cond_2
    iget-object v1, v0, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    .line 1050
    .local v1, "currentTitle":Ljava/lang/String;
    iget-object v3, v2, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    .line 1051
    .local v3, "nextTitle":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 1055
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1056
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private loadCitiesDataBase(Landroid/content/Context;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 776
    invoke-static {}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->getAllSupportCities()[Lcn/nubia/deskclock/model/City;

    move-result-object v7

    if-nez v7, :cond_0

    .line 777
    const-string v7, "NewCitiesActivity"

    const-string v8, "loadCitiesDataBase: null"

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {p1}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/deskclock/model/City;

    move-result-object v4

    .line 783
    .local v4, "mTempCityList":[Lcn/nubia/deskclock/model/City;
    :goto_0
    if-nez v4, :cond_1

    .line 804
    :goto_1
    return-void

    .line 780
    .end local v4    # "mTempCityList":[Lcn/nubia/deskclock/model/City;
    :cond_0
    const-string v7, "NewCitiesActivity"

    const-string v8, "loadCitiesDataBase: not null "

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->getAllSupportCities()[Lcn/nubia/deskclock/model/City;

    move-result-object v4

    .restart local v4    # "mTempCityList":[Lcn/nubia/deskclock/model/City;
    goto :goto_0

    .line 787
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v6, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v5, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/City;>;"
    const/4 v1, 0x0

    .line 791
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v4

    if-ge v2, v7, :cond_3

    .line 792
    aget-object v0, v4, v2

    .line 793
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    iget-object v7, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    const-string v8, "C0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 791
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 797
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 800
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    :cond_3
    iget-object v7, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1502(Lcn/nubia/deskclock/activity/NewCitiesActivity;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 801
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mFilterAllCitiesList:[Ljava/lang/Object;

    .line 802
    iget-object v7, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v7}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/deskclock/util/CitySectionIndexer;->buildFromSortKeys(Ljava/util/List;)Lcn/nubia/deskclock/util/CitySectionIndexer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 803
    iget-object v7, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v7}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1300(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v8

    iget-object v7, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setHighLightCharacterList([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private needTitle(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1062
    if-nez p1, :cond_1

    iget-object v6, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v6}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return v4

    .line 1065
    :cond_1
    iget-object v6, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v6}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v6}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-eq p1, v6, :cond_0

    .line 1068
    :cond_2
    if-gez p1, :cond_3

    move v4, v5

    .line 1069
    goto :goto_0

    .line 1071
    :cond_3
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 1072
    .local v0, "currentEntity":Lcn/nubia/deskclock/model/City;
    const/4 v2, 0x0

    .line 1073
    .local v2, "previousEntity":Lcn/nubia/deskclock/model/City;
    iget-object v6, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v6}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1074
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "previousEntity":Lcn/nubia/deskclock/model/City;
    check-cast v2, Lcn/nubia/deskclock/model/City;

    .line 1078
    .restart local v2    # "previousEntity":Lcn/nubia/deskclock/model/City;
    :goto_1
    if-eqz v0, :cond_4

    if-nez v2, :cond_6

    :cond_4
    move v4, v5

    .line 1079
    goto :goto_0

    .line 1076
    :cond_5
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "previousEntity":Lcn/nubia/deskclock/model/City;
    check-cast v2, Lcn/nubia/deskclock/model/City;

    .restart local v2    # "previousEntity":Lcn/nubia/deskclock/model/City;
    goto :goto_1

    .line 1082
    :cond_6
    iget-object v1, v0, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    .line 1083
    .local v1, "currentTitle":Ljava/lang/String;
    iget-object v3, v2, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    .line 1084
    .local v3, "previousTitle":Ljava/lang/String;
    if-eqz v3, :cond_7

    if-nez v1, :cond_8

    :cond_7
    move v4, v5

    .line 1085
    goto :goto_0

    .line 1088
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 1089
    goto :goto_0
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 6
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "alpaha"    # I

    .prologue
    .line 1097
    invoke-virtual {p0, p2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/City;

    .line 1098
    .local v2, "itemEntity":Lcn/nubia/deskclock/model/City;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    iget-object v1, v2, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    .line 1102
    .local v1, "headerValue":Ljava/lang/String;
    const-string v3, "NewCitiesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "header = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v3, "NewCitiesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configurePinnedHeader  mQueryText ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v5}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v3}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1108
    const v3, 0x7f1200a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1109
    .local v0, "headerTextView":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;Lcn/nubia/deskclock/activity/NewCitiesActivity$1;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mFilter:Landroid/widget/Filter;

    .line 810
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 639
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 645
    :goto_0
    return-object v0

    .line 642
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0

    .line 645
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 650
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1021
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 1022
    :cond_0
    const-string v0, "NewCitiesActivity"

    const-string v2, "PinnedHeaderAdapter.PINNED_HEADER_GONE"

    invoke-static {v0, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$2200(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 1034
    :goto_0
    return v0

    .line 1026
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$2200(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->isMove(I)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1030
    const-string v0, "NewCitiesActivity"

    const-string v1, "PinnedHeaderAdapter.PINNED_HEADER_PUSHED_UP"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v0, 0x2

    goto :goto_0

    .line 1033
    :cond_2
    const-string v1, "NewCitiesActivity"

    const-string v2, "PinnedHeaderAdapter.PINNED_HEADER_VISIBLE"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "section":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 613
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 615
    .local v2, "sectionIndex":I
    if-ltz v2, :cond_0

    .line 616
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v2

    .end local v1    # "section":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 619
    .end local v2    # "sectionIndex":I
    .restart local v1    # "section":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getSectionPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 623
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    check-cast v0, Lcn/nubia/deskclock/util/CitySectionIndexer;

    .line 624
    .local v0, "indexer":Lcn/nubia/deskclock/util/CitySectionIndexer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/util/CitySectionIndexer;->getPositionForSection(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v13

    array-length v13, v13

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    .line 662
    :cond_0
    const/4 v13, 0x0

    .line 765
    :goto_0
    return-object v13

    .line 664
    :cond_1
    const/4 v1, 0x0

    .line 665
    .local v1, "city":Lcn/nubia/deskclock/model/City;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v14}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    sub-int v14, v14, p1

    aget-object v1, v13, v14

    .end local v1    # "city":Lcn/nubia/deskclock/model/City;
    check-cast v1, Lcn/nubia/deskclock/model/City;

    .line 671
    .restart local v1    # "city":Lcn/nubia/deskclock/model/City;
    :goto_1
    if-eqz p2, :cond_2

    const v13, 0x7f1200a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_3

    .line 672
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f040028

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 674
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    const v13, 0x7f1200a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 677
    .local v10, "name":Landroid/widget/TextView;
    const v13, 0x7f1200a2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 678
    .local v3, "countryName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1700(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "false"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 679
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    :cond_4
    const v13, 0x7f12009f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 682
    .local v9, "linearLetterUp":Landroid/widget/LinearLayout;
    const v13, 0x7f1200a0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 684
    .local v7, "letterUp":Landroid/widget/TextView;
    const v13, 0x7f1200a3

    .line 685
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 686
    .local v8, "linearLetterDown":Landroid/widget/LinearLayout;
    const v13, 0x7f1200a4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 688
    .local v6, "letterDown":Landroid/widget/TextView;
    iget-object v2, v1, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    .line 689
    .local v2, "cityname":Ljava/lang/String;
    iget-object v4, v1, Lcn/nubia/deskclock/model/City;->mCountryName:Ljava/lang/String;

    .line 714
    .local v4, "countryname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 715
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 732
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 733
    .local v12, "style":Landroid/text/SpannableStringBuilder;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v14}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 734
    .local v11, "start":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v5, v11, v13

    .line 735
    .local v5, "end":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_8

    .line 736
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .line 737
    invoke-static {v14}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f007a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    .line 736
    invoke-virtual {v12, v13, v11, v5, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 741
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    .end local v5    # "end":I
    .end local v11    # "start":I
    .end local v12    # "style":Landroid/text/SpannableStringBuilder;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 749
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 750
    .restart local v12    # "style":Landroid/text/SpannableStringBuilder;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v14}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 751
    .restart local v11    # "start":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v5, v11, v13

    .line 752
    .restart local v5    # "end":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_a

    .line 753
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .line 754
    invoke-static {v14}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f007a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    .line 753
    invoke-virtual {v12, v13, v11, v5, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 758
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "end":I
    .end local v11    # "start":I
    .end local v12    # "style":Landroid/text/SpannableStringBuilder;
    :goto_4
    move-object/from16 v13, p2

    .line 765
    goto/16 :goto_0

    .line 668
    .end local v2    # "cityname":Ljava/lang/String;
    .end local v3    # "countryName":Landroid/widget/TextView;
    .end local v4    # "countryname":Ljava/lang/String;
    .end local v6    # "letterDown":Landroid/widget/TextView;
    .end local v7    # "letterUp":Landroid/widget/TextView;
    .end local v8    # "linearLetterDown":Landroid/widget/LinearLayout;
    .end local v9    # "linearLetterUp":Landroid/widget/LinearLayout;
    .end local v10    # "name":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v13}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v13

    aget-object v1, v13, p1

    .end local v1    # "city":Lcn/nubia/deskclock/model/City;
    check-cast v1, Lcn/nubia/deskclock/model/City;

    .restart local v1    # "city":Lcn/nubia/deskclock/model/City;
    goto/16 :goto_1

    .line 719
    .restart local v2    # "cityname":Ljava/lang/String;
    .restart local v3    # "countryName":Landroid/widget/TextView;
    .restart local v4    # "countryname":Ljava/lang/String;
    .restart local v6    # "letterDown":Landroid/widget/TextView;
    .restart local v7    # "letterUp":Landroid/widget/TextView;
    .restart local v8    # "linearLetterDown":Landroid/widget/LinearLayout;
    .restart local v9    # "linearLetterUp":Landroid/widget/LinearLayout;
    .restart local v10    # "name":Landroid/widget/TextView;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->needTitle(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 720
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 724
    iget-object v13, v1, Lcn/nubia/deskclock/model/City;->mCityLetter:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 726
    :cond_7
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 743
    .restart local v5    # "end":I
    .restart local v11    # "start":I
    .restart local v12    # "style":Landroid/text/SpannableStringBuilder;
    :cond_8
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 746
    .end local v5    # "end":I
    .end local v11    # "start":I
    .end local v12    # "style":Landroid/text/SpannableStringBuilder;
    :cond_9
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 760
    .restart local v5    # "end":I
    .restart local v11    # "start":I
    .restart local v12    # "style":Landroid/text/SpannableStringBuilder;
    :cond_a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 763
    .end local v5    # "end":I
    .end local v11    # "start":I
    .end local v12    # "style":Landroid/text/SpannableStringBuilder;
    :cond_b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .line 656
    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcn/nubia/deskclock/model/City;

    iget-object v0, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 815
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 816
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/util/CitySectionIndexer;->buildFromSortKeys(Ljava/util/List;)Lcn/nubia/deskclock/util/CitySectionIndexer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 817
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$2000(Lcn/nubia/deskclock/activity/NewCitiesActivity;I)V

    .line 818
    return-void
.end method

.method public set24HoursMode(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 769
    invoke-static {p1}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mIs24HoursMode:Z

    .line 770
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 771
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 0
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 628
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 629
    return-void
.end method
