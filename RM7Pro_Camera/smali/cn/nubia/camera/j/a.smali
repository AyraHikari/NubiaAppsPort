.class public Lcn/nubia/camera/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/j/a$a;,
        Lcn/nubia/camera/j/a$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/nubia/camera/j/a$a;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/j/a$b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/camera/j/a;->a:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/j/a;->b:Lcn/nubia/camera/j/a$a;

    .line 25
    iput-object v0, p0, Lcn/nubia/camera/j/a;->c:Lcn/nubia/camera/ad/a;

    .line 29
    iput-object p1, p0, Lcn/nubia/camera/j/a;->c:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/j/a$b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/camera/j/a;->d:Lcn/nubia/camera/j/a$b;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/j/a;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcn/nubia/camera/j/a;->a:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/j/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/camera/j/a;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/j/a$b;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/j/a;->d:Lcn/nubia/camera/j/a$b;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcn/nubia/camera/j/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/camera/j/a;->a:Z

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/j/a;->b:Lcn/nubia/camera/j/a$a;

    invoke-virtual {v0}, Lcn/nubia/camera/j/a$a;->a()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/j/a;->b:Lcn/nubia/camera/j/a$a;

    const/4 v0, 0x1

    return v0
.end method

.method public a(J)Z
    .locals 8

    .line 53
    iget-boolean v0, p0, Lcn/nubia/camera/j/a;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcn/nubia/camera/j/a;->a:Z

    .line 58
    new-instance v7, Lcn/nubia/camera/j/a$a;

    const-wide/16 v5, 0x1f4

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/j/a$a;-><init>(Lcn/nubia/camera/j/a;JJ)V

    iput-object v7, p0, Lcn/nubia/camera/j/a;->b:Lcn/nubia/camera/j/a$a;

    .line 59
    invoke-virtual {v7}, Lcn/nubia/camera/j/a$a;->b()V

    return v0
.end method
