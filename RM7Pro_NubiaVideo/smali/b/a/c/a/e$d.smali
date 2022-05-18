.class Lb/a/c/a/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/e;


# direct methods
.method constructor <init>(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$d;->a:Lb/a/c/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/c/a/e$d;->a:Lb/a/c/a/e;

    iget-object v1, v0, Lb/a/c/a/c;->v:Lb/a/a/c/h;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lb/a/c/a/c;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    long-to-int p1, p1

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iget-object p1, p0, Lb/a/c/a/e$d;->a:Lb/a/c/a/e;

    iget-object p1, p1, Lb/a/c/a/c;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
