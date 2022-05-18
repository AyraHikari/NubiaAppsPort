.class Lc/c/a/f/a$a;
.super Lc/c/a/c/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/f/a;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/c/b<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc/c/a/f/a;I)V
    .locals 0

    invoke-direct {p0, p2}, Lc/c/a/c/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc/c/a/f/a$a;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method
