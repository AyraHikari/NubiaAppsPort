.class Lcn/nubia/camera/au/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/au/b/a$1;->a:Lcn/nubia/camera/au/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$1;->a:Lcn/nubia/camera/au/b/a;

    invoke-static {v0}, Lcn/nubia/camera/au/b/a;->a(Lcn/nubia/camera/au/b/a;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$1;->a:Lcn/nubia/camera/au/b/a;

    invoke-static {v0}, Lcn/nubia/camera/au/b/a;->a(Lcn/nubia/camera/au/b/a;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/au/b/a$1;->a:Lcn/nubia/camera/au/b/a;

    invoke-static {v0}, Lcn/nubia/camera/au/b/a;->a(Lcn/nubia/camera/au/b/a;)[F

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget p1, p1, v1

    aput p1, v0, v1

    .line 65
    iget-object p1, p0, Lcn/nubia/camera/au/b/a$1;->a:Lcn/nubia/camera/au/b/a;

    invoke-static {p1, v2}, Lcn/nubia/camera/au/b/a;->a(Lcn/nubia/camera/au/b/a;Z)Z

    .line 66
    iget-object p1, p0, Lcn/nubia/camera/au/b/a$1;->a:Lcn/nubia/camera/au/b/a;

    invoke-static {p1}, Lcn/nubia/camera/au/b/a;->b(Lcn/nubia/camera/au/b/a;)V

    return-void
.end method
