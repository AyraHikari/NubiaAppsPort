.class Lcom/huanju/ssp/sdk/normal/InsertAd$2;
.super Ljava/lang/Object;
.source "InsertAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/InsertAd;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/InsertAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/InsertAd;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/InsertAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/InsertAd;->access$100(Lcom/huanju/ssp/sdk/normal/InsertAd;)V

    .line 99
    return-void
.end method
