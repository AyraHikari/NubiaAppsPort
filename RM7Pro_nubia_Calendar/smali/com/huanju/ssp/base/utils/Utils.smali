.class public Lcom/huanju/ssp/base/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final SP_KEY_NAME:Ljava/lang/String; = "nubia_ad_info"

.field private static lastClickTime:J

.field private static mContext:Landroid/content/Context;

.field private static mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIntervalTime(Ljava/lang/String;JJ)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J
    .param p3, "defaultValue"    # J

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deflate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 240
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static decodeResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    :cond_0
    const/4 v2, 0x0

    .line 469
    :goto_0
    return-object v2

    .line 462
    :cond_1
    const-string v2, ""

    .line 463
    .local v2, "temp":Ljava/lang/String;
    new-instance v1, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;

    invoke-direct {v1}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;-><init>()V

    .line 465
    .local v1, "formatData":Lcom/huanju/ssp/base/utils/FormatData;
    :try_start_0
    sget-object v3, Lcom/huanju/ssp/base/SDKInfo;->AUTH_KEY:Ljava/lang/String;

    sget-object v4, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    invoke-interface {v1, p0, v3, v4}, Lcom/huanju/ssp/base/utils/FormatData;->decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/huanju/ssp/base/utils/InterceptorClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lcom/huanju/ssp/base/utils/InterceptorClientException;
    invoke-virtual {v0}, Lcom/huanju/ssp/base/utils/InterceptorClientException;->printStackTrace()V

    goto :goto_0
.end method

.method public static dp2px(F)I
    .locals 3
    .param p0, "dpValue"    # F

    .prologue
    .line 273
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 274
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static genParmsString(ZLjava/util/Map;)Ljava/lang/String;
    .locals 12
    .param p0, "isGet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "parmsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v6, "parameterBuffer":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_7

    .line 421
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 422
    .local v4, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 423
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 424
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 425
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 427
    .local v7, "value":Ljava/lang/Object;
    instance-of v10, v7, Ljava/util/Collection;

    if-eqz v10, :cond_1

    .line 428
    check-cast v7, Ljava/util/Collection;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 430
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 431
    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 432
    .local v8, "valueArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v8

    if-ge v3, v10, :cond_6

    .line 433
    aget-object v10, v8, v3

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, "valueItem":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 435
    const-string v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 437
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    add-int/lit8 v10, v3, 0x1

    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 439
    const-string v10, "&"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 442
    .end local v3    # "i":I
    .end local v8    # "valueArray":[Ljava/lang/Object;
    .end local v9    # "valueItem":Ljava/lang/String;
    :cond_4
    if-eqz p0, :cond_5

    .line 443
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 445
    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 447
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 448
    const-string v10, "&"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static getAllImei(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "allImeis":Ljava/util/List;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "config.pre_primary_slot"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 388
    .local v13, "primarySlot":I
    const-string v14, "android.telephony.TelephonyManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 389
    .local v1, "clz":Ljava/lang/Class;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v11, v14

    .line 390
    .local v11, "paramType":[Ljava/lang/Class;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    aput-object v15, v12, v14

    .line 391
    .local v12, "params":[Ljava/lang/Object;
    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 392
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 393
    .local v8, "instance":Ljava/lang/Object;
    const-string v14, "isMultiSimEnabled"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 394
    .local v10, "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 395
    .local v9, "isMultiSimEnabled":Z
    const-string v14, "getImei"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v1, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 396
    .local v3, "getImeiMethod1":Ljava/lang/reflect/Method;
    const-string v14, "getImei"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 397
    .local v4, "getImeiMethod2":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_3

    .line 398
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v3, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 399
    .local v6, "imei1":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 400
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-nez v13, :cond_2

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v16

    invoke-virtual {v3, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 404
    .local v7, "imei2":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 405
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v1    # "clz":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .end local v4    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .end local v6    # "imei1":Ljava/lang/String;
    .end local v7    # "imei2":Ljava/lang/String;
    .end local v8    # "instance":Ljava/lang/Object;
    .end local v9    # "isMultiSimEnabled":Z
    .end local v10    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .end local v11    # "paramType":[Ljava/lang/Class;
    .end local v12    # "params":[Ljava/lang/Object;
    .end local v13    # "primarySlot":I
    :cond_1
    :goto_1
    return-object v0

    .line 403
    .restart local v1    # "clz":Ljava/lang/Class;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .restart local v4    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .restart local v6    # "imei1":Ljava/lang/String;
    .restart local v8    # "instance":Ljava/lang/Object;
    .restart local v9    # "isMultiSimEnabled":Z
    .restart local v10    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "paramType":[Ljava/lang/Class;
    .restart local v12    # "params":[Ljava/lang/Object;
    .restart local v13    # "primarySlot":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 407
    .end local v6    # "imei1":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v4, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 408
    .local v5, "imei":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 409
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 411
    .end local v1    # "clz":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .end local v4    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v8    # "instance":Ljava/lang/Object;
    .end local v9    # "isMultiSimEnabled":Z
    .end local v10    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .end local v11    # "paramType":[Ljava/lang/Class;
    .end local v12    # "params":[Ljava/lang/Object;
    .end local v13    # "primarySlot":I
    :catch_0
    move-exception v14

    goto :goto_1
.end method

.method public static getApkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 294
    :try_start_0
    const-string v3, "apk"

    .line 295
    .local v3, "suffixes":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\\w]+[\\.]("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 296
    .local v1, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 297
    .local v0, "mc":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "substring":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "substring:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "mc":Ljava/util/regex/Matcher;
    .end local v1    # "pat":Ljava/util/regex/Pattern;
    .end local v2    # "substring":Ljava/lang/String;
    .end local v3    # "suffixes":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 302
    :catch_0
    move-exception v4

    .line 305
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/huanju/ssp/base/utils/Utils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getJsonPatchValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 340
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-eqz p0, :cond_2

    .line 341
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "app":Ljava/lang/String;
    const-string v10, "app"

    invoke-virtual {v4, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getJsonPatchValue app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/Utils;->getMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "imei":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/Utils;->getAllImei(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 346
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 347
    .local v3, "imeiTemp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 348
    move-object v2, v3

    goto :goto_0

    .line 350
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 353
    .end local v3    # "imeiTemp":Ljava/lang/String;
    :cond_1
    const-string v10, "imei"

    invoke-virtual {v4, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v10, "android.os.SystemProperties"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 356
    .local v9, "system":Ljava/lang/Class;
    const-string v10, "get"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 357
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ro.build.rom.internal.id"

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 358
    .local v8, "rom":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ro.product.model"

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 359
    .local v7, "mobileType":Ljava/lang/String;
    const-string v10, "rom"

    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v10, "mobile_type"

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "mobileType":Ljava/lang/String;
    .end local v8    # "rom":Ljava/lang/String;
    .end local v9    # "system":Ljava/lang/Class;
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v5, 0x0

    .line 371
    .local v5, "meid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "config.pre_primary_slot"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 372
    .local v7, "primarySlot":I
    const-string v8, "cn.nubia.telframeadapter.common.NBTelephonyManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 373
    .local v1, "clz":Ljava/lang/Class;
    const-string v8, "getDefault"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 374
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, "instance":Ljava/lang/Object;
    const-string v8, "getMeid"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 376
    .local v3, "getMeidMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v1    # "clz":Ljava/lang/Class;
    .end local v3    # "getMeidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "primarySlot":I
    :goto_0
    return-object v5

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPkgName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    :try_start_0
    const-class v1, Lcom/huanju/ssp/base/utils/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\.base.+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "\u83b7\u53d6SDK\u5305\u540d\u51fa\u9519"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 217
    const-string v1, ""

    goto :goto_0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "1.46.3"

    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;Z)[I
    .locals 7
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "macthScreen"    # Z

    .prologue
    const/4 v6, 0x2

    .line 130
    if-nez p0, :cond_0

    .line 131
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 133
    :cond_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 135
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    .local v0, "display":Landroid/view/Display;
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    aput v5, v3, v4

    .line 144
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-object v3

    .line 139
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getScreenSize(Z)[I
    .locals 1
    .param p0, "matchScreen"    # Z

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Landroid/content/Context;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSp()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nubia_ad_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getUiHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 77
    const-class v0, Lcom/huanju/ssp/base/utils/Utils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huanju/ssp/base/utils/Utils;->mUiHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 63
    const-class v1, Lcom/huanju/ssp/base/utils/Utils;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/utils/Utils;->mContext:Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/huanju/ssp/base/utils/Utils;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/huanju/ssp/base/utils/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huanju/ssp/base/utils/Utils;->mUiHandler:Landroid/os/Handler;

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->setDeBugModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initModuleUpParam()Ljava/lang/String;
    .locals 5

    .prologue
    .line 319
    :try_start_0
    new-instance v1, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;

    invoke-direct {v1}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl;-><init>()V

    .line 321
    .local v1, "formatData":Lcom/huanju/ssp/base/utils/FormatData;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v2, "parameterMap":Ljava/util/Map;
    const-string v3, "version_code"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v3, "version_name"

    const-string v4, "1.46.3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v3, "check_sum"

    const-string v4, "ad"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v3, "unique_key"

    sget-object v4, Lcom/huanju/ssp/base/SDKInfo;->UNIQUE_KEY:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v3, "patch_value"

    sget-object v4, Lcom/huanju/ssp/base/utils/Utils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/Utils;->getJsonPatchValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v3, "auth_token_id"

    sget-object v4, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v3, Lcom/huanju/ssp/base/SDKInfo;->AUTH_KEY:Ljava/lang/String;

    sget-object v4, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/huanju/ssp/base/utils/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/huanju/ssp/base/utils/Utils;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 334
    .end local v2    # "parameterMap":Ljava/util/Map;
    :goto_0
    return-object v3

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const-string v3, ""

    goto :goto_0
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    .local v0, "time":J
    sget-wide v4, Lcom/huanju/ssp/base/utils/Utils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 181
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 182
    const/4 v4, 0x1

    .line 185
    :goto_0
    return v4

    .line 184
    :cond_0
    sput-wide v0, Lcom/huanju/ssp/base/utils/Utils;->lastClickTime:J

    .line 185
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isPortrait()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 166
    .local v0, "mConfiguration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 168
    .local v1, "ori":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    if-ne v1, v3, :cond_0

    move v2, v3

    .line 173
    goto :goto_0
.end method

.method public static isRunInMainThread()Z
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpdateTime()Z
    .locals 14

    .prologue
    const/16 v13, 0x596

    const/16 v12, 0x2da

    const/16 v11, 0x2c6

    const/16 v10, 0xa

    .line 474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 476
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 478
    .local v3, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 480
    .local v4, "minute":I
    mul-int/lit8 v8, v3, 0x3c

    add-int v5, v8, v4

    .line 482
    .local v5, "minuteOfDay":I
    const/16 v6, 0x596

    .line 484
    .local v6, "start":I
    const/16 v1, 0xa

    .line 486
    .local v1, "end":I
    const/16 v7, 0x2c6

    .line 488
    .local v7, "start1":I
    const/16 v2, 0x2da

    .line 489
    .local v2, "end1":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minuteOfDay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",start:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",end:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",start1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",end1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 490
    if-ge v5, v13, :cond_0

    if-gt v5, v12, :cond_1

    :cond_0
    if-le v5, v10, :cond_2

    if-ge v5, v11, :cond_2

    .line 491
    :cond_1
    const/4 v8, 0x1

    .line 493
    :goto_0
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isValidityFileName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 310
    :try_start_0
    const-string v0, "[^\\s\\\\/:\\*\\?\\\"<>\\|](\\x20|[^\\s\\\\/:\\*\\?\\\"<>\\|])*[^\\s\\\\/:\\*\\?\\\"<>\\|\\.]$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 311
    :catch_0
    move-exception v0

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseInputString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, "response":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 247
    const/4 v1, 0x0

    .line 250
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 255
    .local v0, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    .end local v3    # "response":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    new-array v6, v8, [Ljava/io/Closeable;

    aput-object p0, v6, v7

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 263
    new-array v6, v8, [Ljava/io/Closeable;

    aput-object v1, v6, v7

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 264
    throw v5

    .line 260
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/String;

    .end local v3    # "response":Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .restart local v3    # "response":Ljava/lang/String;
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object p0, v5, v7

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 263
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v2, v5, v7

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 266
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v3

    .line 262
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 94
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public static randomSeed()I
    .locals 4

    .prologue
    .line 496
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 497
    .local v0, "random":Ljava/util/Random;
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 498
    .local v1, "seed":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "randomSeed seed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 499
    return v1
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public static removeSelf(Landroid/view/View;)V
    .locals 2
    .param p0, "adView"    # Landroid/view/View;

    .prologue
    .line 189
    const-string v1, " -----  removeSelf  -----"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 190
    if-eqz p0, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 193
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static runInMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 81
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isRunInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showToastSafe(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/huanju/ssp/base/utils/Utils$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/utils/Utils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
