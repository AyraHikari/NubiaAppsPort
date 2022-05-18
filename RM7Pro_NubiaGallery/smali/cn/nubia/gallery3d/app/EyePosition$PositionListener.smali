.class Lcn/nubia/gallery3d/app/EyePosition$PositionListener;
.super Ljava/lang/Object;
.source "EyePosition.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/EyePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/EyePosition;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/EyePosition;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/gallery3d/app/EyePosition$PositionListener;->this$0:Lcn/nubia/gallery3d/app/EyePosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/EyePosition;Lcn/nubia/gallery3d/app/EyePosition$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/EyePosition$PositionListener;-><init>(Lcn/nubia/gallery3d/app/EyePosition;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 186
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition$PositionListener;->this$0:Lcn/nubia/gallery3d/app/EyePosition;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, v3, p1}, Lcn/nubia/gallery3d/app/EyePosition;->access$100(Lcn/nubia/gallery3d/app/EyePosition;FFF)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition$PositionListener;->this$0:Lcn/nubia/gallery3d/app/EyePosition;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, v3, p1}, Lcn/nubia/gallery3d/app/EyePosition;->access$200(Lcn/nubia/gallery3d/app/EyePosition;FFF)V

    :goto_0
    return-void
.end method
