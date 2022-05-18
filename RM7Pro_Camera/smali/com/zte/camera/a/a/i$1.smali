.class Lcom/zte/camera/a/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/a/a/i;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/zte/camera/a/a/i;


# direct methods
.method constructor <init>(Lcom/zte/camera/a/a/i;IJ)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/zte/camera/a/a/i$1;->c:Lcom/zte/camera/a/a/i;

    iput p2, p0, Lcom/zte/camera/a/a/i$1;->a:I

    iput-wide p3, p0, Lcom/zte/camera/a/a/i$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i$1;->c:Lcom/zte/camera/a/a/i;

    invoke-static {v0}, Lcom/zte/camera/a/a/i;->a(Lcom/zte/camera/a/a/i;)Lcom/zte/camera/ui/b/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/zte/camera/a/a/i$1;->c:Lcom/zte/camera/a/a/i;

    invoke-static {v0}, Lcom/zte/camera/a/a/i;->a(Lcom/zte/camera/a/a/i;)Lcom/zte/camera/ui/b/b/a;

    move-result-object v0

    iget v1, p0, Lcom/zte/camera/a/a/i$1;->a:I

    iget-wide v2, p0, Lcom/zte/camera/a/a/i$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/camera/ui/b/b/a;->a(IJ)V

    .line 171
    invoke-static {}, Lcom/zte/camera/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameAvailable.timeStap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/zte/camera/a/a/i$1;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {}, Lcom/zte/camera/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFrameAvailable draw null"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i$1;->c:Lcom/zte/camera/a/a/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/camera/a/a/i;->a(Lcom/zte/camera/a/a/i;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    invoke-static {}, Lcom/zte/camera/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameAvailable draw failed.timeStap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/zte/camera/a/a/i$1;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
