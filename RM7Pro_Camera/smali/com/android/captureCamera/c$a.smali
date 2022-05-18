.class Lcom/android/captureCamera/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/location/Location;

.field b:Z

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/android/captureCamera/c;


# direct methods
.method public constructor <init>(Lcom/android/captureCamera/c;Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/captureCamera/c$a;->d:Lcom/android/captureCamera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/android/captureCamera/c$a;->b:Z

    .line 110
    iput-object p2, p0, Lcom/android/captureCamera/c$a;->c:Ljava/lang/String;

    .line 111
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/android/captureCamera/c$a;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/captureCamera/c$a;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/android/captureCamera/c$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/captureCamera/c$a;->a:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 115
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/captureCamera/c$a;->d:Lcom/android/captureCamera/c;

    invoke-static {v0}, Lcom/android/captureCamera/c;->a(Lcom/android/captureCamera/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/captureCamera/c$a;->c:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/android/captureCamera/c$a;->b:Z

    if-nez v0, :cond_2

    const-string v0, "NubiaLocationManager"

    const-string v1, "Got first location."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/captureCamera/c$a;->a:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/android/captureCamera/c$a;->b:Z

    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/android/captureCamera/c$a;->b:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 140
    iput-boolean p2, p0, Lcom/android/captureCamera/c$a;->b:Z

    .line 141
    iget-object p2, p0, Lcom/android/captureCamera/c$a;->d:Lcom/android/captureCamera/c;

    invoke-static {p2}, Lcom/android/captureCamera/c;->a(Lcom/android/captureCamera/c;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "gps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
