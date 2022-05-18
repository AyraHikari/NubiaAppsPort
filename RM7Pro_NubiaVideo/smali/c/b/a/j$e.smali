.class Lc/b/a/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Lc/b/a/o/m;


# direct methods
.method public constructor <init>(Lc/b/a/o/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/j$e;->a:Lc/b/a/o/m;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lc/b/a/j$e;->a:Lc/b/a/o/m;

    invoke-virtual {p1}, Lc/b/a/o/m;->d()V

    :cond_0
    return-void
.end method
