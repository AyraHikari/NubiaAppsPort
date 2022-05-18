.class public Lc/d/a/b/k/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/d/a/b/j/e;

.field public final b:Lc/d/a/b/k/a$a;


# direct methods
.method protected constructor <init>(Lc/d/a/b/j/e;Lc/d/a/b/k/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/k/a$b;->a:Lc/d/a/b/j/e;

    iput-object p2, p0, Lc/d/a/b/k/a$b;->b:Lc/d/a/b/k/a$a;

    return-void
.end method
