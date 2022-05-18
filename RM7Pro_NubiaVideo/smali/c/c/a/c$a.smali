.class Lc/c/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/c;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/c;


# direct methods
.method constructor <init>(Lc/c/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/c$a;->a:Lc/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/c$a;->a:Lc/c/a/c;

    invoke-static {v0}, Lc/c/a/c;->a(Lc/c/a/c;)Lc/c/a/f/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/c$a;->a:Lc/c/a/c;

    invoke-static {v0}, Lc/c/a/c;->a(Lc/c/a/c;)Lc/c/a/f/a/d$b;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/c$a;->a:Lc/c/a/c;

    invoke-static {v1}, Lc/c/a/c;->c(Lc/c/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/a/f/a/d$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
