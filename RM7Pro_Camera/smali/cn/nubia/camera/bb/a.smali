.class public Lcn/nubia/camera/bb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcn/nubia/camera/bb/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "audio"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    const/16 v2, -0x64

    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v0, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 15
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcn/nubia/camera/bb/a;->a:Z

    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 23
    iget-boolean v0, p0, Lcn/nubia/camera/bb/a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "audio"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    const/16 v3, 0x64

    .line 26
    invoke-virtual {p1, v1, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 27
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1, v2, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 31
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/camera/bb/a;->a:Z

    :cond_1
    return-void
.end method
