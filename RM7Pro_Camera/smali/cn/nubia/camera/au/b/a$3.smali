.class Lcn/nubia/camera/au/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/b/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/b/a;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/au/b/a$3;->a:Lcn/nubia/camera/au/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$3;->a:Lcn/nubia/camera/au/b/a;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcn/nubia/camera/au/b/a;->a(Lcn/nubia/camera/au/b/a;F)F

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$3;->a:Lcn/nubia/camera/au/b/a;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcn/nubia/camera/au/b/a;->b(Lcn/nubia/camera/au/b/a;F)F

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$3;->a:Lcn/nubia/camera/au/b/a;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcn/nubia/camera/au/b/a;->c(Lcn/nubia/camera/au/b/a;F)F

    .line 95
    iget-object p1, p0, Lcn/nubia/camera/au/b/a$3;->a:Lcn/nubia/camera/au/b/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/au/b/a;->c(Lcn/nubia/camera/au/b/a;Z)Z

    .line 96
    iget-object p1, p0, Lcn/nubia/camera/au/b/a$3;->a:Lcn/nubia/camera/au/b/a;

    invoke-static {p1}, Lcn/nubia/camera/au/b/a;->b(Lcn/nubia/camera/au/b/a;)V

    return-void
.end method
