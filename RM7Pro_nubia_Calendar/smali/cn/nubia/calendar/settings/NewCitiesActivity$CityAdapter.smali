.class Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/calendar/util/PinnedHeaderListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;
    }
.end annotation


# static fields
.field private static final DELETED_ENTRY:Ljava/lang/String; = "C0"


# instance fields
.field private filter:Landroid/widget/Filter;

.field private mAllTheCitiesList:[Ljava/lang/Object;

.field private mFilterAllCitiesList:[Ljava/lang/Object;

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mSelectedCitiesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/settings/City;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity;Landroid/content/Context;Ljava/util/LinkedHashMap;Landroid/view/LayoutInflater;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "factory"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/settings/City;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "selectedList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;"
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    invoke-direct {p0, p2}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->loadCitiesDataBase(Landroid/content/Context;)V

    .line 139
    iput-object p3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mSelectedCitiesList:Ljava/util/LinkedHashMap;

    .line 140
    iput-object p4, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$002(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 142
    invoke-static {p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$000(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 143
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method static synthetic access$600(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mFilterAllCitiesList:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    return-object p1
.end method

.method private isMove(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 406
    .local v0, "currentEntity":Lcn/nubia/calendar/settings/City;
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/settings/City;

    .line 407
    .local v2, "nextEntity":Lcn/nubia/calendar/settings/City;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v4

    .line 411
    :cond_1
    iget-object v1, v0, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 412
    .local v1, "currentTitle":Ljava/lang/String;
    iget-object v3, v2, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 413
    .local v3, "nextTitle":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 418
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private loadCitiesDataBase(Landroid/content/Context;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-static {p1}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/calendar/settings/City;

    move-result-object v6

    .line 297
    .local v6, "tempList":[Lcn/nubia/calendar/settings/City;
    if-nez v6, :cond_0

    .line 320
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v7, 0x0

    .line 302
    .local v7, "val":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v4, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/settings/City;>;"
    const/4 v1, 0x0

    .line 306
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 307
    aget-object v0, v6, v2

    .line 308
    .local v0, "city":Lcn/nubia/calendar/settings/City;
    iget-object v8, v0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    const-string v9, "C0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 306
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    .end local v0    # "city":Lcn/nubia/calendar/settings/City;
    :cond_2
    invoke-static {v3}, Lcn/nubia/calendar/util/CitySectionIndexer;->buildFromSortKeys(Ljava/util/ArrayList;)Lcn/nubia/calendar/util/CitySectionIndexer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 316
    iget-object v8, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v8}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;

    move-result-object v9

    iget-object v8, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 317
    invoke-interface {v8}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    .line 316
    invoke-virtual {v9, v8}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setHighLightCharacterList([Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    .line 319
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mFilterAllCitiesList:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private needTitle(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 425
    if-nez p1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v4

    .line 428
    :cond_1
    if-gez p1, :cond_2

    move v4, v5

    .line 429
    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 432
    .local v0, "currentEntity":Lcn/nubia/calendar/settings/City;
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/settings/City;

    .line 433
    .local v2, "previousEntity":Lcn/nubia/calendar/settings/City;
    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v4, v5

    .line 434
    goto :goto_0

    .line 437
    :cond_4
    iget-object v1, v0, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 438
    .local v1, "currentTitle":Ljava/lang/String;
    iget-object v3, v2, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 439
    .local v3, "previousTitle":Ljava/lang/String;
    if-eqz v3, :cond_5

    if-nez v1, :cond_6

    :cond_5
    move v4, v5

    .line 440
    goto :goto_0

    .line 443
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 444
    goto :goto_0
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 4
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "alpaha"    # I

    .prologue
    .line 453
    invoke-virtual {p0, p2}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/settings/City;

    .line 454
    .local v2, "itemEntity":Lcn/nubia/calendar/settings/City;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v1, v2, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 459
    .local v1, "headerValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    const v3, 0x7f1100b3

    .line 461
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 462
    .local v0, "headerTextView":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

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
    .line 323
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->filter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;Lcn/nubia/calendar/settings/NewCitiesActivity$1;)V

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->filter:Landroid/widget/Filter;

    .line 326
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_2

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 401
    :cond_1
    :goto_0
    return v0

    .line 398
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->isMove(I)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 399
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "section":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 149
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 151
    .local v2, "sectionIndex":I
    if-ltz v2, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v2

    .end local v1    # "section":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 155
    .end local v2    # "sectionIndex":I
    .restart local v1    # "section":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getSectionPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    check-cast v0, Lcn/nubia/calendar/util/CitySectionIndexer;

    .line 160
    .local v0, "indexer":Lcn/nubia/calendar/util/CitySectionIndexer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    .line 161
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/calendar/util/CitySectionIndexer;->getPositionForSection(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 200
    :cond_0
    const/16 v17, 0x0

    .line 286
    :goto_0
    return-object v17

    .line 202
    :cond_1
    const/4 v4, 0x0

    .line 203
    .local v4, "city":Lcn/nubia/calendar/settings/City;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v18, v18, p1

    aget-object v4, v17, v18

    .end local v4    # "city":Lcn/nubia/calendar/settings/City;
    check-cast v4, Lcn/nubia/calendar/settings/City;

    .line 208
    .restart local v4    # "city":Lcn/nubia/calendar/settings/City;
    :goto_1
    if-eqz p2, :cond_2

    const v17, 0x7f1100f6

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_3

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030044

    const/16 v19, 0x0

    .line 210
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 212
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v17, 0x7f1100f6

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 215
    .local v12, "name":Landroid/widget/TextView;
    const v17, 0x7f1100f8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 216
    .local v16, "tz":Landroid/widget/TextView;
    const v17, 0x7f1100f7

    .line 217
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 218
    .local v6, "countryName":Landroid/widget/TextView;
    const v17, 0x7f1100f4

    .line 219
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 220
    .local v11, "linearLetter":Landroid/widget/LinearLayout;
    const v17, 0x7f1100f5

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 221
    .local v10, "letter":Landroid/widget/TextView;
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v5, v4, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    .line 223
    .local v5, "cityname":Ljava/lang/String;
    iget-object v7, v4, Lcn/nubia/calendar/settings/City;->mCountryName:Ljava/lang/String;

    .line 224
    .local v7, "countryname":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->needTitle(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 225
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 228
    iget-object v0, v4, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 237
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    .local v14, "style":Landroid/text/SpannableStringBuilder;
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 240
    .local v13, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v8, v13, v17

    .line 241
    .local v8, "end":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_7

    .line 242
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$300(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/content/Context;

    move-result-object v18

    .line 243
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0171

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x21

    .line 242
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v13, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 246
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .end local v8    # "end":I
    .end local v13    # "start":I
    .end local v14    # "style":Landroid/text/SpannableStringBuilder;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 254
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    .restart local v14    # "style":Landroid/text/SpannableStringBuilder;
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v18, v0

    .line 257
    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v18

    .line 256
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 258
    .restart local v13    # "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v8, v13, v17

    .line 259
    .restart local v8    # "end":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_9

    .line 260
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$300(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/content/Context;

    move-result-object v18

    .line 261
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0171

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x21

    .line 260
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v13, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 264
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .end local v8    # "end":I
    .end local v13    # "start":I
    .end local v14    # "style":Landroid/text/SpannableStringBuilder;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$000(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/util/Calendar;

    move-result-object v17

    iget-object v0, v4, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 273
    iget-object v0, v4, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 274
    .local v15, "timeZone":Ljava/util/TimeZone;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "homeTZStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 276
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v17, p2

    .line 286
    goto/16 :goto_0

    .line 206
    .end local v5    # "cityname":Ljava/lang/String;
    .end local v6    # "countryName":Landroid/widget/TextView;
    .end local v7    # "countryname":Ljava/lang/String;
    .end local v9    # "homeTZStr":Ljava/lang/String;
    .end local v10    # "letter":Landroid/widget/TextView;
    .end local v11    # "linearLetter":Landroid/widget/LinearLayout;
    .end local v12    # "name":Landroid/widget/TextView;
    .end local v15    # "timeZone":Ljava/util/TimeZone;
    .end local v16    # "tz":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    move-object/from16 v17, v0

    aget-object v4, v17, p1

    .end local v4    # "city":Lcn/nubia/calendar/settings/City;
    check-cast v4, Lcn/nubia/calendar/settings/City;

    .restart local v4    # "city":Lcn/nubia/calendar/settings/City;
    goto/16 :goto_1

    .line 230
    .restart local v5    # "cityname":Ljava/lang/String;
    .restart local v6    # "countryName":Landroid/widget/TextView;
    .restart local v7    # "countryname":Ljava/lang/String;
    .restart local v10    # "letter":Landroid/widget/TextView;
    .restart local v11    # "linearLetter":Landroid/widget/LinearLayout;
    .restart local v12    # "name":Landroid/widget/TextView;
    .restart local v16    # "tz":Landroid/widget/TextView;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 233
    :cond_6
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 248
    .restart local v8    # "end":I
    .restart local v13    # "start":I
    .restart local v14    # "style":Landroid/text/SpannableStringBuilder;
    :cond_7
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 251
    .end local v8    # "end":I
    .end local v13    # "start":I
    .end local v14    # "style":Landroid/text/SpannableStringBuilder;
    :cond_8
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 266
    .restart local v8    # "end":I
    .restart local v13    # "start":I
    .restart local v14    # "style":Landroid/text/SpannableStringBuilder;
    :cond_9
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 269
    .end local v8    # "end":I
    .end local v13    # "start":I
    .end local v14    # "style":Landroid/text/SpannableStringBuilder;
    :cond_a
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 279
    .restart local v9    # "homeTZStr":Ljava/lang/String;
    .restart local v15    # "timeZone":Ljava/util/TimeZone;
    :cond_b
    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mAllTheCitiesList:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/nubia/calendar/settings/City;

    iget-object v0, v0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set24HoursMode(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 292
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 0
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 166
    return-void
.end method
