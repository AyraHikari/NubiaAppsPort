.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Search"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;->keyword:Ljava/lang/String;

    .line 697
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;->keyword:Ljava/lang/String;

    .line 698
    return-void
.end method

.method static synthetic access$5000(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Search;->keyword:Ljava/lang/String;

    return-object v0
.end method
