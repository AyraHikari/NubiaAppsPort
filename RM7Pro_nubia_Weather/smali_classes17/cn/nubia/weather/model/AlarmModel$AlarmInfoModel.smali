.class public Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
.super Ljava/lang/Object;
.source "AlarmModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/model/AlarmModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmInfoModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAlarmCity:Ljava/lang/String;

.field private mAlarmClassCode:Ljava/lang/String;

.field private mAlarmClassName:Ljava/lang/String;

.field private mAlarmContent:Ljava/lang/String;

.field private mAlarmDristrit:Ljava/lang/String;

.field private mAlarmHtml:Ljava/lang/String;

.field private mAlarmInfoID:Ljava/lang/String;

.field private mAlarmLevelCode:Ljava/lang/String;

.field private mAlarmLevelName:Ljava/lang/String;

.field private mAlarmProvince:Ljava/lang/String;

.field private mAlarmPublishTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;)Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;

    .prologue
    .line 278
    new-instance v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;-><init>()V

    .line 280
    .local v1, "result":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmProvince:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmCity:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmDristrit:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW4()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassCode:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassName:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW6()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelCode:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW7()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelName:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmPublishTime:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW9()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmContent:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW10()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmInfoID:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/AlarmJsonBean$AlarmInfo;->getW11()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmHtml:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-object v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AlarmModel"

    const-string v3, "Convert AlarmInfo  To AlarmInfoModel Fail. "

    invoke-static {v2, v3, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;)Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .locals 5
    .param p0, "areaID"    # Ljava/lang/String;
    .param p1, "alertInfo"    # Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;

    .prologue
    .line 298
    new-instance v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    invoke-direct {v2}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;-><init>()V

    .line 300
    .local v2, "result":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :try_start_0
    iget-object v0, p1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Area:[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;

    .line 301
    .local v0, "areas":[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 302
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;->Name:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmProvince:Ljava/lang/String;

    .line 303
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;->Name:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmCity:Ljava/lang/String;

    .line 304
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;->Name:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmDristrit:Ljava/lang/String;

    .line 305
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;->Text:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmContent:Ljava/lang/String;

    .line 306
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;->StartTime:Ljava/lang/String;

    const-string v4, "yyyy-MM-dd HH:mm"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/TimeUtils;->formatISOStyleTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmPublishTime:Ljava/lang/String;

    .line 309
    :cond_0
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->TypeID:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassCode:Ljava/lang/String;

    .line 310
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Type:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassName:Ljava/lang/String;

    .line 311
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->Level:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelName:Ljava/lang/String;

    .line 312
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->MobileLink:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmHtml:Ljava/lang/String;

    .line 313
    iget-object v3, p1, Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo;->AlertID:Ljava/lang/String;

    iput-object v3, v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmInfoID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0    # "areas":[Lcn/nubia/weather/jsonbean/huafeng/AlertJsonBean$AlertInfo$Area;
    :goto_0
    return-object v2

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AlarmModel"

    const-string v4, "Convert AlarmInfo  To AlarmInfoModel Fail. "

    invoke-static {v3, v4, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getmAlarmCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmCity:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmClassCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmContent:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmDristrit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmDristrit:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmInfoID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmInfoID:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmLevelCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelName:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmPublishTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmPublishTime:Ljava/lang/String;

    return-object v0
.end method

.method public setmAlarmCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmCity"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmCity:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setmAlarmClassCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmClassCode"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassCode:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setmAlarmClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmClassName"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmClassName:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setmAlarmContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmContent"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmContent:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setmAlarmDristrit(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmDristrit"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmDristrit:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setmAlarmHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmHtml"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmHtml:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setmAlarmInfoID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmInfoID"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmInfoID:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setmAlarmLevelCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmLevelCode"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelCode:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setmAlarmLevelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmLevelName"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmLevelName:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setmAlarmProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmProvince"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmProvince:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setmAlarmPublishTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmPublishTime"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->mAlarmPublishTime:Ljava/lang/String;

    .line 251
    return-void
.end method
