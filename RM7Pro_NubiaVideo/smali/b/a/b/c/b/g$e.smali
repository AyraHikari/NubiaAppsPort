.class Lb/a/b/c/b/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/c/b/g;


# direct methods
.method private constructor <init>(Lb/a/b/c/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/g$e;->a:Lb/a/b/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/c/b/g;Lb/a/b/c/b/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/b/c/b/g$e;-><init>(Lb/a/b/c/b/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/g$e;->a:Lb/a/b/c/b/g;

    invoke-static {v0}, Lb/a/b/c/b/g;->q(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/g$e;->a:Lb/a/b/c/b/g;

    invoke-static {v0}, Lb/a/b/c/b/g;->q(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/c/b/g$f;->a()V

    :cond_0
    return-void
.end method
