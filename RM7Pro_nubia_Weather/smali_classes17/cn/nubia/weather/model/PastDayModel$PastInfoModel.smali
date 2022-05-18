.class public Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
.super Ljava/lang/Object;
.source "PastDayModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/model/PastDayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PastInfoModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPublishTime:Ljava/util/Date;

.field private mdayTemperature:Ljava/lang/Float;

.field private mnightTemperature:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v0, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mdayTemperature:Ljava/lang/Float;

    .line 123
    iput-object v0, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mnightTemperature:Ljava/lang/Float;

    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;)Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
    .locals 6
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;

    .prologue
    .line 151
    new-instance v1, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;

    invoke-direct {v1}, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;-><init>()V

    .line 153
    .local v1, "result":Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mdayTemperature:Ljava/lang/Float;

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPd()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mnightTemperature:Ljava/lang/Float;

    .line 159
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/PastDayJsonBean$PastJsonBean;->getPj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mPublishTime:Ljava/util/Date;

    .line 161
    const-string v3, "PastDayModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PastInfoModel reslut"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PastDayModel"

    const-string v4, "Convert PastJsonBean  To PastInfoModel Fail. "

    invoke-static {v3, v4, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getMdayTemperature()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mdayTemperature:Ljava/lang/Float;

    return-object v0
.end method

.method public getMnightTemperature()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mnightTemperature:Ljava/lang/Float;

    return-object v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public setMdayTemperature(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mdayTemperature"    # Ljava/lang/Float;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mdayTemperature:Ljava/lang/Float;

    .line 132
    return-void
.end method

.method public setMnightTemperature(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mnightTemperature"    # Ljava/lang/Float;

    .prologue
    .line 139
    iput-object p1, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mnightTemperature:Ljava/lang/Float;

    .line 140
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->mPublishTime:Ljava/util/Date;

    .line 148
    return-void
.end method
