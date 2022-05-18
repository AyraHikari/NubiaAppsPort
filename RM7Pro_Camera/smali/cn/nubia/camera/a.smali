.class public Lcn/nubia/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/camera/a;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcn/nubia/camera/a;->b:Z

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcn/nubia/camera/a;->c:I

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/a;->d:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcn/nubia/camera/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/a$1;-><init>(Lcn/nubia/camera/a;)V

    iput-object v0, p0, Lcn/nubia/camera/a;->e:Landroid/content/BroadcastReceiver;

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/a;->a:Landroid/app/Activity;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/a;->d:Ljava/util/ArrayList;

    .line 25
    iget-object p1, p0, Lcn/nubia/camera/a;->a:Landroid/app/Activity;

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    const/4 v0, 0x4

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/a;->c:I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/a;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcn/nubia/camera/a;->c:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/a;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/camera/a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/a;)I
    .locals 0

    .line 14
    iget p0, p0, Lcn/nubia/camera/a;->c:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "BatteryLevelMonitor"

    const-string v1, "registerBatteryReceiver"

    .line 40
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-boolean v0, p0, Lcn/nubia/camera/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcn/nubia/camera/a;->b:Z

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcn/nubia/camera/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/camera/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Lcn/nubia/camera/a$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcn/nubia/camera/a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcn/nubia/camera/a;->b:Z

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/camera/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public b(Lcn/nubia/camera/a$a;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/camera/a;->c:I

    return v0
.end method
