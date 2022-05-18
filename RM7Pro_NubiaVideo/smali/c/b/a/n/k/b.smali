.class public Lc/b/a/n/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/n/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/b/a/n/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/k/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/b;

    invoke-direct {v0}, Lc/b/a/n/k/b;-><init>()V

    sput-object v0, Lc/b/a/n/k/b;->a:Lc/b/a/n/k/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lc/b/a/n/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/n/k/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/n/k/b;->a:Lc/b/a/n/k/b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/i/k;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/k/b;->b(Lc/b/a/n/i/k;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public b(Lc/b/a/n/i/k;Ljava/io/OutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
