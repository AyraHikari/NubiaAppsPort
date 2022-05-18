.class public Lc/c/a/g/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/g/b;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/g/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/g/b;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lc/c/a/g/b;->d:Lc/c/a/g/b;

    :cond_0
    iput-object p1, p0, Lc/c/a/g/e;->a:Lc/c/a/g/b;

    iput-object p2, p0, Lc/c/a/g/e;->b:Ljava/lang/Object;

    return-void
.end method
