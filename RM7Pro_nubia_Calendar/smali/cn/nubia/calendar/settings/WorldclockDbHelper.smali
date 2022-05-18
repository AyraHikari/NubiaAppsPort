.class public Lcn/nubia/calendar/settings/WorldclockDbHelper;
.super Ljava/lang/Object;
.source "WorldclockDbHelper.java"


# static fields
.field private static final CITY_LIST_FILE:Ljava/lang/String; = "city_list_file"

.field private static final HOME_CITY_ADD:Ljava/lang/String; = "ADD"

.field public static final HOME_CITY_DEFAULT_ID:Ljava/lang/String; = "C255"

.field private static final HOME_CITY_DELETE:Ljava/lang/String; = "DELETE"

.field private static final HOME_CITY_IDLE:Ljava/lang/String; = "IDLE"

.field public static final HOME_TIMEZONE_CITY_INDEX:I = 0xfe

.field private static final KEY_HOME_CITY_ID:Ljava/lang/String; = "HOME_CITY_ID"

.field private static final KEY_HOME_CITY_STATE:Ljava/lang/String; = "HOME_CITY_STATE"

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/settings/WorldclockDbHelper;->TimeZoneDefaultCity:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lcn/nubia/calendar/settings/WorldclockDbHelper;->TimeZoneDefaultCity:Ljava/util/HashMap;

    const-string v1, "Asia/Shanghai"

    const-string v2, "C255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultHomeCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 248
    .local v4, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "homeTZ":Ljava/lang/String;
    const v6, 0x7f0a000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "cities":[Ljava/lang/String;
    const v6, 0x7f0a002b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "timezones":[Ljava/lang/String;
    const-string v1, ""

    .line 252
    .local v1, "city":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 253
    const-string v6, "Asia/Shanghai"

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    aget-object v1, v0, v3

    .line 252
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_1
    return-object v1
.end method

.method public static getDefaultHomeCityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 219
    .local v7, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "homeTZ":Ljava/lang/String;
    const v10, 0x7f0a000f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "cities":[Ljava/lang/String;
    const v10, 0x7f0a002b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "timezones":[Ljava/lang/String;
    const v10, 0x7f0a002a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "ids":[Ljava/lang/String;
    array-length v8, v9

    .line 224
    .local v8, "size":I
    const/4 v5, -0x1

    .line 225
    .local v5, "index":I
    sget-object v10, Lcn/nubia/calendar/settings/WorldclockDbHelper;->TimeZoneDefaultCity:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "cityId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 227
    .local v6, "isCityIdEmpty":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 228
    if-nez v6, :cond_2

    .line 229
    aget-object v10, v4, v3

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 230
    move v5, v3

    .line 240
    :cond_0
    :goto_1
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    .line 241
    const/16 v5, 0xfe

    .line 243
    :cond_1
    aget-object v10, v4, v5

    return-object v10

    .line 234
    :cond_2
    aget-object v10, v9, v3

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 235
    move v5, v3

    .line 236
    goto :goto_1

    .line 227
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getDisplayCityInWidget(Landroid/content/Context;)Lcn/nubia/calendar/settings/City;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "number_of_cities"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, "size":I
    new-instance v0, Lcn/nubia/calendar/settings/City;

    add-int/lit8 v3, v2, -0x1

    invoke-direct {v0, v1, v3}, Lcn/nubia/calendar/settings/City;-><init>(Landroid/content/SharedPreferences;I)V

    .line 130
    .local v0, "o":Lcn/nubia/calendar/settings/City;
    return-object v0
.end method

.method public static getHomeCityByTimeZone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 262
    .local v4, "r":Landroid/content/res/Resources;
    const v6, 0x7f0a000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "cities":[Ljava/lang/String;
    const v6, 0x7f0a002b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "timezones":[Ljava/lang/String;
    const-string v1, ""

    .line 266
    .local v1, "city":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 267
    aget-object v6, v5, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    aget-object v1, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method

.method public static getHomeCityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "HOME_CITY_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTopCityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "TOP_CITY_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs3:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs3:Landroid/content/SharedPreferences;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "city_list_file"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static isHomeCity(Landroid/content/Context;Lcn/nubia/calendar/settings/City;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcn/nubia/calendar/settings/City;

    .prologue
    .line 172
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 173
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "HOME_CITY_STATE"

    const-string v4, "IDLE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "homeCityState":Ljava/lang/String;
    const-string v3, "ADD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "HOME_CITY_ID"

    const-string v4, "C255"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "homeCityId":Ljava/lang/String;
    iget-object v3, p1, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const/4 v3, 0x1

    .line 182
    .end local v0    # "homeCityId":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isHomeCitySet(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "HOME_CITY_STATE"

    const-string v3, "IDLE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "state":Ljava/lang/String;
    const-string v2, "DELETE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IDLE"

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 190
    :goto_0
    return v2

    .line 191
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/calendar/settings/City;
    .locals 13
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 136
    .local v1, "collator":Ljava/text/Collator;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 137
    .local v5, "r":Landroid/content/res/Resources;
    const v8, 0x7f0a000f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "cities":[Ljava/lang/String;
    const v8, 0x7f0a002b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "timezones":[Ljava/lang/String;
    const v8, 0x7f0a0010

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "countries":[Ljava/lang/String;
    const v8, 0x7f0a002a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "ids":[Ljava/lang/String;
    array-length v8, v0

    array-length v9, v7

    if-ne v8, v9, :cond_0

    array-length v8, v4

    array-length v9, v0

    if-ne v8, v9, :cond_0

    array-length v8, v0

    array-length v9, v2

    if-eq v8, v9, :cond_1

    .line 143
    :cond_0
    const/4 v6, 0x0

    .line 168
    :goto_0
    return-object v6

    .line 145
    :cond_1
    array-length v8, v0

    new-array v6, v8, [Lcn/nubia/calendar/settings/City;

    .line 146
    .local v6, "tempList":[Lcn/nubia/calendar/settings/City;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 147
    new-instance v8, Lcn/nubia/calendar/settings/City;

    aget-object v9, v0, v3

    aget-object v10, v2, v3

    aget-object v11, v7, v3

    aget-object v12, v4, v3

    invoke-direct {v8, v9, v10, v11, v12}, Lcn/nubia/calendar/settings/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v3

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_2
    new-instance v8, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;

    invoke-direct {v8, p0, v1}, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;-><init>(Landroid/content/Context;Ljava/text/Collator;)V

    invoke-static {v6, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
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
            "Lcn/nubia/calendar/settings/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const-string v5, "city_list_file"

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 113
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "number_of_cities"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 114
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/settings/City;>;"
    if-lez v4, :cond_1

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 117
    new-instance v2, Lcn/nubia/calendar/settings/City;

    invoke-direct {v2, v3, v1}, Lcn/nubia/calendar/settings/City;-><init>(Landroid/content/SharedPreferences;I)V

    .line 118
    .local v2, "o":Lcn/nubia/calendar/settings/City;
    iget-object v5, v2, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    .end local v2    # "o":Lcn/nubia/calendar/settings/City;
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
            "Lcn/nubia/calendar/settings/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 89
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "number_of_cities"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, "size":I
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .local v0, "c":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;"
    if-lez v4, :cond_1

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 93
    new-instance v2, Lcn/nubia/calendar/settings/City;

    invoke-direct {v2, v3, v1}, Lcn/nubia/calendar/settings/City;-><init>(Landroid/content/SharedPreferences;I)V

    .line 94
    .local v2, "o":Lcn/nubia/calendar/settings/City;
    iget-object v5, v2, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, v2, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    .end local v2    # "o":Lcn/nubia/calendar/settings/City;
    :cond_1
    return-object v0
.end method

.method public static removeHomeCity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 294
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "HOME_CITY_STATE"

    const-string v3, "DELETE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method

.method public static resetDefaultHomeCity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "HOME_CITY_STATE"

    const-string v3, "ADD"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v2, "HOME_CITY_ID"

    .line 213
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getDefaultHomeCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    return-void
.end method

.method public static saveRedCitiesToSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/LinkedHashMap;)V
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/settings/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "cities":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;"
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 75
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "number_of_cities"

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 77
    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/calendar/settings/City;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 78
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/settings/City;>;"
    const/4 v2, 0x0

    .line 79
    .local v2, "count":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 81
    .local v0, "c":Lcn/nubia/calendar/settings/City;
    invoke-virtual {v0, v3, v2}, Lcn/nubia/calendar/settings/City;->saveCityToSharedPrefs(Landroid/content/SharedPreferences$Editor;I)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_0

    .line 84
    .end local v0    # "c":Lcn/nubia/calendar/settings/City;
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    return-void
.end method

.method public static setHomeCity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "HOME_CITY_STATE"

    const-string v3, "ADD"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v2, "HOME_CITY_ID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    return-void
.end method

.method public static setTopCity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 302
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TOP_CITY_ID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    return-void
.end method

.method public static shouldSetHomeCity(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->getUtilsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "HOME_CITY_STATE"

    const-string v3, "IDLE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "homCityState":Ljava/lang/String;
    const-string v2, "IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ADD"

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    const/4 v2, 0x1

    .line 203
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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
            "Lcn/nubia/calendar/settings/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/calendar/settings/City;>;"
    const/4 v4, 0x0

    .line 54
    .local v4, "prefs":Landroid/content/SharedPreferences;
    sget-object v5, Lcn/nubia/calendar/util/Utils;->prefs3:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_0

    .line 55
    sget-object v4, Lcn/nubia/calendar/util/Utils;->prefs3:Landroid/content/SharedPreferences;

    .line 60
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 61
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "number_of_cities"

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 63
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/settings/City;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "count":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 66
    .local v0, "c":Lcn/nubia/calendar/settings/City;
    invoke-virtual {v0, v2, v1}, Lcn/nubia/calendar/settings/City;->saveCityToSharedPrefs(Landroid/content/SharedPreferences$Editor;I)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_1

    .line 57
    .end local v0    # "c":Lcn/nubia/calendar/settings/City;
    .end local v1    # "count":I
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/settings/City;>;"
    :cond_0
    const-string v5, "city_list_file"

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    goto :goto_0

    .line 69
    .restart local v1    # "count":I
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/settings/City;>;"
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
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
            "Lcn/nubia/calendar/settings/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "cities":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 48
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/nubia/calendar/settings/City;>;"
    invoke-static {p0, v0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->updateCitiesWithList(Landroid/content/Context;Ljava/util/Collection;)V

    .line 49
    return-void
.end method
