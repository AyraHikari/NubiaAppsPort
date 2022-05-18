.class public Lc/b/a/n/k/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/g/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lc/b/a/n/k/g/c$a;


# instance fields
.field private a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/k/g/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/g/c$a;

    invoke-direct {v0}, Lc/b/a/n/k/g/c$a;-><init>()V

    sput-object v0, Lc/b/a/n/k/g/c;->c:Lc/b/a/n/k/g/c$a;

    return-void
.end method

.method public constructor <init>(Lc/b/a/n/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/n/k/g/c;->c:Lc/b/a/n/k/g/c$a;

    invoke-direct {p0, p1, v0}, Lc/b/a/n/k/g/c;-><init>(Lc/b/a/n/e;Lc/b/a/n/k/g/c$a;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/n/e;Lc/b/a/n/k/g/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lc/b/a/n/k/g/c$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/g/c;->a:Lc/b/a/n/e;

    .line 4
    iput-object p2, p0, Lc/b/a/n/k/g/c;->b:Lc/b/a/n/k/g/c$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/g/c;->b(Ljava/io/File;II)Lc/b/a/n/i/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;II)Lc/b/a/n/i/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lc/b/a/n/i/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lc/b/a/n/k/g/c;->b:Lc/b/a/n/k/g/c$a;

    invoke-virtual {v1, p1}, Lc/b/a/n/k/g/c$a;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    iget-object p1, p0, Lc/b/a/n/k/g/c;->a:Lc/b/a/n/e;

    invoke-interface {p1, v0, p2, p3}, Lc/b/a/n/e;->a(Ljava/lang/Object;II)Lc/b/a/n/i/k;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4
    :catch_1
    :cond_1
    throw p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
