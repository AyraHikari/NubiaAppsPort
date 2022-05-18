.class Lcom/a/a/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/a/d<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile transient b:Z

.field transient c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/a/a/a/e$a;->a:Lcom/a/a/a/d;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcom/a/a/a/e$a;->b:Z

    if-nez v0, :cond_1

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/a/e$a;->b:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/a/a/a/e$a;->a:Lcom/a/a/a/d;

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/a/a/a/e$a;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Lcom/a/a/a/e$a;->b:Z

    .line 123
    monitor-exit p0

    return-object v0

    .line 125
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/e$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/e$a;->a:Lcom/a/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
