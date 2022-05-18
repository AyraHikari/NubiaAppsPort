.class Lc/b/a/c/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lc/b/a/c/h;

.field b:Z


# direct methods
.method constructor <init>(Lc/b/a/c/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/a/c/f$a;->a:Lc/b/a/c/h;

    iput-boolean p2, p0, Lc/b/a/c/f$a;->b:Z

    return-void
.end method
