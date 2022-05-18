.class public Lcn/nubia/camera/at/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcn/nubia/camera/am/a;

.field private c:Lcn/nubia/camera/am/a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcn/nubia/camera/at/a;->d:Z

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/a;)Landroid/app/Activity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/at/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/at/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 4

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 42
    iget-boolean v0, p0, Lcn/nubia/camera/at/a;->d:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/at/a;->d()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2712

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 46
    iput-boolean v1, p0, Lcn/nubia/camera/at/a;->d:Z

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public c()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const-string v1, "gps"

    .line 55
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/at/a;->e()V

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/at/a;->b:Lcn/nubia/camera/am/a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcn/nubia/camera/am/a$a;

    iget-object v2, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const v3, 0x7f0f01ab

    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const v4, 0x7f0f01a9

    .line 80
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const v4, 0x7f0f012e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f01aa

    new-instance v3, Lcn/nubia/camera/at/a$2;

    invoke-direct {v3, p0}, Lcn/nubia/camera/at/a$2;-><init>(Lcn/nubia/camera/at/a;)V

    .line 81
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f0036

    new-instance v3, Lcn/nubia/camera/at/a$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/at/a$1;-><init>(Lcn/nubia/camera/at/a;)V

    .line 90
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x800013

    .line 99
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/at/a;->b:Lcn/nubia/camera/am/a;

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/a;->b:Lcn/nubia/camera/am/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/at/a;->b:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method

.method public e()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/at/a;->c:Lcn/nubia/camera/am/a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcn/nubia/camera/am/a$a;

    iget-object v2, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const v3, 0x7f0f0303

    .line 109
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const v4, 0x7f0f01a9

    .line 110
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/at/a;->a:Landroid/app/Activity;

    const v4, 0x7f0f012f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f01aa

    new-instance v3, Lcn/nubia/camera/at/a$4;

    invoke-direct {v3, p0}, Lcn/nubia/camera/at/a$4;-><init>(Lcn/nubia/camera/at/a;)V

    .line 111
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f0036

    new-instance v3, Lcn/nubia/camera/at/a$3;

    invoke-direct {v3, p0}, Lcn/nubia/camera/at/a$3;-><init>(Lcn/nubia/camera/at/a;)V

    .line 120
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x800013

    .line 129
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/at/a;->c:Lcn/nubia/camera/am/a;

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/a;->c:Lcn/nubia/camera/am/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/at/a;->c:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method
