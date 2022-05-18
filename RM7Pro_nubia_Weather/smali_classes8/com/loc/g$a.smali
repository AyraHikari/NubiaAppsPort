.class final Lcom/loc/g$a;
.super Ljava/lang/Object;
.source "GpsLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/loc/g;


# direct methods
.method constructor <init>(Lcom/loc/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    invoke-static {v0, p1}, Lcom/loc/g;->a(Lcom/loc/g;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    invoke-static {v0, p1}, Lcom/loc/g;->a(Lcom/loc/g;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g$a;->a:Lcom/loc/g;

    invoke-static {v0, p2}, Lcom/loc/g;->a(Lcom/loc/g;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
