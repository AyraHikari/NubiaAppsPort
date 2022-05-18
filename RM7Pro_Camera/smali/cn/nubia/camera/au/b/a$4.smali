.class Lcn/nubia/camera/au/b/a$4;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


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

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/au/b/a$4;->a:Lcn/nubia/camera/au/b/a;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$4;->a:Lcn/nubia/camera/au/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/au/b/a;->c(Lcn/nubia/camera/au/b/a;Z)Z

    return-void
.end method
