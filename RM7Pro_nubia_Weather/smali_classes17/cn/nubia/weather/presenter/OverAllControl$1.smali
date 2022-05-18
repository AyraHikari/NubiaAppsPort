.class Lcn/nubia/weather/presenter/OverAllControl$1;
.super Ljava/lang/Object;
.source "OverAllControl.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/presenter/OverAllControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/presenter/OverAllControl;


# direct methods
.method constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 485
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 14
    .param p1, "location"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 489
    const-string v0, "OverAllControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On receive loc, code: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " type:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " detail:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-virtual {v0}, Lcn/nubia/weather/presenter/OverAllControl;->cloaseLocationClient()V

    .line 492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    :cond_0
    if-eqz p1, :cond_1

    .line 494
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 495
    const-string v0, "OverAllControl"

    const-string v1, "NEED OPEN GPS"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const v1, 0x100006

    sget-object v7, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, v1, v7}, Lcn/nubia/weather/presenter/OverAllControl;->access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V

    .line 622
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const v1, 0x100001

    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v7, v7, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, v1, v7}, Lcn/nubia/weather/presenter/OverAllControl;->access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V

    .line 500
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v1, v0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/CommonUtil;->doubleFormat(D)D

    move-result-wide v8

    .line 505
    .local v8, "longitude":D
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/CommonUtil;->doubleFormat(D)D

    move-result-wide v10

    .line 506
    .local v10, "latitude":D
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "cityName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "provinceName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "districtName":Ljava/lang/String;
    invoke-static {v4, v3, v2}, Lcn/nubia/weather/utils/ReYunUtils;->onUserGpsLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "OverAllControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NEW Location Info :  altitude = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " latitude = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " Provice = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " CityName = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " District = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v5

    .line 516
    .local v5, "model":Lcn/nubia/weather/model/WeatherModel;
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v6, v0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 517
    .local v6, "type":Lcn/nubia/weather/app/Constant$OperationType;
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v1, v0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 518
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/weather/presenter/OverAllControl$1$1;-><init>(Lcn/nubia/weather/presenter/OverAllControl$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    move-object v12, v6

    move-object v13, v0

    invoke-virtual/range {v7 .. v13}, Lcn/nubia/weather/presenter/OverAllControl;->getAreaIDByLocation(DDLcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    goto/16 :goto_0
.end method
