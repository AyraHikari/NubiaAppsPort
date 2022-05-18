.class public Lcn/nubia/camera/y/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/y/i$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Lcn/nubia/camera/y/i$a;

.field private d:Lcn/nubia/camera/d/a;

.field private e:Z

.field private f:Lcn/nubia/camera/y/g;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/d/a;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 15
    iput-wide v0, p0, Lcn/nubia/camera/y/i;->a:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/nubia/camera/y/i;->b:I

    .line 19
    iput-boolean v0, p0, Lcn/nubia/camera/y/i;->e:Z

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/y/i;->d:Lcn/nubia/camera/d/a;

    .line 33
    new-instance p1, Lcn/nubia/camera/y/g;

    iget-wide v0, p0, Lcn/nubia/camera/y/i;->a:J

    new-instance v2, Lcn/nubia/camera/y/i$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/y/i$1;-><init>(Lcn/nubia/camera/y/i;)V

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/y/g;-><init>(JLcn/nubia/camera/y/g$a;)V

    iput-object p1, p0, Lcn/nubia/camera/y/i;->f:Lcn/nubia/camera/y/g;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/i;)Lcn/nubia/camera/y/i$a;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/camera/y/i;->c:Lcn/nubia/camera/y/i$a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/y/i;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcn/nubia/camera/y/i;->e:Z

    return p0
.end method

.method private c()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/y/i;->f:Lcn/nubia/camera/y/g;

    invoke-virtual {v0}, Lcn/nubia/camera/y/g;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcn/nubia/camera/y/i;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "TimeLapse"

    const-string v1, "start"

    .line 69
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v1, p0, Lcn/nubia/camera/y/i;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/y/i;->d:Lcn/nubia/camera/d/a;

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcn/nubia/camera/y/i;->e:Z

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/y/i;->d:Lcn/nubia/camera/d/a;

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/y/i;->c()V

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/y/i;->c:Lcn/nubia/camera/y/i$a;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    .line 81
    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/y/i$a;->a(J)V

    :cond_1
    return-void

    .line 71
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/y/i;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 52
    iput-wide p1, p0, Lcn/nubia/camera/y/i;->a:J

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/y/i;->f:Lcn/nubia/camera/y/g;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/y/g;->a(J)V

    return-void
.end method

.method public a(Lcn/nubia/camera/y/i$a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/y/i;->c:Lcn/nubia/camera/y/i$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcn/nubia/camera/y/i;->e:Z

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interval On\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/y/i;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; can\'t stop."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapse"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/i;->f:Lcn/nubia/camera/y/g;

    invoke-virtual {v0}, Lcn/nubia/camera/y/g;->b()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcn/nubia/camera/y/i;->e:Z

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/y/i;->d:Lcn/nubia/camera/d/a;

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/y/i;->d()V

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/y/i;->c:Lcn/nubia/camera/y/i$a;

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Lcn/nubia/camera/y/i$a;->e()V

    :cond_1
    return-void
.end method
