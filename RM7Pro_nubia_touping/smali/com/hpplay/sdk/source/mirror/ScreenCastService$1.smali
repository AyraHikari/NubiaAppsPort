.class Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/ScreenCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .prologue
    .line 208
    const-string v0, "ScreenCastService"

    const-string v1, "onAccuracyChanged"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 194
    const-string v0, "ScreenCastService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------> onSensorChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-static {v2}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->a(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->b(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$1;->a:Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->c(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    goto :goto_0
.end method
