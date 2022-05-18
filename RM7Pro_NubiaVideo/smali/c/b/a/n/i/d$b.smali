.class Lc/b/a/n/i/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/n/i/k;Z)Lc/b/a/n/i/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/n/i/k<",
            "TR;>;Z)",
            "Lc/b/a/n/i/h<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/n/i/h;

    invoke-direct {v0, p1, p2}, Lc/b/a/n/i/h;-><init>(Lc/b/a/n/i/k;Z)V

    return-object v0
.end method
