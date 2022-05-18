.class Lb/a/b/c/b/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lb/a/b/c/b/g$h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field final synthetic b:Lb/a/b/c/b/g;


# direct methods
.method public constructor <init>(Lb/a/b/c/b/g;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lb/a/b/c/b/g$c;->a:J

    return-void
.end method


# virtual methods
.method public a()Lb/a/b/c/b/g$h;
    .locals 9

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v0}, Lb/a/b/c/b/g;->n(Lb/a/b/c/b/g;)J

    move-result-wide v0

    iget-wide v2, p0, Lb/a/b/c/b/g$c;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lb/a/b/c/b/g$h;

    invoke-direct {v0, v1}, Lb/a/b/c/b/g$h;-><init>(Lb/a/b/c/b/g$a;)V

    .line 3
    iget-object v4, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v4}, Lb/a/b/c/b/g;->r(Lb/a/b/c/b/g;)J

    move-result-wide v4

    iput-wide v4, v0, Lb/a/b/c/b/g$h;->a:J

    .line 4
    iget-object v4, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v4}, Lb/a/b/c/b/g;->t(Lb/a/b/c/b/g;)I

    move-result v4

    iput v4, v0, Lb/a/b/c/b/g$h;->d:I

    .line 5
    iget-object v4, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v4}, Lb/a/b/c/b/g;->v(Lb/a/b/c/b/g;)[J

    move-result-object v4

    .line 6
    iget-object v5, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v5}, Lb/a/b/c/b/g;->w(Lb/a/b/c/b/g;)I

    move-result v5

    iget-object v6, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v6}, Lb/a/b/c/b/g;->b(Lb/a/b/c/b/g;)I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    .line 7
    rem-int/lit16 v7, v5, 0x1f4

    .line 8
    aget-wide v7, v4, v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_1

    .line 9
    iput v5, v0, Lb/a/b/c/b/g$h;->b:I

    const/16 v1, 0x40

    sub-int/2addr v6, v5

    .line 10
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lb/a/b/c/b/g$h;->c:I

    return-object v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, p0, Lb/a/b/c/b/g$c;->b:Lb/a/b/c/b/g;

    invoke-static {v2}, Lb/a/b/c/b/g;->r(Lb/a/b/c/b/g;)J

    move-result-wide v2

    iget-wide v4, p0, Lb/a/b/c/b/g$c;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/b/g$c;->a()Lb/a/b/c/b/g$h;

    move-result-object v0

    return-object v0
.end method
