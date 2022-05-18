.class public Lcn/nubia/camera/al/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/al/c;

.field private b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcn/nubia/camera/al/c;

    invoke-direct {v0, p1}, Lcn/nubia/camera/al/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/camera/al/b;->a:Lcn/nubia/camera/al/c;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/al/b;)Lcn/nubia/camera/al/c;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/camera/al/b;->a:Lcn/nubia/camera/al/c;

    return-object p0
.end method


# virtual methods
.method public a()Lcn/nubia/camera/al/c;
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/nubia/camera/al/b;->a:Lcn/nubia/camera/al/c;

    return-object v0
.end method

.method public a(Z)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/al/b;->a:Lcn/nubia/camera/al/c;

    const-string v1, "OrientationEnabler"

    if-nez v0, :cond_0

    const-string p1, "Orientation Manger has not created"

    .line 32
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 37
    new-instance p1, Lcn/nubia/camera/al/b$1;

    const-string v0, "Orientation Enabler"

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/al/b$1;-><init>(Lcn/nubia/camera/al/b;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/camera/al/b;->b:Ljava/lang/Thread;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->a()V

    const-string p1, "sync enable orientation"

    .line 48
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/al/b;->a:Lcn/nubia/camera/al/c;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/al/b;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/al/b;->b:Ljava/lang/Thread;

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/al/b;->a:Lcn/nubia/camera/al/c;

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->b()V

    const-string v0, "OrientationEnabler"

    const-string v1, "sync disable orientation"

    .line 63
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
