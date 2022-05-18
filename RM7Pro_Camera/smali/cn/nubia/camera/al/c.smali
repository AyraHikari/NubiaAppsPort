.class public Lcn/nubia/camera/al/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/al/c$a;,
        Lcn/nubia/camera/al/c$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/al/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/nubia/camera/al/c$b;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DebugSensor"

    const/4 v1, 0x3

    .line 22
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/al/c;->a:Z

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcn/nubia/camera/al/c;->e:I

    .line 38
    iput v0, p0, Lcn/nubia/camera/al/c;->f:I

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/al/c;->b:Landroid/app/Activity;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcn/nubia/camera/al/c$b;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/al/c$b;-><init>(Lcn/nubia/camera/al/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/al/c;->d:Lcn/nubia/camera/al/c$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/al/c;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/camera/al/c;->e:I

    return p1
.end method

.method private a(I)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "OrientationManager"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listeners, orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 97
    iget-object v3, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/al/c$a;

    invoke-interface {v3, p1}, Lcn/nubia/camera/al/c$a;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcn/nubia/camera/al/c;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcn/nubia/camera/al/c;->a:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/al/c;)I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/camera/al/c;->e:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/al/c;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/camera/al/c;->f:I

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/al/c;)Landroid/app/Activity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/al/c;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/al/c;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/camera/al/c;->a(I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/al/c;)I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/camera/al/c;->f:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/al/c;->d:Lcn/nubia/camera/al/c$b;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcn/nubia/camera/al/c$b;

    iget-object v1, p0, Lcn/nubia/camera/al/c;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/al/c$b;-><init>(Lcn/nubia/camera/al/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/al/c;->d:Lcn/nubia/camera/al/c$b;

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/al/c;->d:Lcn/nubia/camera/al/c$b;

    invoke-virtual {v0}, Lcn/nubia/camera/al/c$b;->enable()V

    return-void
.end method

.method public a(Lcn/nubia/camera/al/c$a;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget v1, p0, Lcn/nubia/camera/al/c;->f:I

    invoke-interface {p1, v1}, Lcn/nubia/camera/al/c$a;->a(I)V

    .line 84
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/al/c;->d:Lcn/nubia/camera/al/c$b;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcn/nubia/camera/al/c$b;->disable()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/al/c;->d:Lcn/nubia/camera/al/c$b;

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/al/c$a;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/al/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()I
    .locals 1

    .line 66
    iget v0, p0, Lcn/nubia/camera/al/c;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/camera/al/c;->f:I

    return v0
.end method
