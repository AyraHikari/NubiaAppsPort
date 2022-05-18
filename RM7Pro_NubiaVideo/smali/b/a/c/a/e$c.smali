.class Lb/a/c/a/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lb/a/c/a/e;


# direct methods
.method constructor <init>(Lb/a/c/a/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$c;->b:Lb/a/c/a/e;

    iput-boolean p2, p0, Lb/a/c/a/e$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-static {}, Lb/a/c/a/e;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lb/a/c/a/e$c;->a:Z

    .line 3
    iget-object v1, p0, Lb/a/c/a/e$c;->b:Lb/a/c/a/e;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/a/c/a/c;->i:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lb/a/c/a/e;->c()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lb/a/c/a/e;->i()V

    .line 6
    :goto_0
    iget-object v0, p0, Lb/a/c/a/e$c;->b:Lb/a/c/a/e;

    iget-object v1, v0, Lb/a/c/a/c;->a:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, v0, Lb/a/c/a/c;->p:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x0

    new-instance v3, Lb/a/c/a/e$c$a;

    invoke-direct {v3, p0}, Lb/a/c/a/e$c$a;-><init>(Lb/a/c/a/e$c;)V

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/a/c/a/e$c;->b:Lb/a/c/a/e;

    iget-object v1, v1, Lb/a/c/a/c;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void
.end method
