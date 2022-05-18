.class Lcn/nubia/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/location/Location;

.field b:Z

.field c:Ljava/lang/String;

.field final synthetic d:Lcn/nubia/e/b;


# direct methods
.method public constructor <init>(Lcn/nubia/e/b;Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/nubia/e/b$a;->d:Lcn/nubia/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcn/nubia/e/b$a;->b:Z

    .line 139
    iput-object p2, p0, Lcn/nubia/e/b$a;->c:Ljava/lang/String;

    .line 140
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcn/nubia/e/b$a;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/e/b$a;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcn/nubia/e/b$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/e/b$a;->a:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 145
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/e/b$a;->d:Lcn/nubia/e/b;

    invoke-static {v0}, Lcn/nubia/e/b;->a(Lcn/nubia/e/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/e/b$a;->c:Ljava/lang/String;

    const-string v1, "gps"

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/e/b$a;->b:Z

    if-nez v0, :cond_2

    const-string v0, "NubiaLocationManager"

    const-string v1, "Got first location."

    .line 156
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    iget-object v0, p0, Lcn/nubia/e/b$a;->a:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcn/nubia/e/b$a;->b:Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcn/nubia/e/b$a;->b:Z

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

    .line 177
    iput-boolean p2, p0, Lcn/nubia/e/b$a;->b:Z

    .line 178
    iget-object p2, p0, Lcn/nubia/e/b$a;->d:Lcn/nubia/e/b;

    invoke-static {p2}, Lcn/nubia/e/b;->a(Lcn/nubia/e/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "gps"

    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
