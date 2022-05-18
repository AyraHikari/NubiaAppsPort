.class Lb/a/a/e/b$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e/b;


# direct methods
.method private constructor <init>(Lb/a/a/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/b$b;->a:Lb/a/a/e/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/a/e/b;Lb/a/a/e/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/e/b$b;-><init>(Lb/a/a/e/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/e/b$b;->a:Lb/a/a/e/b;

    invoke-static {v0}, Lb/a/a/e/b;->l(Lb/a/a/e/b;)Lb/a/a/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/b$b;->a:Lb/a/a/e/b;

    invoke-static {v0}, Lb/a/a/e/b;->l(Lb/a/a/e/b;)Lb/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b/d;->A()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/e/b$b;->a:Lb/a/a/e/b;

    invoke-static {v0}, Lb/a/a/e/b;->m(Lb/a/a/e/b;)Lb/a/a/d/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/a/a/e/b$b;->a:Lb/a/a/e/b;

    invoke-static {v0}, Lb/a/a/e/b;->m(Lb/a/a/e/b;)Lb/a/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/d/a;->O()V

    .line 5
    iget-object v0, p0, Lb/a/a/e/b$b;->a:Lb/a/a/e/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/a/e/b;->n(Lb/a/a/e/b;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
