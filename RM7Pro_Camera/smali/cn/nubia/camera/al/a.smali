.class public Lcn/nubia/camera/al/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/al/a$a;,
        Lcn/nubia/camera/al/a$b;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/SensorEventListener;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/al/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/nubia/camera/al/a;->d:Z

    .line 21
    iput-boolean v0, p0, Lcn/nubia/camera/al/a;->e:Z

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Lcn/nubia/camera/al/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/al/a$1;-><init>(Lcn/nubia/camera/al/a;)V

    iput-object v1, p0, Lcn/nubia/camera/al/a;->a:Landroid/hardware/SensorEventListener;

    const-string v1, "sensor"

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcn/nubia/camera/al/a;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    .line 28
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/al/a;->c:Landroid/hardware/Sensor;

    .line 29
    iput-boolean v0, p0, Lcn/nubia/camera/al/a;->e:Z

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 15
    invoke-static {p0}, Lcn/nubia/camera/al/a;->c(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/al/a;)Landroid/hardware/Sensor;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/al/a;->c:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/al/a;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-static {p1}, Lcn/nubia/camera/al/a;->c(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/al/a;->f:I

    invoke-static {v1}, Lcn/nubia/camera/al/a;->c(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/al/a;->c()V

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/al/a;->d:Z

    if-nez v0, :cond_1

    .line 74
    iput p1, p0, Lcn/nubia/camera/al/a;->f:I

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/al/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/camera/al/a;->a:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/camera/al/a;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/al/a;->d:Z

    const-string p1, "GyroSensorManager"

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/al/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/al/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static c(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x30d40

    goto :goto_0

    :cond_1
    const p0, 0x1046b

    goto :goto_0

    :cond_2
    const/16 p0, 0x4e20

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/al/a;->d:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/al/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/camera/al/a;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcn/nubia/camera/al/a;->d:Z

    const-string v0, "GyroSensorManager"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/al/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/camera/al/a;->e:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/al/a$a;)V
    .locals 1

    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/al/a;->a(Lcn/nubia/camera/al/a$a;I)V

    return-void
.end method

.method public a(Lcn/nubia/camera/al/a$a;I)V
    .locals 1

    .line 46
    new-instance v0, Lcn/nubia/camera/al/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/al/a$b;-><init>(Lcn/nubia/camera/al/a;Lcn/nubia/camera/al/a$a;I)V

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 51
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/camera/al/a;->e:Z

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/al/a$b;

    iget p1, p1, Lcn/nubia/camera/al/a$b;->a:I

    invoke-direct {p0, p1}, Lcn/nubia/camera/al/a;->b(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcn/nubia/camera/al/a;->e:Z

    .line 38
    invoke-direct {p0}, Lcn/nubia/camera/al/a;->c()V

    return-void
.end method

.method public b(Lcn/nubia/camera/al/a$a;)V
    .locals 2

    .line 58
    new-instance v0, Lcn/nubia/camera/al/a$b;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/camera/al/a$b;-><init>(Lcn/nubia/camera/al/a;Lcn/nubia/camera/al/a$a;I)V

    .line 59
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/al/a$b;

    iget p1, p1, Lcn/nubia/camera/al/a$b;->a:I

    invoke-static {p1}, Lcn/nubia/camera/al/a;->c(I)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/al/a;->f:I

    invoke-static {v1}, Lcn/nubia/camera/al/a;->c(I)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 62
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/al/a$b;

    iget p1, p1, Lcn/nubia/camera/al/a$b;->a:I

    invoke-direct {p0, p1}, Lcn/nubia/camera/al/a;->b(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/al/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/al/a;->c()V

    :cond_1
    :goto_0
    return-void
.end method
