.class public Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private hid:Ljava/lang/String;

.field private reg_time:J

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "AuthRepeatInfoBean"

    sput-object v0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beanToJson(Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    const-string v1, "uid"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getHid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getHid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "hid"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getHid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :goto_1
    const-string v1, "reg_time"

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->getRegTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "hid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const-string v0, ""

    goto :goto_0
.end method

.method public static jsonToBean(Ljava/lang/String;)Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;
    .locals 4

    .prologue
    .line 77
    new-instance v1, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;-><init>()V

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v2, "uid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->setUid(Ljava/lang/String;)V

    .line 82
    const-string v2, "hid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->setHid(Ljava/lang/String;)V

    .line 83
    const-string v2, "reg_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->setReg_time(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    sget-object v2, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getHid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->hid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->hid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegTime()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->reg_time:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->uid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->uid:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasRepeatInfo()Z
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->hid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->reg_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->hid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setReg_time(J)V
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->reg_time:J

    .line 41
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->uid:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthRepeatInfoBean{uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->hid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reg_time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/bean/AuthRepeatInfoBean;->reg_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
