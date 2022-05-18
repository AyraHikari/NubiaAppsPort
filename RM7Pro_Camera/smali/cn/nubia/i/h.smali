.class Lcn/nubia/i/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Bundle;

.field private c:Lcn/nubia/i/a;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/nubia/i/j;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcn/nubia/i/h$a;

.field private k:I

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcn/nubia/i/a;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/i/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcn/nubia/i/a;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;",
            "Lcn/nubia/i/j;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/h;->g:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcn/nubia/i/h;->i:Z

    .line 32
    iput v0, p0, Lcn/nubia/i/h;->k:I

    .line 200
    new-instance v0, Lcn/nubia/i/h$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/i/h$1;-><init>(Lcn/nubia/i/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/i/h;->l:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcn/nubia/i/h;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcn/nubia/i/h;->b:Landroid/os/Bundle;

    .line 37
    iput-object p3, p0, Lcn/nubia/i/h;->c:Lcn/nubia/i/a;

    .line 38
    iput-object p5, p0, Lcn/nubia/i/h;->h:Ljava/util/ArrayList;

    .line 39
    iput-object p6, p0, Lcn/nubia/i/h;->e:Lcn/nubia/i/j;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/i/h;->d:Ljava/util/ArrayList;

    .line 41
    iput-object p4, p0, Lcn/nubia/i/h;->f:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSkipPrismaId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/i/h;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ListAllDownload"

    invoke-static {p2, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcn/nubia/i/h$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/i/h$a;-><init>(Lcn/nubia/i/h;Lcn/nubia/i/h$1;)V

    iput-object p1, p0, Lcn/nubia/i/h;->j:Lcn/nubia/i/h$a;

    .line 45
    invoke-virtual {p1}, Lcn/nubia/i/h$a;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/h;)Lcn/nubia/i/j;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->e:Lcn/nubia/i/j;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/i/h;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcn/nubia/i/h;->i:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/i/h;)Landroid/os/Bundle;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/i/h;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/i/h;->k:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/i/h;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/i/h;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/i/h;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/i/h;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/i/h;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/i/h;)I
    .locals 2

    .line 17
    iget v0, p0, Lcn/nubia/i/h;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/i/h;->k:I

    return v0
.end method

.method static synthetic j(Lcn/nubia/i/h;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/i/h;)Lcn/nubia/i/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/i/h;->c:Lcn/nubia/i/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/i/h;->j:Lcn/nubia/i/h$a;

    invoke-virtual {v0}, Lcn/nubia/i/h$a;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcn/nubia/i/h;->i:Z

    return v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcn/nubia/i/h;->g:Ljava/util/ArrayList;

    return-object v0
.end method
