.class final Lcom/loc/g$1;
.super Ljava/lang/Object;
.source "GpsLocation.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/g;


# direct methods
.method constructor <init>(Lcom/loc/g;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v2, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    iget-object v2, v2, Lcom/loc/g;->b:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v3}, Lcom/loc/g;->a(Lcom/loc/g;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/g;->a(Lcom/loc/g;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/g;->b(Lcom/loc/g;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GpsLocation"

    const-string v2, "onGpsStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0}, Lcom/loc/g;->a(Lcom/loc/g;)Landroid/location/GpsStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0}, Lcom/loc/g;->a(Lcom/loc/g;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0}, Lcom/loc/g;->a(Lcom/loc/g;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge v1, v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "GpsLocation"

    const-string v3, "GPS_EVENT_SATELLITE_STATUS"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/g$1;->a:Lcom/loc/g;

    invoke-static {v0, v1}, Lcom/loc/g;->b(Lcom/loc/g;I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
