.class public Lc/b/a/n/i/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lc/b/a/n/i/d;

.field private final b:Lc/b/a/r/e;


# direct methods
.method public constructor <init>(Lc/b/a/r/e;Lc/b/a/n/i/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/i/c$c;->b:Lc/b/a/r/e;

    .line 3
    iput-object p2, p0, Lc/b/a/n/i/c$c;->a:Lc/b/a/n/i/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/c$c;->a:Lc/b/a/n/i/d;

    iget-object v1, p0, Lc/b/a/n/i/c$c;->b:Lc/b/a/r/e;

    invoke-virtual {v0, v1}, Lc/b/a/n/i/d;->l(Lc/b/a/r/e;)V

    return-void
.end method
