.class public abstract Lc/c/a/f/g/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lc/c/a/f/g/d;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lc/c/a/f/g/d;->a:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public abstract b(Lc/c/a/e/c;Ljava/lang/String;)V
.end method

.method public abstract c(JJZ)V
.end method

.method public abstract d()V
.end method

.method public abstract e(Lc/c/a/f/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/f/d<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
