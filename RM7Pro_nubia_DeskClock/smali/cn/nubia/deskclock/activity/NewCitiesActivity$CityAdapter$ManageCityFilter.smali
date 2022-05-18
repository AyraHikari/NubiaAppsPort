.class Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;
.super Landroid/widget/Filter;
.source "NewCitiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageCityFilter"
.end annotation


# instance fields
.field cityNameMaxIndex:I

.field final compareWithPinyin:Z

.field countryNameMaxIndex:I

.field final localeStr:Ljava/lang/String;

.field final synthetic this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 820
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 821
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClockApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_CN"

    .line 823
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_MO_#Hans"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_SG_#Hans"

    .line 824
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_HK_#Hans"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_TW_#Hant"

    .line 825
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_HK_#Hant"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->localeStr:Ljava/lang/String;

    const-string v2, "zh_MO_#Hant"

    .line 826
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->compareWithPinyin:Z

    .line 827
    iput v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    .line 828
    iput v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    return-void

    :cond_1
    move v0, v1

    .line 826
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;Lcn/nubia/deskclock/activity/NewCitiesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;
    .param p2, "x1"    # Lcn/nubia/deskclock/activity/NewCitiesActivity$1;

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)V

    return-void
.end method

.method private getCityNameOrCountryName(Ljava/util/List;IZ)Ljava/lang/String;
    .locals 6
    .param p2, "index"    # I
    .param p3, "isCity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v1, ""

    .line 978
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->isChinese()Z

    move-result v2

    .line 979
    .local v2, "result":Z
    iget-boolean v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->compareWithPinyin:Z

    if-eqz v3, :cond_3

    .line 980
    if-eqz p3, :cond_1

    .line 981
    if-eqz v2, :cond_0

    .line 982
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/City;

    iget-object v1, v3, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    .line 1002
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .end local v2    # "result":Z
    :goto_1
    return-object v1

    .line 984
    .restart local v2    # "result":Z
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/City;

    iget-object v3, v3, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 988
    :cond_1
    if-eqz v2, :cond_2

    .line 989
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/City;

    iget-object v1, v3, Lcn/nubia/deskclock/model/City;->mCountryName:Ljava/lang/String;

    goto :goto_0

    .line 991
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/City;

    iget-object v3, v3, Lcn/nubia/deskclock/model/City;->mCountryNamePinyin:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 996
    :cond_3
    if-eqz p3, :cond_4

    .line 997
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/City;

    iget-object v3, v3, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 999
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/City;

    iget-object v3, v3, Lcn/nubia/deskclock/model/City;->mCountryName:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1003
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isChinese()Z
    .locals 5

    .prologue
    .line 1010
    const-string v2, "[\\u4e00-\\u9fad]+"

    .line 1011
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1012
    .local v1, "p":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v4, v4, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v4}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1013
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 1014
    .local v3, "result":Z
    return v3
.end method

.method private declared-synchronized listSort(Ljava/util/List;Z)V
    .locals 7
    .param p2, "isCity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v4, v4, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v4}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "text":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 948
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    if-gt v1, v4, :cond_5

    .line 949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 950
    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->getCityNameOrCountryName(Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 951
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_2
    const-string v4, "NewCitiesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listSort: countryNameMaxIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_2
    iget v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    if-gt v1, v4, :cond_5

    .line 958
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 959
    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->getCityNameOrCountryName(Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 960
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 957
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 965
    .end local v0    # "i":I
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 966
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    .line 945
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private swap(Ljava/util/List;II)V
    .locals 2
    .param p2, "i"    # I
    .param p3, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 971
    .local v0, "t":Ljava/lang/Object;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 973
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 834
    monitor-enter p0

    .line 836
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 837
    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 838
    .local v8, "result":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 839
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v4, "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 841
    .local v6, "lItems":[Ljava/lang/Object;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-static {v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->access$2100(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 842
    iget-object v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-static {v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->access$2100(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "lItems":[Ljava/lang/Object;
    check-cast v6, [Ljava/lang/Object;

    .line 847
    .restart local v6    # "lItems":[Ljava/lang/Object;
    array-length v9, v6

    .line 849
    .local v9, "size":I
    const-string v10, "NewCitiesActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " performFiltering : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_3

    .line 852
    aget-object v1, v6, v5

    check-cast v1, Lcn/nubia/deskclock/model/City;

    .line 853
    .local v1, "city":Lcn/nubia/deskclock/model/City;
    iget-object v10, v1, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 854
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 853
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 855
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v10, v1, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 857
    .local v2, "currentIndex":I
    iget v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    if-lt v2, v10, :cond_0

    .line 858
    iput v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    .line 851
    .end local v2    # "currentIndex":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 844
    .end local v1    # "city":Lcn/nubia/deskclock/model/City;
    .end local v5    # "i":I
    .end local v9    # "size":I
    :cond_1
    const/4 v8, 0x0

    monitor-exit p0

    .line 917
    .end local v4    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "lItems":[Ljava/lang/Object;
    .end local v8    # "result":Landroid/widget/Filter$FilterResults;
    :goto_2
    return-object v8

    .line 860
    .restart local v1    # "city":Lcn/nubia/deskclock/model/City;
    .restart local v4    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v5    # "i":I
    .restart local v6    # "lItems":[Ljava/lang/Object;
    .restart local v8    # "result":Landroid/widget/Filter$FilterResults;
    .restart local v9    # "size":I
    :cond_2
    iget-object v10, v1, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 861
    iget-object v10, v1, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 862
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 861
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 863
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 864
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v10, v1, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 866
    .restart local v2    # "currentIndex":I
    iget v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    if-lt v2, v10, :cond_0

    .line 867
    iput v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    goto :goto_1

    .line 918
    .end local v1    # "city":Lcn/nubia/deskclock/model/City;
    .end local v2    # "currentIndex":I
    .end local v4    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "i":I
    .end local v6    # "lItems":[Ljava/lang/Object;
    .end local v8    # "result":Landroid/widget/Filter$FilterResults;
    .end local v9    # "size":I
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 873
    .restart local v4    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v5    # "i":I
    .restart local v6    # "lItems":[Ljava/lang/Object;
    .restart local v8    # "result":Landroid/widget/Filter$FilterResults;
    .restart local v9    # "size":I
    :cond_3
    :try_start_1
    const-string v10, "NewCitiesActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " before city cityNameMaxIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->cityNameMaxIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const/4 v10, 0x1

    invoke-direct {p0, v4, v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->listSort(Ljava/util/List;Z)V

    .line 875
    const-string v10, "NewCitiesActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " after city : size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v10, v10, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1700(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 877
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_6

    .line 879
    aget-object v0, v6, v5

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 880
    .local v0, "c":Lcn/nubia/deskclock/model/City;
    iget-object v10, v0, Lcn/nubia/deskclock/model/City;->mCountryName:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 881
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 880
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 882
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 883
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v10, v0, Lcn/nubia/deskclock/model/City;->mCountryName:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 885
    .restart local v2    # "currentIndex":I
    iget v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    if-lt v2, v10, :cond_4

    .line 886
    iput v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    .line 878
    .end local v2    # "currentIndex":I
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 889
    :cond_5
    iget-object v10, v0, Lcn/nubia/deskclock/model/City;->mCountryNamePinyin:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 890
    iget-object v10, v0, Lcn/nubia/deskclock/model/City;->mCountryNamePinyin:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 891
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 890
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 892
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 893
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v10, v0, Lcn/nubia/deskclock/model/City;->mCountryNamePinyin:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 895
    .restart local v2    # "currentIndex":I
    iget v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    if-lt v2, v10, :cond_4

    .line 896
    iput v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->countryNameMaxIndex:I

    goto :goto_4

    .line 902
    .end local v0    # "c":Lcn/nubia/deskclock/model/City;
    .end local v2    # "currentIndex":I
    :cond_6
    const-string v10, "NewCitiesActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "performFiltering sort before : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const/4 v10, 0x0

    invoke-direct {p0, v7, v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->listSort(Ljava/util/List;Z)V

    .line 904
    const-string v10, "NewCitiesActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "performFiltering: sort after : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 909
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 910
    .local v3, "filtarray":[Ljava/lang/Object;
    array-length v10, v3

    iput v10, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 911
    iput-object v3, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 917
    .end local v3    # "filtarray":[Ljava/lang/Object;
    .end local v4    # "filterResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "i":I
    .end local v6    # "lItems":[Ljava/lang/Object;
    .end local v9    # "size":I
    :goto_5
    monitor-exit p0

    goto/16 :goto_2

    .line 913
    :cond_8
    iget-object v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-static {v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->access$2100(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v10

    array-length v10, v10

    iput v10, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 914
    iget-object v10, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-static {v10}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->access$2100(Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;)[Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v2, 0x0

    .line 923
    if-nez p2, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 927
    .local v0, "filter":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 928
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v3, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1502(Lcn/nubia/deskclock/activity/NewCitiesActivity;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 930
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setTotalTextHint(I)V

    .line 935
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->notifyDataSetChanged()V

    .line 936
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v3, v3, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v3}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSelection(I)V

    .line 937
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 938
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    .line 933
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .line 934
    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    goto :goto_1

    .line 940
    :cond_4
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter$ManageCityFilter;->this$1:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setVisibility(I)V

    goto/16 :goto_0
.end method
