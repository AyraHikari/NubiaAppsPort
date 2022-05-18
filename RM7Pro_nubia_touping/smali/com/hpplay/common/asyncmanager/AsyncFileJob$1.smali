.class Lcom/hpplay/common/asyncmanager/AsyncFileJob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/asyncmanager/AsyncFileJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncFileJob;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncFileJob;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncFileJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownLoad(IJJI)V
    .locals 4

    .prologue
    .line 23
    if-nez p6, :cond_0

    .line 24
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncFileJob;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->access$000(Lcom/hpplay/common/asyncmanager/AsyncFileJob;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method
