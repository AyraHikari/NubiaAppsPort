.class public Lc/b/a/d;
.super Lc/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/c<",
        "TModelType;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final D:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Lc/b/a/j$d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Landroid/content/Context;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;Lc/b/a/j$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/b/a/n/j/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lc/b/a/g;",
            "Lc/b/a/o/m;",
            "Lc/b/a/o/g;",
            "Lc/b/a/j$d;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    .line 1
    const-class v3, Lc/b/a/n/k/i/a;

    const-class v4, Lc/b/a/n/k/f/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lc/b/a/d;->K(Lc/b/a/g;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/k/j/c;)Lc/b/a/q/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lc/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/b/a/q/f;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;)V

    move-object v0, p2

    .line 2
    iput-object v0, v7, Lc/b/a/d;->D:Lc/b/a/n/j/l;

    move-object v0, p3

    .line 3
    iput-object v0, v7, Lc/b/a/d;->E:Lc/b/a/n/j/l;

    move-object/from16 v0, p8

    .line 4
    iput-object v0, v7, Lc/b/a/d;->F:Lc/b/a/j$d;

    return-void
.end method

.method private static K(Lc/b/a/g;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/k/j/c;)Lc/b/a/q/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/g;",
            "Lc/b/a/n/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/b/a/n/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;)",
            "Lc/b/a/q/e<",
            "TA;",
            "Lc/b/a/n/j/g;",
            "TZ;TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p5, :cond_1

    .line 1
    invoke-virtual {p0, p3, p4}, Lc/b/a/g;->f(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/k/j/c;

    move-result-object p5

    .line 2
    :cond_1
    const-class p4, Lc/b/a/n/j/g;

    invoke-virtual {p0, p4, p3}, Lc/b/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/q/b;

    move-result-object p0

    .line 3
    new-instance p3, Lc/b/a/n/j/f;

    invoke-direct {p3, p1, p2}, Lc/b/a/n/j/f;-><init>(Lc/b/a/n/j/l;Lc/b/a/n/j/l;)V

    .line 4
    new-instance p1, Lc/b/a/q/e;

    invoke-direct {p1, p3, p5, p0}, Lc/b/a/q/e;-><init>(Lc/b/a/n/j/l;Lc/b/a/n/k/j/c;Lc/b/a/q/b;)V

    return-object p1
.end method


# virtual methods
.method public J()Lc/b/a/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/b<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/d;->F:Lc/b/a/j$d;

    new-instance v1, Lc/b/a/b;

    iget-object v2, p0, Lc/b/a/d;->D:Lc/b/a/n/j/l;

    iget-object v3, p0, Lc/b/a/d;->E:Lc/b/a/n/j/l;

    invoke-direct {v1, p0, v2, v3, v0}, Lc/b/a/b;-><init>(Lc/b/a/e;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Lc/b/a/j$d;)V

    invoke-virtual {v0, v1}, Lc/b/a/j$d;->a(Lc/b/a/e;)Lc/b/a/e;

    check-cast v1, Lc/b/a/b;

    return-object v1
.end method
