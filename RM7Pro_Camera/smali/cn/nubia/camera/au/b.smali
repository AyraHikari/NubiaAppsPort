.class public Lcn/nubia/camera/au/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/b$a;,
        Lcn/nubia/camera/au/b$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/au/b$a;

.field private b:Lcn/nubia/camera/au/b$b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/au/b$b;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/nubia/camera/au/b;->a:Lcn/nubia/camera/au/b$a;

    .line 14
    iput-object v0, p0, Lcn/nubia/camera/au/b;->b:Lcn/nubia/camera/au/b$b;

    .line 17
    iput-object p1, p0, Lcn/nubia/camera/au/b;->b:Lcn/nubia/camera/au/b$b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/b;)Lcn/nubia/camera/au/b$b;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/camera/au/b;->b:Lcn/nubia/camera/au/b$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 34
    new-instance v6, Lcn/nubia/camera/au/b$a;

    const-wide/16 v2, 0xdac

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/au/b$a;-><init>(Lcn/nubia/camera/au/b;JJ)V

    iput-object v6, p0, Lcn/nubia/camera/au/b;->a:Lcn/nubia/camera/au/b$a;

    .line 35
    invoke-virtual {v6}, Lcn/nubia/camera/au/b$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/au/b;->a:Lcn/nubia/camera/au/b$a;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcn/nubia/camera/au/b$a;->cancel()V

    :cond_0
    return-void
.end method
