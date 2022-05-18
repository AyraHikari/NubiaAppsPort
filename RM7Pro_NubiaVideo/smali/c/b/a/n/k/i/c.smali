.class public Lc/b/a/n/k/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/i/c$b;,
        Lc/b/a/n/k/i/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Lc/b/a/n/j/g;",
        "Lc/b/a/n/k/i/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lc/b/a/n/k/i/c$b;

.field private static final h:Lc/b/a/n/k/i/c$a;


# instance fields
.field private final a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Lc/b/a/n/k/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc/b/a/n/i/m/c;

.field private final d:Lc/b/a/n/k/i/c$b;

.field private final e:Lc/b/a/n/k/i/c$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/i/c$b;

    invoke-direct {v0}, Lc/b/a/n/k/i/c$b;-><init>()V

    sput-object v0, Lc/b/a/n/k/i/c;->g:Lc/b/a/n/k/i/c$b;

    .line 2
    new-instance v0, Lc/b/a/n/k/i/c$a;

    invoke-direct {v0}, Lc/b/a/n/k/i/c$a;-><init>()V

    sput-object v0, Lc/b/a/n/k/i/c;->h:Lc/b/a/n/k/i/c$a;

    return-void
.end method

.method public constructor <init>(Lc/b/a/n/e;Lc/b/a/n/e;Lc/b/a/n/i/m/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Lc/b/a/n/k/h/b;",
            ">;",
            "Lc/b/a/n/i/m/c;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v4, Lc/b/a/n/k/i/c;->g:Lc/b/a/n/k/i/c$b;

    sget-object v5, Lc/b/a/n/k/i/c;->h:Lc/b/a/n/k/i/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lc/b/a/n/k/i/c;-><init>(Lc/b/a/n/e;Lc/b/a/n/e;Lc/b/a/n/i/m/c;Lc/b/a/n/k/i/c$b;Lc/b/a/n/k/i/c$a;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/n/e;Lc/b/a/n/e;Lc/b/a/n/i/m/c;Lc/b/a/n/k/i/c$b;Lc/b/a/n/k/i/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Lc/b/a/n/k/h/b;",
            ">;",
            "Lc/b/a/n/i/m/c;",
            "Lc/b/a/n/k/i/c$b;",
            "Lc/b/a/n/k/i/c$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/i/c;->a:Lc/b/a/n/e;

    .line 4
    iput-object p2, p0, Lc/b/a/n/k/i/c;->b:Lc/b/a/n/e;

    .line 5
    iput-object p3, p0, Lc/b/a/n/k/i/c;->c:Lc/b/a/n/i/m/c;

    .line 6
    iput-object p4, p0, Lc/b/a/n/k/i/c;->d:Lc/b/a/n/k/i/c$b;

    .line 7
    iput-object p5, p0, Lc/b/a/n/k/i/c;->e:Lc/b/a/n/k/i/c$a;

    return-void
.end method

.method private c(Lc/b/a/n/j/g;II[B)Lc/b/a/n/k/i/a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc/b/a/n/j/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lc/b/a/n/k/i/c;->f(Lc/b/a/n/j/g;II[B)Lc/b/a/n/k/i/a;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc/b/a/n/k/i/c;->d(Lc/b/a/n/j/g;II)Lc/b/a/n/k/i/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private d(Lc/b/a/n/j/g;II)Lc/b/a/n/k/i/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/c;->a:Lc/b/a/n/e;

    invoke-interface {v0, p1, p2, p3}, Lc/b/a/n/e;->a(Ljava/lang/Object;II)Lc/b/a/n/i/k;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance p3, Lc/b/a/n/k/i/a;

    invoke-direct {p3, p1, p2}, Lc/b/a/n/k/i/a;-><init>(Lc/b/a/n/i/k;Lc/b/a/n/i/k;)V

    move-object p2, p3

    :cond_0
    return-object p2
.end method

.method private e(Ljava/io/InputStream;II)Lc/b/a/n/k/i/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/c;->b:Lc/b/a/n/e;

    invoke-interface {v0, p1, p2, p3}, Lc/b/a/n/e;->a(Ljava/lang/Object;II)Lc/b/a/n/i/k;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lc/b/a/n/i/k;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/b/a/n/k/h/b;

    .line 3
    invoke-virtual {p3}, Lc/b/a/n/k/h/b;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    new-instance p3, Lc/b/a/n/k/i/a;

    invoke-direct {p3, p2, p1}, Lc/b/a/n/k/i/a;-><init>(Lc/b/a/n/i/k;Lc/b/a/n/i/k;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lc/b/a/n/k/e/c;

    invoke-virtual {p3}, Lc/b/a/n/k/h/b;->f()Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p0, Lc/b/a/n/k/i/c;->c:Lc/b/a/n/i/m/c;

    invoke-direct {p1, p3, v0}, Lc/b/a/n/k/e/c;-><init>(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)V

    .line 6
    new-instance p3, Lc/b/a/n/k/i/a;

    invoke-direct {p3, p1, p2}, Lc/b/a/n/k/i/a;-><init>(Lc/b/a/n/i/k;Lc/b/a/n/i/k;)V

    :goto_0
    move-object p2, p3

    :cond_1
    return-object p2
.end method

.method private f(Lc/b/a/n/j/g;II[B)Lc/b/a/n/k/i/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/c;->e:Lc/b/a/n/k/i/c$a;

    invoke-virtual {p1}, Lc/b/a/n/j/g;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lc/b/a/n/k/i/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p4

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 3
    iget-object v0, p0, Lc/b/a/n/k/i/c;->d:Lc/b/a/n/k/i/c$b;

    invoke-virtual {v0, p4}, Lc/b/a/n/k/i/c$b;->a(Ljava/io/InputStream;)Lc/b/a/n/k/e/l$a;

    move-result-object v0

    .line 4
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    .line 5
    sget-object v1, Lc/b/a/n/k/e/l$a;->b:Lc/b/a/n/k/e/l$a;

    if-ne v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p4, p2, p3}, Lc/b/a/n/k/i/c;->e(Ljava/io/InputStream;II)Lc/b/a/n/k/i/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lc/b/a/n/j/g;

    invoke-virtual {p1}, Lc/b/a/n/j/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p4, p1}, Lc/b/a/n/j/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 8
    invoke-direct {p0, v0, p2, p3}, Lc/b/a/n/k/i/c;->d(Lc/b/a/n/j/g;II)Lc/b/a/n/k/i/a;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/j/g;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/i/c;->b(Lc/b/a/n/j/g;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/b/a/n/j/g;II)Lc/b/a/n/i/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/g;",
            "II)",
            "Lc/b/a/n/i/k<",
            "Lc/b/a/n/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/a;->a()Lc/b/a/t/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/b/a/t/a;->b()[B

    move-result-object v1

    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lc/b/a/n/k/i/c;->c(Lc/b/a/n/j/g;II[B)Lc/b/a/n/k/i/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0, v1}, Lc/b/a/t/a;->c([B)Z

    if-eqz p1, :cond_0

    .line 5
    new-instance p2, Lc/b/a/n/k/i/b;

    invoke-direct {p2, p1}, Lc/b/a/n/k/i/b;-><init>(Lc/b/a/n/k/i/a;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {v0, v1}, Lc/b/a/t/a;->c([B)Z

    throw p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/b/a/n/k/i/c;->b:Lc/b/a/n/e;

    invoke-interface {v1}, Lc/b/a/n/e;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n/k/i/c;->a:Lc/b/a/n/e;

    invoke-interface {v1}, Lc/b/a/n/e;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/n/k/i/c;->f:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/n/k/i/c;->f:Ljava/lang/String;

    return-object v0
.end method
