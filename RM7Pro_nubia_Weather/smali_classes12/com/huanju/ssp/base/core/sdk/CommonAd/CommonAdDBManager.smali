.class Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;
.super Ljava/lang/Object;
.source "CommonAdDBManager.java"


# static fields
.field private static mInstance:Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBHelper;

    invoke-direct {v0, p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 31
    return-void
.end method

.method private static add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "arrayKey"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 254
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 255
    .local v4, "length":I
    new-array v0, v4, [Ljava/lang/String;

    .line 256
    .local v0, "dataArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 257
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "dataArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 263
    const/4 v0, 0x0

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v0
.end method

.method private declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mInstance:Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mInstance:Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mInstance:Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static parserAd(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 14
    .param p0, "jsonAd"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x7

    const/4 v9, 0x1

    .line 120
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;-><init>()V

    .line 121
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mSourceData:Ljava/lang/String;

    .line 123
    const-string v6, "adslot_id"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    .line 124
    const-string v6, "ad_type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setAdType(I)V

    .line 125
    const-string v6, "interaction_type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setInteractionType(I)V

    .line 126
    const-string v6, "w"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    .line 127
    const-string v6, "h"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    .line 128
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    .line 132
    :try_start_0
    const-string v6, "lg"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lg:I

    .line 133
    const-string v6, "lgsrc"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lgsrc:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    :try_start_1
    const-string v6, "rqto"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRqto(I)V

    .line 142
    const-string v6, "rdto"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRdto(I)V

    .line 143
    const-string v6, "ctop"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setCtop(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_1
    const-string v6, "creative_type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    .line 163
    iget v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    packed-switch v6, :pswitch_data_0

    .line 196
    :goto_2
    :pswitch_0
    const-string v6, "clkurl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 197
    const-string v6, "dl_type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    const-string v6, "dl_type"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_type:I

    .line 200
    :cond_0
    const-string v6, "app_name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    const-string v6, "app_name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    .line 203
    :cond_1
    const-string v6, "dl_url"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    const-string v6, "dl_url"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 206
    :cond_2
    const-string v6, "soft_src"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    const-string v6, "soft_src"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    .line 209
    :cond_3
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v7, 0x0

    const-string v8, "imptrackers"

    invoke-static {p0, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    iget v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    packed-switch v6, :pswitch_data_1

    .line 243
    :goto_3
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "lg or lgsrc is null"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 145
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v6, "rqto or rdto or ctop is null"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    .end local v1    # "e":Lorg/json/JSONException;
    :pswitch_1
    const-string v6, "imgurl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    goto :goto_2

    .line 170
    :pswitch_2
    const-string v6, "mix"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    .local v2, "json_mix":Lorg/json/JSONObject;
    new-instance v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    invoke-direct {v4}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;-><init>()V

    .line 172
    .local v4, "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    iput-object v4, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    .line 173
    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->title:Ljava/lang/String;

    .line 174
    const-string v6, "sub_title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->sub_title:Ljava/lang/String;

    .line 175
    const-string v6, "imgurl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    .line 176
    const-string v6, "acimgurl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acimgurl:Ljava/lang/String;

    .line 177
    const-string v6, "bg_color"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->bg_color:Ljava/lang/String;

    .line 178
    const-string v6, "text_color"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->text_color:Ljava/lang/String;

    goto/16 :goto_2

    .line 183
    .end local v2    # "json_mix":Lorg/json/JSONObject;
    .end local v4    # "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    :pswitch_3
    const-string v6, "nativ"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 184
    .local v3, "json_nativ":Lorg/json/JSONObject;
    new-instance v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    invoke-direct {v5}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;-><init>()V

    .line 185
    .local v5, "nativ":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    iput-object v5, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

    .line 186
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->type:I

    .line 187
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->title:Ljava/lang/String;

    .line 188
    const-string v6, "sub_title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->sub_title:Ljava/lang/String;

    .line 189
    const-string v6, "imgurl"

    invoke-static {v3, v6}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->imgurl:[Ljava/lang/String;

    .line 190
    const-string v6, "source"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;->source:Ljava/lang/String;

    goto/16 :goto_2

    .line 215
    .end local v3    # "json_nativ":Lorg/json/JSONObject;
    .end local v5    # "nativ":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    :pswitch_4
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "clktrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "exposuretrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 220
    :pswitch_5
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "clktrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    const-string v6, "bundle"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 222
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "dwnlst"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "dwnltrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "intltrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v7, 0x5

    const-string v8, "actvtrackers"

    invoke-static {p0, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "exposuretrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 230
    :pswitch_6
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "clktrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    const-string v6, "bundle"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->bundle:Ljava/lang/String;

    .line 232
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "dwnlst"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "dwnltrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "intltrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v7, 0x5

    const-string v8, "actvtrackers"

    invoke-static {p0, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const/4 v7, 0x6

    const-string v8, "dplkwkup"

    invoke-static {p0, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v6, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    const-string v7, "exposuretrackers"

    invoke-static {p0, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized add(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)V
    .locals 5
    .param p1, "info"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO common_ad_info( common_ad_id , common_ad_data ) VALUES (?,?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->getAdID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->getDataSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->closeDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)V
    .locals 5
    .param p1, "info"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM common_ad_info WHERE common_ad_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->getAdID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->closeDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .locals 10
    .param p1, "adid"    # Ljava/lang/String;

    .prologue
    .line 64
    monitor-enter p0

    const/4 v5, 0x0

    .line 65
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 66
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 68
    .local v1, "commonAd":Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 69
    const-string v7, "SELECT * FROM common_ad_info WHERE common_ad_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    const-string v7, "common_ad_data"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "data":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->parserAd(Lorg/json/JSONObject;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v0

    .line 77
    .local v0, "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    new-instance v2, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-direct {v2, v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "commonAd":Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .local v2, "commonAd":Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    move-object v1, v2

    .line 84
    .end local v0    # "ad":Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .end local v2    # "commonAd":Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .end local v4    # "data":Ljava/lang/String;
    .restart local v1    # "commonAd":Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 85
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v1

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :try_start_3
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 85
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 84
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->close(Landroid/database/Cursor;)V

    .line 85
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->closeDatabase()V

    .line 86
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
