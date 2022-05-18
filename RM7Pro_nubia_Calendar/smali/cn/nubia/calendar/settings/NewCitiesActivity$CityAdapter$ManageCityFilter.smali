.class Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;
.super Landroid/widget/Filter;
.source "NewCitiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageCityFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;Lcn/nubia/calendar/settings/NewCitiesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;
    .param p2, "x1"    # Lcn/nubia/calendar/settings/NewCitiesActivity$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 336
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 339
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 340
    .local v5, "result":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_4

    .line 341
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "filt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 345
    .local v4, "lItems":[Ljava/lang/Object;
    iget-object v7, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-static {v7}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->access$600(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "lItems":[Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    .line 347
    .restart local v4    # "lItems":[Ljava/lang/Object;
    array-length v6, v4

    .line 348
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 349
    aget-object v0, v4, v3

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 350
    .local v0, "c":Lcn/nubia/calendar/settings/City;
    iget-object v7, v0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 352
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "c":Lcn/nubia/calendar/settings/City;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    .line 356
    aget-object v0, v4, v3

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 357
    .restart local v0    # "c":Lcn/nubia/calendar/settings/City;
    iget-object v7, v0, Lcn/nubia/calendar/settings/City;->mCountryName:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 359
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 360
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 365
    .end local v0    # "c":Lcn/nubia/calendar/settings/City;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 366
    .local v2, "filtarray":[Ljava/lang/Object;
    array-length v7, v2

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 367
    iput-object v2, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 373
    .end local v1    # "filt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "filtarray":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "lItems":[Ljava/lang/Object;
    .end local v6    # "size":I
    :goto_2
    monitor-exit p0

    return-object v5

    .line 369
    :cond_4
    iget-object v7, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-static {v7}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->access$600(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    iput v7, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 370
    iget-object v7, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-static {v7}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->access$600(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 374
    .end local v5    # "result":Landroid/widget/Filter$FilterResults;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 383
    .local v0, "filter":[Ljava/lang/Object;
    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->access$702(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->access$700(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setTotalTextHint(I)V

    .line 386
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->notifyDataSetChanged()V

    .line 387
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$900(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/calendar/util/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSelection(I)V

    .line 388
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    .line 385
    invoke-static {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->access$700(Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    goto :goto_0
.end method
