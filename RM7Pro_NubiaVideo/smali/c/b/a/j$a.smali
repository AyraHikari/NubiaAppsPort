.class Lc/b/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/j;-><init>(Landroid/content/Context;Lc/b/a/o/g;Lc/b/a/o/l;Lc/b/a/o/m;Lc/b/a/o/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/o/g;

.field final synthetic b:Lc/b/a/j;


# direct methods
.method constructor <init>(Lc/b/a/j;Lc/b/a/o/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/j$a;->b:Lc/b/a/j;

    iput-object p2, p0, Lc/b/a/j$a;->a:Lc/b/a/o/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/j$a;->a:Lc/b/a/o/g;

    iget-object v1, p0, Lc/b/a/j$a;->b:Lc/b/a/j;

    invoke-interface {v0, v1}, Lc/b/a/o/g;->a(Lc/b/a/o/h;)V

    return-void
.end method
