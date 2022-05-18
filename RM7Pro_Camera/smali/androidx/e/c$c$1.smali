.class Landroidx/e/c$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/e/c$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/c$c;


# direct methods
.method constructor <init>(Landroidx/e/c$c;)V
    .locals 0

    .line 882
    iput-object p1, p0, Landroidx/e/c$c$1;->a:Landroidx/e/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 884
    iget-object v0, p0, Landroidx/e/c$c$1;->a:Landroidx/e/c$c;

    iget-object v0, v0, Landroidx/e/c$c;->h:Landroidx/e/c;

    iget-object v0, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Landroidx/e/c$c$1;->a:Landroidx/e/c$c;

    iget-object v0, v0, Landroidx/e/c$c;->h:Landroidx/e/c;

    iget-object v0, v0, Landroidx/e/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    return-void
.end method
