.class public Lc/b/a/n/j/t/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/j/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/j/m<",
        "Lc/b/a/n/j/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/k<",
            "Lc/b/a/n/j/d;",
            "Lc/b/a/n/j/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/j/k;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lc/b/a/n/j/k;-><init>(I)V

    iput-object v0, p0, Lc/b/a/n/j/t/a$a;->a:Lc/b/a/n/j/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/n/j/c;)Lc/b/a/n/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/n/j/c;",
            ")",
            "Lc/b/a/n/j/l<",
            "Lc/b/a/n/j/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/n/j/t/a;

    iget-object p2, p0, Lc/b/a/n/j/t/a$a;->a:Lc/b/a/n/j/k;

    invoke-direct {p1, p2}, Lc/b/a/n/j/t/a;-><init>(Lc/b/a/n/j/k;)V

    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method
