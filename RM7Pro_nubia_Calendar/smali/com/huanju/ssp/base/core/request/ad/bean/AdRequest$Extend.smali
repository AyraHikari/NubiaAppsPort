.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Extend"
.end annotation


# instance fields
.field private extend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private strExtend:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p2, "strExtend"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->extend:Ljava/util/Map;

    .line 677
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->strExtend:Ljava/lang/String;

    .line 678
    return-void
.end method

.method static synthetic access$5200(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->extend:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$Extend;->strExtend:Ljava/lang/String;

    return-object v0
.end method
