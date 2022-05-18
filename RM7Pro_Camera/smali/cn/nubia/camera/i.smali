.class public Lcn/nubia/camera/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Z

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/camera/ad/a;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcn/nubia/camera/i;->c:Z

    .line 30
    new-instance v0, Lcn/nubia/camera/i$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/i$1;-><init>(Lcn/nubia/camera/i;)V

    iput-object v0, p0, Lcn/nubia/camera/i;->d:Landroid/content/ServiceConnection;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/i;->a:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcn/nubia/camera/i;->b:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/i;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/i;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/i;)Landroid/app/Activity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/i;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 49
    iget-boolean v0, p0, Lcn/nubia/camera/i;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WlanCamera"

    const-string v1, "bindWlamCameraService "

    .line 50
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcn/nubia/camera/i;->c:Z

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.wlancamera"

    const-string v3, "cn.nubia.wlancamera.filming.WlanCameraRemoteService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcn/nubia/camera/i;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/camera/i;->d:Landroid/content/ServiceConnection;

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcn/nubia/camera/i;->c:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/i;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/camera/i;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/i;->c:Z

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/i;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/ad/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.wlancamera"

    const-string v3, "cn.nubia.wlancamera.WlanCameraMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/i;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
