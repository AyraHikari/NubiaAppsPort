.class public Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;,
        Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Soft;,
        Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;,
        Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;,
        Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;
    }
.end annotation


# static fields
.field public static final CRE_TYPE_DEFAULT:I = 0x5

.field public static final CRE_TYPE_H5:I = 0x4

.field public static final CRE_TYPE_IMAGE:I = 0x2

.field public static final CRE_TYPE_MIX:I = 0x3

.field public static final CRE_TYPE_VIDEO:I = 0x6


# instance fields
.field public adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

.field public adJson:Ljava/lang/String;

.field public adSlotId:Ljava/lang/String;

.field public final adUUID:Ljava/lang/String;

.field public ad_dwnl:Lorg/json/JSONArray;

.field public ad_dwnlst:Lorg/json/JSONArray;

.field public ad_identify:I

.field public ad_intl:Lorg/json/JSONArray;

.field public ad_source:Ljava/lang/String;

.field public ad_type:I

.field public app_name:Ljava/lang/String;

.field public bundle:Ljava/lang/String;

.field public cache_time:J

.field public campaign_id:Ljava/lang/String;

.field public cl_type:I

.field public click_region_restrict:I

.field public click_template:Ljava/lang/String;

.field public clickid:Ljava/lang/String;

.field public clkurl:Ljava/lang/String;

.field public creative_type:I

.field public ctop:J

.field public dl_type:I

.field public dl_url:Ljava/lang/String;

.field public down_x:I

.field public down_y:I

.field public downloadName:Ljava/lang/String;

.field public dplk:Ljava/lang/String;

.field public end_time:J

.field public h:I

.field public hasreplace:Z

.field public img:[B

.field public imgmd5:Ljava/lang/String;

.field public imgurl:Ljava/lang/String;

.field public imperrors:Ljava/lang/String;

.field public interaction_type:I

.field public isCarousel:Z

.field public isSubDisTrk:Z

.field public isSubmitClkTrk:Z

.field public is_activate:I

.field public is_brand_pormotion:I

.field public is_cache:I

.field public lg:I

.field public lgsrc:Ljava/lang/String;

.field public localVideoUrl:Ljava/lang/String;

.field public mSourceData:Ljava/lang/String;

.field public mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

.field public nativ:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Native;

.field public nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field public rdto:J

.field public recommend_type:I

.field public recommend_url:Ljava/lang/String;

.field public req_h:I

.field public req_time:J

.field public req_w:I

.field public reqid:Ljava/lang/String;

.field public request_id:Ljava/lang/String;

.field public rqto:J

.field public search:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Search;

.field public soft_src:Ljava/lang/String;

.field public trackerGroup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public up_x:I

.field public up_y:I

.field public video:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Video;

.field public videoTime:J

.field public w:I

.field public wk_app_id:Ljava/lang/String;

.field public wk_app_secret:Ljava/lang/String;

.field public wk_channel_id:Ljava/lang/String;

.field public wk_dwnlsttracker:Ljava/lang/String;

.field public wk_dwnltracker:Ljava/lang/String;

.field public wk_imptracker:Ljava/lang/String;

.field public wk_intltracker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adUUID:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mSourceData:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clkurl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->app_name:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->campaign_id:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->soft_src:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adJson:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_brand_pormotion:I

    .line 64
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_cache:I

    .line 65
    iput-wide v4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->cache_time:J

    .line 66
    iput-wide v4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->end_time:J

    .line 67
    iput-wide v4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_time:J

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_source:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnlst:Lorg/json/JSONArray;

    .line 70
    iput-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_dwnl:Lorg/json/JSONArray;

    .line 71
    iput-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_intl:Lorg/json/JSONArray;

    .line 72
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_region_restrict:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_template:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 85
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    .line 86
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 87
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->hasreplace:Z

    .line 92
    iput-boolean v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->downloadName:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->localVideoUrl:Ljava/lang/String;

    .line 95
    iput-wide v4, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->videoTime:J

    .line 96
    iput-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->nextNormalAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->reqid:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->request_id:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_app_id:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_app_secret:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_channel_id:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_dwnlsttracker:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_dwnltracker:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_imptracker:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->wk_intltracker:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_url:Ljava/lang/String;

    .line 111
    iput v1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->recommend_type:I

    .line 113
    iput-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adDownLoadListener:Lcom/huanju/ssp/sdk/inf/AdDownLoadListener;

    return-void
.end method


# virtual methods
.method public getTracks(I)Ljava/util/Set;
    .locals 14
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "action_id":I
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 120
    const/4 v0, 0x5

    .line 122
    :cond_0
    const/4 v7, 0x3

    if-ne p1, v7, :cond_1

    .line 123
    const/4 v0, 0x7

    .line 126
    :cond_1
    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    .line 127
    const/4 v0, 0x6

    .line 129
    :cond_2
    const-string v3, ""

    .line 131
    .local v3, "mUserAgent":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "UA_KEY"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 136
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->trackerGroup:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 137
    .local v6, "tracks":[Ljava/lang/String;
    if-nez v6, :cond_4

    .line 138
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .end local v6    # "tracks":[Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v5

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "tracks":[Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 145
    .local v5, "trackSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v8, v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_3

    aget-object v4, v6, v7

    .line 148
    .local v4, "track":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",ad"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ad.down_x: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ad.down_y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ad.up_x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ad.up_y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ",track:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 150
    iget-object v9, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->reqid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&req_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->reqid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    :cond_5
    const-string v9, "__TS__"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "${down_x}"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "${down_y}"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "${up_x}"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "${up_y}"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "${User-Agent}"

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__REQ_WIDTH__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_w:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__REQ_HEIGHT__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->req_h:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__WIDTH__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->w:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__HEIGHT__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->h:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__DOWN_X__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__DOWN_Y__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__UP_X__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 156
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__UP_Y__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__ACTION_ID__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__CLICK_ID__"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->clickid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 159
    .end local v4    # "track":Ljava/lang/String;
    .end local v5    # "trackSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tracks":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_1
.end method

.method public setAdType(I)V
    .locals 1
    .param p1, "ad_type"    # I

    .prologue
    const/4 v0, 0x0

    .line 167
    iput p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    .line 168
    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRqto(I)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setRdto(I)V

    .line 170
    return-void
.end method

.method public setCtop(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 218
    :pswitch_0
    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    goto :goto_0

    .line 221
    :pswitch_1
    const-wide/16 v0, 0x4

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    goto :goto_0

    .line 224
    :pswitch_2
    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    goto :goto_0

    .line 230
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ctop:J

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInteractionType(I)V
    .locals 1
    .param p1, "interaction_type"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->setCtop(I)V

    .line 175
    return-void
.end method

.method public setRdto(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const-wide/16 v2, 0x7d0

    .line 196
    if-nez p1, :cond_0

    .line 197
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    packed-switch v0, :pswitch_data_0

    .line 205
    iput-wide v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    .line 211
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iput-wide v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    goto :goto_0

    .line 209
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rdto:J

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRqto(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const-wide/16 v2, 0xbb8

    .line 178
    if-nez p1, :cond_0

    .line 179
    iget v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    packed-switch v0, :pswitch_data_0

    .line 187
    iput-wide v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rqto:J

    .line 193
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iput-wide v2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rqto:J

    goto :goto_0

    .line 191
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->rqto:J

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
