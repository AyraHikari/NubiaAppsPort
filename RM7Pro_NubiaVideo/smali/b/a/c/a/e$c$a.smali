.class Lb/a/c/a/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/e$c;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/e$c;


# direct methods
.method constructor <init>(Lb/a/c/a/e$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$c$a;->a:Lb/a/c/a/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/a/c/a/e$c$a;->a:Lb/a/c/a/e$c;

    iget-object p1, p1, Lb/a/c/a/e$c;->b:Lb/a/c/a/e;

    iput-object p2, p1, Lb/a/c/a/c;->s:Landroid/net/Uri;

    .line 2
    iget-object p1, p1, Lb/a/c/a/c;->o:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
