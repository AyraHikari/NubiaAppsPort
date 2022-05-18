.class public Lcn/nubia/camera/pretty/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/a/b$a;
    }
.end annotation


# instance fields
.field a:[B

.field b:[B

.field c:Lcn/nubia/camera/pretty/a/d;

.field d:I

.field e:F

.field f:F

.field final g:I

.field final h:I

.field final i:I

.field final j:I

.field final k:I

.field final l:I

.field final m:I

.field final n:I

.field final o:Ljava/lang/String;

.field private p:Lcn/nubia/camera/pretty/a/b$a;

.field private q:Ljava/util/BitSet;

.field private r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIIIIIIILjava/lang/String;Lcn/nubia/camera/pretty/a/b$a;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/b;->q:Ljava/util/BitSet;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/b;->r:Ljava/lang/Object;

    .line 41
    iput p1, p0, Lcn/nubia/camera/pretty/a/b;->g:I

    .line 42
    iput p2, p0, Lcn/nubia/camera/pretty/a/b;->h:I

    .line 43
    iput p3, p0, Lcn/nubia/camera/pretty/a/b;->i:I

    .line 44
    iput p4, p0, Lcn/nubia/camera/pretty/a/b;->j:I

    .line 45
    iput p5, p0, Lcn/nubia/camera/pretty/a/b;->k:I

    .line 46
    iput p7, p0, Lcn/nubia/camera/pretty/a/b;->m:I

    .line 47
    iput p6, p0, Lcn/nubia/camera/pretty/a/b;->l:I

    .line 48
    iput p8, p0, Lcn/nubia/camera/pretty/a/b;->n:I

    .line 49
    iput-object p9, p0, Lcn/nubia/camera/pretty/a/b;->o:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lcn/nubia/camera/pretty/a/b;->p:Lcn/nubia/camera/pretty/a/b$a;

    .line 51
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/b;->q:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->clear()V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/b;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/b;->q:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/b;->q:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/b;->q:Ljava/util/BitSet;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/b;->q:Ljava/util/BitSet;

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/b;->p:Lcn/nubia/camera/pretty/a/b$a;

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1, p0}, Lcn/nubia/camera/pretty/a/b$a;->a(Lcn/nubia/camera/pretty/a/b;)V

    .line 85
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


# virtual methods
.method public a(Lcn/nubia/camera/pretty/a/d;IFF)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/b;->c:Lcn/nubia/camera/pretty/a/d;

    .line 66
    iput p2, p0, Lcn/nubia/camera/pretty/a/b;->d:I

    .line 67
    iput p3, p0, Lcn/nubia/camera/pretty/a/b;->e:F

    .line 68
    iput p4, p0, Lcn/nubia/camera/pretty/a/b;->f:F

    const/4 p1, 0x2

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/a/b;->a(I)V

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/b;->a:[B

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/a/b;->a(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/b;->a:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b([B)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/b;->b:[B

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/a/b;->a(I)V

    return-void
.end method
