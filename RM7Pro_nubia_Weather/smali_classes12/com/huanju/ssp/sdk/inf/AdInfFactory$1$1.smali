.class Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;
.super Ljava/lang/Object;
.source "AdInfFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->upgradeAvailable(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;->this$1:Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;->this$1:Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->access$100(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)V

    .line 173
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;->this$1:Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->access$200(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;->this$1:Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1;->this$0:Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->access$200(Lcom/huanju/ssp/sdk/inf/AdInfFactory;)Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/inf/AdInfFactory$1$1;->val$version:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/sdk/inf/AdInfFactory$AdInterfaceUpdateListener;->onUpdated(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method
