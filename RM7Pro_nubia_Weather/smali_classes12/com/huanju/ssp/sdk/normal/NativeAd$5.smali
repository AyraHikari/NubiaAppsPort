.class Lcom/huanju/ssp/sdk/normal/NativeAd$5;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$5;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$900(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    .line 211
    return-void
.end method
