.class Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$4;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$4;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$4;->this$0:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;->access$200(Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;)V

    .line 606
    return-void
.end method
