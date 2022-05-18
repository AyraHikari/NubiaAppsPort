.class public Lcn/nubia/camera/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/b/l$a;,
        Lcn/nubia/camera/b/l$b;
    }
.end annotation


# static fields
.field static a:Lcn/nubia/camera/b/h; = null

.field private static f:I = 0xe0

.field private static g:I = 0xe0


# instance fields
.field b:Lcn/nubia/camera/v/b$c;

.field private c:Z

.field private d:Lcn/nubia/camera/v/b;

.field private e:Lcn/nubia/camera/b/l$a;

.field private h:Lcn/nubia/camera/ad/a;

.field private i:Lcn/nubia/camera/b/l$b;

.field private j:Z

.field private k:I

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcn/nubia/camera/b/o;

    invoke-direct {v0}, Lcn/nubia/camera/b/o;-><init>()V

    sput-object v0, Lcn/nubia/camera/b/l;->a:Lcn/nubia/camera/b/h;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/nubia/camera/b/l;->c:Z

    .line 34
    iput-boolean v0, p0, Lcn/nubia/camera/b/l;->j:Z

    .line 35
    iput v0, p0, Lcn/nubia/camera/b/l;->k:I

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcn/nubia/camera/b/l;->l:J

    .line 73
    new-instance v0, Lcn/nubia/camera/b/l$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/l$1;-><init>(Lcn/nubia/camera/b/l;)V

    iput-object v0, p0, Lcn/nubia/camera/b/l;->b:Lcn/nubia/camera/v/b$c;

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/b/l;->h:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/l;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcn/nubia/camera/b/l;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/b/l;->h:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/b/l;Lcn/nubia/camera/v/b;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/camera/b/l;->d:Lcn/nubia/camera/v/b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/b/l;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/camera/b/l;->j:Z

    return p1
.end method

.method static synthetic b(I)I
    .locals 0

    .line 24
    sput p0, Lcn/nubia/camera/b/l;->f:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/b/l;->d:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method static synthetic c()I
    .locals 1

    .line 24
    sget v0, Lcn/nubia/camera/b/l;->f:I

    return v0
.end method

.method static synthetic c(I)I
    .locals 0

    .line 24
    sput p0, Lcn/nubia/camera/b/l;->g:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/b/l;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcn/nubia/camera/b/l;->l:J

    return-wide v0
.end method

.method static synthetic d()I
    .locals 1

    .line 24
    sget v0, Lcn/nubia/camera/b/l;->g:I

    return v0
.end method

.method static synthetic d(Lcn/nubia/camera/b/l;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/camera/b/l;->j:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/b/l;)I
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/camera/b/l;->k:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/b/l$b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/camera/b/l;->i:Lcn/nubia/camera/b/l$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcn/nubia/camera/b/l;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/b/l;->c:Z

    .line 53
    new-instance v0, Lcn/nubia/camera/b/l$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/l$a;-><init>(Lcn/nubia/camera/b/l;)V

    iput-object v0, p0, Lcn/nubia/camera/b/l;->e:Lcn/nubia/camera/b/l$a;

    .line 54
    invoke-virtual {v0}, Lcn/nubia/camera/b/l$a;->start()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcn/nubia/camera/b/l;->k:I

    return-void
.end method

.method public a(Lcn/nubia/camera/b/l$b;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/b/l;->i:Lcn/nubia/camera/b/l$b;

    return-void
.end method

.method public b()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcn/nubia/camera/b/l;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcn/nubia/camera/b/l;->c:Z

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/b/l;->e:Lcn/nubia/camera/b/l$a;

    invoke-virtual {v0}, Lcn/nubia/camera/b/l$a;->a()V

    return-void
.end method
