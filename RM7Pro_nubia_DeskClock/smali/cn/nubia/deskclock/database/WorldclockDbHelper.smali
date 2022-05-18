.class public Lcn/nubia/deskclock/database/WorldclockDbHelper;
.super Ljava/lang/Object;
.source "WorldclockDbHelper.java"


# static fields
.field public static final CITY_LIST_FILE:Ljava/lang/String; = "city_list_file"

.field public static final CITY_LIST_FILE_WIDGET:Ljava/lang/String; = "city_list_file_widget"

.field public static final HOME_CITY_DEFAULT_ID:Ljava/lang/String; = "C255"

.field public static final HOME_TIMEZONE_CITY_INDEX:I = 0xfe

.field private static final KEY_TOP_CITY_ID:Ljava/lang/String; = "TOP_CITY_ID"

.field private static final NUMBER_OF_CITIES:Ljava/lang/String; = "number_of_cities"

.field public static final TimeZoneDefaultCity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mAllSupportCities:[Lcn/nubia/deskclock/model/City;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/database/WorldclockDbHelper;->TimeZoneDefaultCity:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    .line 40
    sget-object v0, Lcn/nubia/deskclock/database/WorldclockDbHelper;->TimeZoneDefaultCity:Ljava/util/HashMap;

    const-string v1, "Asia/Shanghai"

    const-string v2, "C255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllSupportCities()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    .line 187
    return-void
.end method

.method public static getAllSupportCities()[Lcn/nubia/deskclock/model/City;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    return-object v0
.end method

.method public static declared-synchronized getCurrentCity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 194
    const-class v6, Lcn/nubia/deskclock/database/WorldclockDbHelper;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "localeStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 196
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 197
    .local v1, "cityName":Ljava/lang/String;
    const v5, 0x7f0b0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "cities":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt p1, v5, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v2, v1

    .line 210
    .end local v1    # "cityName":Ljava/lang/String;
    .local v2, "cityName":Ljava/lang/String;
    :goto_0
    monitor-exit v6

    return-object v2

    .line 201
    .end local v2    # "cityName":Ljava/lang/String;
    .restart local v1    # "cityName":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "zh_TW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_HK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_CN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_MO_#Hans"

    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_SG_#Hans"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_HK_#Hans"

    .line 203
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_TW_#Hant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_HK_#Hant"

    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_MO_#Hant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zh_CN_#Hans"

    .line 205
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    :cond_2
    aget-object v5, v0, p1

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v1, v5, v7

    :goto_1
    move-object v2, v1

    .line 210
    .end local v1    # "cityName":Ljava/lang/String;
    .restart local v2    # "cityName":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v2    # "cityName":Ljava/lang/String;
    .restart local v1    # "cityName":Ljava/lang/String;
    :cond_3
    aget-object v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 194
    .end local v0    # "cities":[Ljava/lang/String;
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v3    # "localeStr":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getWidgetCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string v1, "city_list_file_widget"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "TOP_CITY_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/deskclock/model/City;
    .locals 21
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 95
    const-class v19, Lcn/nubia/deskclock/database/WorldclockDbHelper;

    monitor-enter v19

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 96
    .local v15, "localeStr":Ljava/lang/String;
    const-string v1, "zh_TW"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_CN"

    .line 97
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_MO_#Hans"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_SG_#Hans"

    .line 98
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK_#Hans"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_TW_#Hant"

    .line 99
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK_#Hant"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_MO_#Hant"

    .line 100
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_CN_#Hans"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 101
    .local v11, "compareWithPinyin":Z
    :goto_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v10

    .line 102
    .local v10, "collator":Ljava/text/Collator;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 103
    .local v16, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "cities":[Ljava/lang/String;
    const v1, 0x7f0b0004

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "countries":[Ljava/lang/String;
    const v1, 0x7f0b0013

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, "timezonesAndIds":[Ljava/lang/String;
    array-length v1, v8

    move-object/from16 v0, v18

    array-length v2, v0

    if-ne v1, v2, :cond_1

    array-length v1, v8

    array-length v2, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_3

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 138
    :goto_1
    monitor-exit v19

    return-object v1

    .line 100
    .end local v8    # "cities":[Ljava/lang/String;
    .end local v10    # "collator":Ljava/text/Collator;
    .end local v11    # "compareWithPinyin":Z
    .end local v12    # "countries":[Ljava/lang/String;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v18    # "timezonesAndIds":[Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 110
    .restart local v8    # "cities":[Ljava/lang/String;
    .restart local v10    # "collator":Ljava/text/Collator;
    .restart local v11    # "compareWithPinyin":Z
    .restart local v12    # "countries":[Ljava/lang/String;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v18    # "timezonesAndIds":[Ljava/lang/String;
    :cond_3
    :try_start_1
    array-length v1, v8

    new-array v1, v1, [Lcn/nubia/deskclock/model/City;

    sput-object v1, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    .line 111
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v1, v8

    if-ge v14, v1, :cond_5

    .line 112
    aget-object v1, v18, v14

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, "timezoneAndId":[Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 114
    aget-object v1, v12, v14

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "country":[Ljava/lang/String;
    aget-object v1, v8, v14

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "city":[Ljava/lang/String;
    sget-object v20, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    new-instance v1, Lcn/nubia/deskclock/model/City;

    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x1

    aget-object v3, v13, v3

    const/4 v4, 0x1

    aget-object v4, v17, v4

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const/4 v6, 0x1

    aget-object v6, v9, v6

    .line 117
    invoke-static {v6}, Lcn/nubia/deskclock/util/Pinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    invoke-static {v7}, Lcn/nubia/deskclock/util/Pinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcn/nubia/deskclock/model/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v20, v14

    .line 111
    .end local v9    # "city":[Ljava/lang/String;
    .end local v13    # "country":[Ljava/lang/String;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 119
    :cond_4
    sget-object v20, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    new-instance v1, Lcn/nubia/deskclock/model/City;

    aget-object v2, v8, v14

    aget-object v3, v12, v14

    const/4 v4, 0x1

    aget-object v4, v17, v4

    const/4 v5, 0x0

    aget-object v5, v17, v5

    aget-object v6, v8, v14

    aget-object v7, v12, v14

    invoke-direct/range {v1 .. v7}, Lcn/nubia/deskclock/model/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v20, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 95
    .end local v8    # "cities":[Ljava/lang/String;
    .end local v10    # "collator":Ljava/text/Collator;
    .end local v11    # "compareWithPinyin":Z
    .end local v12    # "countries":[Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "localeStr":Ljava/lang/String;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v17    # "timezoneAndId":[Ljava/lang/String;
    .end local v18    # "timezonesAndIds":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v19

    throw v1

    .line 123
    .restart local v8    # "cities":[Ljava/lang/String;
    .restart local v10    # "collator":Ljava/text/Collator;
    .restart local v11    # "compareWithPinyin":Z
    .restart local v12    # "countries":[Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "localeStr":Ljava/lang/String;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v18    # "timezonesAndIds":[Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v1, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    new-instance v2, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;

    invoke-direct {v2, v11, v10}, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;-><init>(ZLjava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 135
    const/4 v14, 0x0

    :goto_4
    sget-object v1, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    array-length v1, v1

    if-ge v14, v1, :cond_6

    .line 136
    sget-object v1, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;

    aget-object v1, v1, v14

    iput v14, v1, Lcn/nubia/deskclock/model/City;->mCityNameIndex:I

    .line 135
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 138
    :cond_6
    sget-object v1, Lcn/nubia/deskclock/database/WorldclockDbHelper;->mAllSupportCities:[Lcn/nubia/deskclock/model/City;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public static declared-synchronized loadAllSupportedCitiesWithoutSort(Landroid/content/Context;)[Lcn/nubia/deskclock/model/City;
    .locals 19
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 142
    const-class v18, Lcn/nubia/deskclock/database/WorldclockDbHelper;

    monitor-enter v18

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v13

    .line 143
    .local v13, "localeStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 144
    .local v14, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "cities":[Ljava/lang/String;
    const v1, 0x7f0b0004

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "countries":[Ljava/lang/String;
    const v1, 0x7f0b0013

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, "timezonesAndIds":[Ljava/lang/String;
    array-length v1, v8

    move-object/from16 v0, v17

    array-length v2, v0

    if-ne v1, v2, :cond_0

    array-length v1, v8

    array-length v2, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_2

    .line 149
    :cond_0
    const/4 v15, 0x0

    .line 168
    :cond_1
    monitor-exit v18

    return-object v15

    .line 151
    :cond_2
    :try_start_1
    array-length v1, v8

    new-array v15, v1, [Lcn/nubia/deskclock/model/City;

    .line 152
    .local v15, "tempList":[Lcn/nubia/deskclock/model/City;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v1, v8

    if-ge v12, v1, :cond_1

    .line 153
    aget-object v1, v17, v12

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, "timezoneAndId":[Ljava/lang/String;
    const-string v1, "zh_TW"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_HK"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_CN"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_MO_#Hans"

    .line 155
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_SG_#Hans"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_HK_#Hans"

    .line 156
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_TW_#Hant"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_HK_#Hant"

    .line 157
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_MO_#Hant"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_CN_#Hans"

    .line 158
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    :cond_3
    aget-object v1, v10, v12

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "country":[Ljava/lang/String;
    aget-object v1, v8, v12

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "city":[Ljava/lang/String;
    new-instance v1, Lcn/nubia/deskclock/model/City;

    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x1

    aget-object v3, v11, v3

    const/4 v4, 0x1

    aget-object v4, v16, v4

    const/4 v5, 0x0

    aget-object v5, v16, v5

    const/4 v6, 0x1

    aget-object v6, v9, v6

    .line 162
    invoke-static {v6}, Lcn/nubia/deskclock/util/Pinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v11, v7

    invoke-static {v7}, Lcn/nubia/deskclock/util/Pinyin;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcn/nubia/deskclock/model/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v15, v12

    .line 152
    .end local v9    # "city":[Ljava/lang/String;
    .end local v11    # "country":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 164
    :cond_4
    new-instance v1, Lcn/nubia/deskclock/model/City;

    aget-object v2, v8, v12

    aget-object v3, v10, v12

    const/4 v4, 0x1

    aget-object v4, v16, v4

    const/4 v5, 0x0

    aget-object v5, v16, v5

    aget-object v6, v8, v12

    aget-object v7, v10, v12

    invoke-direct/range {v1 .. v7}, Lcn/nubia/deskclock/model/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v15, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    .end local v8    # "cities":[Ljava/lang/String;
    .end local v10    # "countries":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "localeStr":Ljava/lang/String;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v15    # "tempList":[Lcn/nubia/deskclock/model/City;
    .end local v16    # "timezoneAndId":[Ljava/lang/String;
    .end local v17    # "timezonesAndIds":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v18

    throw v1
.end method

.method public static loadCitiesToList(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-string v5, "city_list_file"

    const/4 v6, 0x0

    .line 80
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 81
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "number_of_cities"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 82
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/City;>;"
    if-lez v4, :cond_1

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 85
    new-instance v2, Lcn/nubia/deskclock/model/City;

    invoke-direct {v2, v3, v1}, Lcn/nubia/deskclock/model/City;-><init>(Landroid/content/SharedPreferences;I)V

    .line 86
    .local v2, "o":Lcn/nubia/deskclock/model/City;
    iget-object v5, v2, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    .end local v2    # "o":Lcn/nubia/deskclock/model/City;
    :cond_1
    return-object v0
.end method

.method public static loadCitiesToMap(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/deskclock/model/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const-string v5, "city_list_file"

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 65
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "number_of_cities"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 66
    .local v4, "size":I
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .local v0, "c":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    if-lez v4, :cond_1

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 69
    new-instance v2, Lcn/nubia/deskclock/model/City;

    invoke-direct {v2, v3, v1}, Lcn/nubia/deskclock/model/City;-><init>(Landroid/content/SharedPreferences;I)V

    .line 70
    .local v2, "o":Lcn/nubia/deskclock/model/City;
    iget-object v5, v2, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, v2, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    .end local v2    # "o":Lcn/nubia/deskclock/model/City;
    :cond_1
    return-object v0
.end method

.method public static setWidgetCity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v2, "city_list_file_widget"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TOP_CITY_ID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    return-void
.end method

.method public static updateCitiesWithList(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcn/nubia/deskclock/model/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/deskclock/model/City;>;"
    const-string v5, "city_list_file"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 50
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "number_of_cities"

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 53
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/deskclock/model/City;>;"
    const/4 v1, 0x0

    .line 54
    .local v1, "count":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 56
    .local v0, "c":Lcn/nubia/deskclock/model/City;
    invoke-virtual {v0, v2, v1}, Lcn/nubia/deskclock/model/City;->saveCityToSharedPrefs(Landroid/content/SharedPreferences$Editor;I)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    .end local v0    # "c":Lcn/nubia/deskclock/model/City;
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    return-void
.end method

.method public static updateCitiesWithMap(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/deskclock/model/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "cities":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 45
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/deskclock/model/City;>;"
    invoke-static {p0, v0}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->updateCitiesWithList(Landroid/content/Context;Ljava/util/Collection;)V

    .line 46
    return-void
.end method
