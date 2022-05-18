.class public Lcom/hpplay/a/g;
.super Lcom/hpplay/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hpplay/a/b;II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/hpplay/a/c;-><init>(Lcom/hpplay/a/b;)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/hpplay/a/g;->a(II)V

    .line 28
    invoke-virtual {p0}, Lcom/hpplay/a/g;->d()V

    .line 29
    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/hpplay/a/g;->c()V

    .line 33
    return-void
.end method
