.class Lc/b/a/n/k/h/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/h/c<",
        "Lc/b/a/l/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/l/a;


# direct methods
.method public constructor <init>(Lc/b/a/l/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/k/h/g$a;->a:Lc/b/a/l/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Lc/b/a/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/n/k/h/g$a;->c(Lc/b/a/i;)Lc/b/a/l/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc/b/a/i;)Lc/b/a/l/a;
    .locals 0

    .line 1
    iget-object p1, p0, Lc/b/a/n/k/h/g$a;->a:Lc/b/a/l/a;

    return-object p1
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/g$a;->a:Lc/b/a/l/a;

    invoke-virtual {v0}, Lc/b/a/l/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
