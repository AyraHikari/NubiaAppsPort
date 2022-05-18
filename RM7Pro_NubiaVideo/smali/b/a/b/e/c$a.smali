.class Lb/a/b/e/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/e/c;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/e/c;


# direct methods
.method constructor <init>(Lb/a/b/e/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/e/c$a;->a:Lb/a/b/e/c;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/e/c$a;->a:Lb/a/b/e/c;

    invoke-static {v0}, Lb/a/b/e/c;->a(Lb/a/b/e/c;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
