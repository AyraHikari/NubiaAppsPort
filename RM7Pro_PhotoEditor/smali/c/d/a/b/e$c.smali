.class Lc/d/a/b/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lc/d/a/b/m/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/m/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e$c;->a:Lc/d/a/b/m/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lc/d/a/b/e$a;->a:[I

    invoke-static {p1}, Lc/d/a/b/m/b$a;->t(Ljava/lang/String;)Lc/d/a/b/m/b$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/b/e$c;->a:Lc/d/a/b/m/b;

    invoke-interface {v0, p1, p2}, Lc/d/a/b/m/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
