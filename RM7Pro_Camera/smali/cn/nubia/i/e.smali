.class Lcn/nubia/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/nubia/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcn/nubia/i/j;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/i/j;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/e;->a:Ljava/util/LinkedList;

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcn/nubia/i/e;->b:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/e;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcn/nubia/i/e;->d:Ljava/lang/String;

    .line 134
    new-instance v0, Lcn/nubia/i/e$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/i/e$1;-><init>(Lcn/nubia/i/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/i/e;->f:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcn/nubia/i/e;->d:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcn/nubia/i/e;->e:Lcn/nubia/i/j;

    return-void
.end method

.method static synthetic a(Lcn/nubia/i/e;)Lcn/nubia/i/j;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/i/e;->e:Lcn/nubia/i/j;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/i/e;)Ljava/util/LinkedList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/i/e;->a:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/i/e;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/i/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/i/e;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/i/e;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/i/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/e$a;

    .line 55
    invoke-virtual {v1}, Lcn/nubia/i/e$a;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcn/nubia/i/e;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcn/nubia/i/c;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/i/e;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcn/nubia/i/e;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcn/nubia/i/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcn/nubia/i/e;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcn/nubia/i/e;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcn/nubia/i/e;->b:I

    if-ge p1, v1, :cond_0

    .line 44
    new-instance p1, Lcn/nubia/i/e$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcn/nubia/i/e$a;-><init>(Lcn/nubia/i/e;Lcn/nubia/i/e$1;)V

    .line 45
    invoke-virtual {p1}, Lcn/nubia/i/e$a;->start()V

    .line 46
    iget-object v1, p0, Lcn/nubia/i/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    iget-object p1, p0, Lcn/nubia/i/e;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 50
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
