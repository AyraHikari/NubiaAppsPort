.class Lcom/nubia/reyun/sdk/ReYunSDKManager$2;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1870
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, v1, Lcom/nubia/reyun/sdk/ReYunSDKManager;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1871
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$4(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1894
    :goto_0
    return-void

    .line 1874
    :cond_0
    if-nez p1, :cond_1

    .line 1875
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$4(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;

    move-result-object v0

    invoke-interface {v0, p1, v7}, Lcom/nubia/reyun/sdk/LocationCallback;->locationResult(Landroid/location/Location;Landroid/location/Address;)V

    goto :goto_0

    .line 1878
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$5(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1879
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$4(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;

    move-result-object v0

    invoke-interface {v0, p1, v7}, Lcom/nubia/reyun/sdk/LocationCallback;->locationResult(Landroid/location/Location;Landroid/location/Address;)V

    goto :goto_0

    .line 1882
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$3(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/location/Geocoder;

    move-result-object v1

    .line 1883
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 1882
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 1884
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1885
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$4(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-interface {v1, p1, v0}, Lcom/nubia/reyun/sdk/LocationCallback;->locationResult(Landroid/location/Location;Landroid/location/Address;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1888
    :catch_0
    move-exception v0

    .line 1890
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1892
    :cond_3
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$2;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$4(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Lcom/nubia/reyun/sdk/LocationCallback;

    move-result-object v0

    invoke-interface {v0, p1, v7}, Lcom/nubia/reyun/sdk/LocationCallback;->locationResult(Landroid/location/Location;Landroid/location/Address;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1865
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1860
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1855
    return-void
.end method
