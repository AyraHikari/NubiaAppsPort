.class public Lc/b/a/n/k/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/g/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/q/b<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lc/b/a/n/k/g/d$b;


# instance fields
.field private final a:Lc/b/a/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/n/k/g/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/b/a/n/k/g/d$b;-><init>(Lc/b/a/n/k/g/d$a;)V

    sput-object v0, Lc/b/a/n/k/g/d;->c:Lc/b/a/n/k/g/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/k/g/a;

    invoke-direct {v0}, Lc/b/a/n/k/g/a;-><init>()V

    iput-object v0, p0, Lc/b/a/n/k/g/d;->a:Lc/b/a/n/e;

    .line 3
    new-instance v0, Lc/b/a/n/j/o;

    invoke-direct {v0}, Lc/b/a/n/j/o;-><init>()V

    iput-object v0, p0, Lc/b/a/n/k/g/d;->b:Lc/b/a/n/b;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/g/d;->a:Lc/b/a/n/e;

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/n/k/b;->c()Lc/b/a/n/k/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/g/d;->b:Lc/b/a/n/b;

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/n/k/g/d;->c:Lc/b/a/n/k/g/d$b;

    return-object v0
.end method
