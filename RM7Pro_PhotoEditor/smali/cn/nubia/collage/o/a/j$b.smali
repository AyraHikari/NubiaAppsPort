.class final Lcn/nubia/collage/o/a/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/o/a/j;->l(Lcn/nubia/collage/o/a/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/o/a/j$c;


# direct methods
.method constructor <init>(Lcn/nubia/collage/o/a/j$c;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/a/j$b;->a:Lcn/nubia/collage/o/a/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcn/nubia/collage/o/a/j;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcn/nubia/collage/o/a/j;->a()Landroid/location/Geocoder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/collage/o/a/j;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/collage/o/a/j$b;->a:Lcn/nubia/collage/o/a/j$c;

    invoke-static {}, Lcn/nubia/collage/o/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/collage/o/a/j$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
