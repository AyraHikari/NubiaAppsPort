.class Lcn/nubia/camera/al/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/al/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/al/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/al/a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/al/a$1;->a:Lcn/nubia/camera/al/a;

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

    .line 91
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcn/nubia/camera/al/a$1;->a:Lcn/nubia/camera/al/a;

    invoke-static {v1}, Lcn/nubia/camera/al/a;->a(Lcn/nubia/camera/al/a;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/al/a$1;->a:Lcn/nubia/camera/al/a;

    invoke-static {v0}, Lcn/nubia/camera/al/a;->b(Lcn/nubia/camera/al/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/al/a$b;

    if-eqz v1, :cond_0

    .line 93
    iget-object v2, v1, Lcn/nubia/camera/al/a$b;->b:Lcn/nubia/camera/al/a$a;

    if-eqz v2, :cond_0

    .line 94
    iget-object v1, v1, Lcn/nubia/camera/al/a$b;->b:Lcn/nubia/camera/al/a$a;

    invoke-interface {v1, p1}, Lcn/nubia/camera/al/a$a;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method
