.class Lc/e/c/h;
.super Lc/e/c/m;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc/e/c/g;

    invoke-direct {v0}, Lc/e/c/g;-><init>()V

    invoke-direct {p0, p1, v0}, Lc/e/c/m;-><init>(Ljava/lang/String;Lc/e/c/f;)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/e/c/m;->i(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "error"

    return-object p1
.end method
