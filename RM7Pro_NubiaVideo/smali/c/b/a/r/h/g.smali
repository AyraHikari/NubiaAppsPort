.class public abstract Lc/b/a/r/h/g;
.super Lc/b/a/r/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/r/h/a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, v0}, Lc/b/a/r/h/g;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/b/a/r/h/a;-><init>()V

    .line 3
    iput p1, p0, Lc/b/a/r/h/g;->b:I

    .line 4
    iput p2, p0, Lc/b/a/r/h/g;->c:I

    return-void
.end method


# virtual methods
.method public final j(Lc/b/a/r/h/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/r/h/g;->b:I

    iget v1, p0, Lc/b/a/r/h/g;->c:I

    invoke-static {v0, v1}, Lc/b/a/t/h;->k(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lc/b/a/r/h/g;->b:I

    iget v1, p0, Lc/b/a/r/h/g;->c:I

    invoke-interface {p1, v0, v1}, Lc/b/a/r/h/h;->h(II)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/r/h/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/r/h/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", either provide dimensions in the constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or call override()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
