.class Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatApi24Impl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatApi16Impl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityManagerCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 0

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result p1

    return p1
.end method
